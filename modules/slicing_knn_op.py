
import tensorflow as tf
import numpy as np
from tensorflow.python.framework import ops
import time

'''
Wrap the module
'''

_nknn_op = tf.load_op_library('slicing_knn.so')

def check_tuple(in_tuple, tuple_name: str, tuple_type: type):
    if in_tuple is None:
        raise ValueError("<", tuple_name, "> argument is not specified!")
    if len(in_tuple)!=2:
        raise ValueError("<", tuple_name, "> argument has to be tuple of size 2!")
    if (type(in_tuple[0]) is not tuple_type) or (type(in_tuple[1]) is not tuple_type):
        raise ValueError("<", tuple_name, "> argument has to be of type Tuple[",tuple_type,",",tuple_type,"]!")
    if (in_tuple[0]<0) or (in_tuple[1]<0):
        raise ValueError("<", tuple_name, "> tuple has to contain only positive values!")



def SlicingKnn(K : int, coords, row_splits, features_to_bin_on=None, n_bins=None, bin_width=None):
    '''
    Perform kNN search with slicing method

    @type K: int
    @param K: number of neighbours to search for

    @type coords: tf.Tensor
    @param coords: coordinate tensor

    @type row_splits: tf.Tensor
    @param row_splits: row splits tensor

    @type features_to_bin_on: Tuple[int, int]
    @param features_to_bin_on: indices of features to bin on

    @type n_bins: Tuple[int, int]
    @param n_bins: number of bins to split phase space for kNN search

    @type bin_width: Tuple[float, float]
    @param bin_width: width of phase-space bins
    '''

    #  start_time_int = time.time()

    # type and values check for input parameters
    check_tuple(features_to_bin_on,"features_to_bin_on",int)
    n_features = coords.shape[1]
    if (features_to_bin_on[0]>=n_features) or (features_to_bin_on[1]>=n_features) or (features_to_bin_on[0]==features_to_bin_on[1]):
        raise ValueError("Value error for <features_to_bin_on>!")
    if ((n_bins is None) and (bin_width is None)) or ((n_bins is not None) and (bin_width is not None)):
        raise ValueError("Specify either <n_bins> OR <bin_width> argument but not both!")
    if n_bins is None:
        check_tuple(bin_width,"bin_width",float)
    else:
        check_tuple(n_bins,"n_bins",int)

    # select only 2 dimensions that will be used for binning
    r_coords = tf.gather(coords,features_to_bin_on,axis=1)

    # find min/max of selected coordinates
    r_coords = tf.transpose(r_coords) # since tf.map_fn apply fn to each element unstacked on axis 0

    r_max = tf.map_fn(tf.math.reduce_max, r_coords, fn_output_signature=tf.float32)
    r_min = tf.map_fn(tf.math.reduce_min, r_coords, fn_output_signature=tf.float32)

    # add safety margin to the phase-space for binning
    r_diff = tf.add(r_max,-1*r_min)
    r_max = tf.add(r_max,0.00001*r_diff)
    r_min = tf.add(r_min,-0.00001*r_diff)
    r_diff = tf.add(r_max,-1*r_min)

    # calculate n_bins if bin_width is given
    if bin_width is not None:
        _n_bins = tf.math.maximum(tf.constant([3,3], dtype=tf.int32),
                tf.math.minimum(
                    tf.cast(tf.math.ceil(tf.multiply(r_diff,1.0/tf.constant(bin_width))),tf.int32), tf.constant([50,50], dtype=tf.int32))) # limit the number of bins to min 3x3 and max 50x50
    else:
        _n_bins = tf.constant(n_bins, dtype=tf.int32) # cast tuple to Tensor to match required argument type

    return _nknn_op.SlicingKnn(n_neighbours=K, coords=coords, row_splits=row_splits, n_bins=_n_bins, features_to_bin_on=features_to_bin_on, coord_min=r_min, coord_max=r_max)


_sknn_grad_op = tf.load_op_library('select_knn_grad.so')

@ops.RegisterGradient("SlicingKnn")
def _SlicingKnnGrad(op, gradidx, dstgrad):

    coords = op.inputs[0]
    indices = op.outputs[0]
    distances = op.outputs[1]

    coord_grad = _sknn_grad_op.SelectKnnGrad(grad_distances=dstgrad, indices=indices, distances=distances, coordinates=coords)

    return coord_grad, None, None, None, None #no grad for row_splits, features_to_bin_on, n_bins and and bin_width
