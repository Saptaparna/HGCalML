��
�
�

B
AssignVariableOp
resource
value"dtype"
dtypetype�
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8ĺ
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
$pre_selection_first_coordses1/scalesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$pre_selection_first_coordses1/scales
�
8pre_selection_first_coordses1/scales/Read/ReadVariableOpReadVariableOp$pre_selection_first_coordses1/scales*
_output_shapes

:*
dtype0
�
'pre_selection_first_coordsdense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *8
shared_name)'pre_selection_first_coordsdense1/kernel
�
;pre_selection_first_coordsdense1/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_first_coordsdense1/kernel*
_output_shapes

:
 *
dtype0
�
%pre_selection_first_coordsdense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%pre_selection_first_coordsdense1/bias
�
9pre_selection_first_coordsdense1/bias/Read/ReadVariableOpReadVariableOp%pre_selection_first_coordsdense1/bias*
_output_shapes
: *
dtype0
�
(pre_selection_first_coordsdense1b/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*9
shared_name*(pre_selection_first_coordsdense1b/kernel
�
<pre_selection_first_coordsdense1b/kernel/Read/ReadVariableOpReadVariableOp(pre_selection_first_coordsdense1b/kernel*
_output_shapes
:	�@*
dtype0
�
&pre_selection_first_coordsdense1b/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&pre_selection_first_coordsdense1b/bias
�
:pre_selection_first_coordsdense1b/bias/Read/ReadVariableOpReadVariableOp&pre_selection_first_coordsdense1b/bias*
_output_shapes
:@*
dtype0
�
(pre_selection_first_coordsdense1c/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *9
shared_name*(pre_selection_first_coordsdense1c/kernel
�
<pre_selection_first_coordsdense1c/kernel/Read/ReadVariableOpReadVariableOp(pre_selection_first_coordsdense1c/kernel*
_output_shapes

:@ *
dtype0
�
&pre_selection_first_coordsdense1c/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&pre_selection_first_coordsdense1c/bias
�
:pre_selection_first_coordsdense1c/bias/Read/ReadVariableOpReadVariableOp&pre_selection_first_coordsdense1c/bias*
_output_shapes
: *
dtype0
�
'pre_selection_first_coordsdense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'pre_selection_first_coordsdense2/kernel
�
;pre_selection_first_coordsdense2/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_first_coordsdense2/kernel*
_output_shapes

: *
dtype0
�
'pre_selection_first_coordsdense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'pre_selection_first_coordsdense3/kernel
�
;pre_selection_first_coordsdense3/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_first_coordsdense3/kernel*
_output_shapes

: *
dtype0
�
$pre_selection_first_coordses2/scalesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$pre_selection_first_coordses2/scales
�
8pre_selection_first_coordses2/scales/Read/ReadVariableOpReadVariableOp$pre_selection_first_coordses2/scales*
_output_shapes

:*
dtype0
�
'pre_selection_reduce_indices_ed1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'pre_selection_reduce_indices_ed1/kernel
�
;pre_selection_reduce_indices_ed1/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_reduce_indices_ed1/kernel*
_output_shapes

: *
dtype0
�
%pre_selection_reduce_indices_ed1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%pre_selection_reduce_indices_ed1/bias
�
9pre_selection_reduce_indices_ed1/bias/Read/ReadVariableOpReadVariableOp%pre_selection_reduce_indices_ed1/bias*
_output_shapes
:*
dtype0
�
'pre_selection_reduce_indices_ed2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'pre_selection_reduce_indices_ed2/kernel
�
;pre_selection_reduce_indices_ed2/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_reduce_indices_ed2/kernel*
_output_shapes

:*
dtype0
�
%pre_selection_reduce_indices_ed2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%pre_selection_reduce_indices_ed2/bias
�
9pre_selection_reduce_indices_ed2/bias/Read/ReadVariableOpReadVariableOp%pre_selection_reduce_indices_ed2/bias*
_output_shapes
:*
dtype0
�
'pre_selection_reduce_indices_ed3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'pre_selection_reduce_indices_ed3/kernel
�
;pre_selection_reduce_indices_ed3/kernel/Read/ReadVariableOpReadVariableOp'pre_selection_reduce_indices_ed3/kernel*
_output_shapes

:*
dtype0
�
%pre_selection_reduce_indices_ed3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%pre_selection_reduce_indices_ed3/bias
�
9pre_selection_reduce_indices_ed3/bias/Read/ReadVariableOpReadVariableOp%pre_selection_reduce_indices_ed3/bias*
_output_shapes
:*
dtype0
�
neighbour_groups/1/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameneighbour_groups/1/Variable
�
/neighbour_groups/1/Variable/Read/ReadVariableOpReadVariableOpneighbour_groups/1/Variable*
_output_shapes
: *
dtype0
�
"pre_selection_noisescore_d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:c*3
shared_name$"pre_selection_noisescore_d1/kernel
�
6pre_selection_noisescore_d1/kernel/Read/ReadVariableOpReadVariableOp"pre_selection_noisescore_d1/kernel*
_output_shapes

:c*
dtype0
�
 pre_selection_noisescore_d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" pre_selection_noisescore_d1/bias
�
4pre_selection_noisescore_d1/bias/Read/ReadVariableOpReadVariableOp pre_selection_noisescore_d1/bias*
_output_shapes
:*
dtype0
�
Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *Y
shared_nameJHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel
�
\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/Read/ReadVariableOpReadVariableOpHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel*
_output_shapes

:  *
dtype0
�
Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *W
shared_nameHFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias
�
Zpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/Read/ReadVariableOpReadVariableOpFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias*
_output_shapes
: *
dtype0
�
Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *Y
shared_nameJHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel
�
\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/Read/ReadVariableOpReadVariableOpHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel*
_output_shapes

:@ *
dtype0
�
Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *W
shared_nameHFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias
�
Zpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/Read/ReadVariableOpReadVariableOpFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias*
_output_shapes
: *
dtype0
�
Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*Y
shared_nameJHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel
�
\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/Read/ReadVariableOpReadVariableOpHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel*
_output_shapes

:@*
dtype0
�
Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias
�
Zpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/Read/ReadVariableOpReadVariableOpFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias*
_output_shapes
:*
dtype0
�
Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*Y
shared_nameJHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel
�
\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/Read/ReadVariableOpReadVariableOpHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel*
_output_shapes

:*
dtype0
�
Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias
�
Zpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/Read/ReadVariableOpReadVariableOpFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias*
_output_shapes
:*
dtype0
�
+Adam/pre_selection_first_coordses1/scales/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/pre_selection_first_coordses1/scales/m
�
?Adam/pre_selection_first_coordses1/scales/m/Read/ReadVariableOpReadVariableOp+Adam/pre_selection_first_coordses1/scales/m*
_output_shapes

:*
dtype0
�
.Adam/pre_selection_first_coordsdense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *?
shared_name0.Adam/pre_selection_first_coordsdense1/kernel/m
�
BAdam/pre_selection_first_coordsdense1/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense1/kernel/m*
_output_shapes

:
 *
dtype0
�
,Adam/pre_selection_first_coordsdense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/pre_selection_first_coordsdense1/bias/m
�
@Adam/pre_selection_first_coordsdense1/bias/m/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_first_coordsdense1/bias/m*
_output_shapes
: *
dtype0
�
/Adam/pre_selection_first_coordsdense1b/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*@
shared_name1/Adam/pre_selection_first_coordsdense1b/kernel/m
�
CAdam/pre_selection_first_coordsdense1b/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/pre_selection_first_coordsdense1b/kernel/m*
_output_shapes
:	�@*
dtype0
�
-Adam/pre_selection_first_coordsdense1b/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/pre_selection_first_coordsdense1b/bias/m
�
AAdam/pre_selection_first_coordsdense1b/bias/m/Read/ReadVariableOpReadVariableOp-Adam/pre_selection_first_coordsdense1b/bias/m*
_output_shapes
:@*
dtype0
�
/Adam/pre_selection_first_coordsdense1c/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *@
shared_name1/Adam/pre_selection_first_coordsdense1c/kernel/m
�
CAdam/pre_selection_first_coordsdense1c/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/pre_selection_first_coordsdense1c/kernel/m*
_output_shapes

:@ *
dtype0
�
-Adam/pre_selection_first_coordsdense1c/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/pre_selection_first_coordsdense1c/bias/m
�
AAdam/pre_selection_first_coordsdense1c/bias/m/Read/ReadVariableOpReadVariableOp-Adam/pre_selection_first_coordsdense1c/bias/m*
_output_shapes
: *
dtype0
�
.Adam/pre_selection_first_coordsdense2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_first_coordsdense2/kernel/m
�
BAdam/pre_selection_first_coordsdense2/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense2/kernel/m*
_output_shapes

: *
dtype0
�
.Adam/pre_selection_first_coordsdense3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_first_coordsdense3/kernel/m
�
BAdam/pre_selection_first_coordsdense3/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense3/kernel/m*
_output_shapes

: *
dtype0
�
+Adam/pre_selection_first_coordses2/scales/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/pre_selection_first_coordses2/scales/m
�
?Adam/pre_selection_first_coordses2/scales/m/Read/ReadVariableOpReadVariableOp+Adam/pre_selection_first_coordses2/scales/m*
_output_shapes

:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_reduce_indices_ed1/kernel/m
�
BAdam/pre_selection_reduce_indices_ed1/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed1/kernel/m*
_output_shapes

: *
dtype0
�
,Adam/pre_selection_reduce_indices_ed1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed1/bias/m
�
@Adam/pre_selection_reduce_indices_ed1/bias/m/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed1/bias/m*
_output_shapes
:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/pre_selection_reduce_indices_ed2/kernel/m
�
BAdam/pre_selection_reduce_indices_ed2/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed2/kernel/m*
_output_shapes

:*
dtype0
�
,Adam/pre_selection_reduce_indices_ed2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed2/bias/m
�
@Adam/pre_selection_reduce_indices_ed2/bias/m/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed2/bias/m*
_output_shapes
:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/pre_selection_reduce_indices_ed3/kernel/m
�
BAdam/pre_selection_reduce_indices_ed3/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed3/kernel/m*
_output_shapes

:*
dtype0
�
,Adam/pre_selection_reduce_indices_ed3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed3/bias/m
�
@Adam/pre_selection_reduce_indices_ed3/bias/m/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed3/bias/m*
_output_shapes
:*
dtype0
�
)Adam/pre_selection_noisescore_d1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:c*:
shared_name+)Adam/pre_selection_noisescore_d1/kernel/m
�
=Adam/pre_selection_noisescore_d1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/pre_selection_noisescore_d1/kernel/m*
_output_shapes

:c*
dtype0
�
'Adam/pre_selection_noisescore_d1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'Adam/pre_selection_noisescore_d1/bias/m
�
;Adam/pre_selection_noisescore_d1/bias/m/Read/ReadVariableOpReadVariableOp'Adam/pre_selection_noisescore_d1/bias/m*
_output_shapes
:*
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/m
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/m/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/m*
_output_shapes

:  *
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/m
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/m/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/m*
_output_shapes
: *
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/m
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/m/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/m*
_output_shapes

:@ *
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/m
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/m/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/m*
_output_shapes
: *
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/m
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/m/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/m*
_output_shapes

:@*
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/m
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/m/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/m*
_output_shapes
:*
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/m
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/m/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/m*
_output_shapes

:*
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m*
_output_shapes
:*
dtype0
�
+Adam/pre_selection_first_coordses1/scales/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/pre_selection_first_coordses1/scales/v
�
?Adam/pre_selection_first_coordses1/scales/v/Read/ReadVariableOpReadVariableOp+Adam/pre_selection_first_coordses1/scales/v*
_output_shapes

:*
dtype0
�
.Adam/pre_selection_first_coordsdense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
 *?
shared_name0.Adam/pre_selection_first_coordsdense1/kernel/v
�
BAdam/pre_selection_first_coordsdense1/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense1/kernel/v*
_output_shapes

:
 *
dtype0
�
,Adam/pre_selection_first_coordsdense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/pre_selection_first_coordsdense1/bias/v
�
@Adam/pre_selection_first_coordsdense1/bias/v/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_first_coordsdense1/bias/v*
_output_shapes
: *
dtype0
�
/Adam/pre_selection_first_coordsdense1b/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*@
shared_name1/Adam/pre_selection_first_coordsdense1b/kernel/v
�
CAdam/pre_selection_first_coordsdense1b/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/pre_selection_first_coordsdense1b/kernel/v*
_output_shapes
:	�@*
dtype0
�
-Adam/pre_selection_first_coordsdense1b/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-Adam/pre_selection_first_coordsdense1b/bias/v
�
AAdam/pre_selection_first_coordsdense1b/bias/v/Read/ReadVariableOpReadVariableOp-Adam/pre_selection_first_coordsdense1b/bias/v*
_output_shapes
:@*
dtype0
�
/Adam/pre_selection_first_coordsdense1c/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *@
shared_name1/Adam/pre_selection_first_coordsdense1c/kernel/v
�
CAdam/pre_selection_first_coordsdense1c/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/pre_selection_first_coordsdense1c/kernel/v*
_output_shapes

:@ *
dtype0
�
-Adam/pre_selection_first_coordsdense1c/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-Adam/pre_selection_first_coordsdense1c/bias/v
�
AAdam/pre_selection_first_coordsdense1c/bias/v/Read/ReadVariableOpReadVariableOp-Adam/pre_selection_first_coordsdense1c/bias/v*
_output_shapes
: *
dtype0
�
.Adam/pre_selection_first_coordsdense2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_first_coordsdense2/kernel/v
�
BAdam/pre_selection_first_coordsdense2/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense2/kernel/v*
_output_shapes

: *
dtype0
�
.Adam/pre_selection_first_coordsdense3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_first_coordsdense3/kernel/v
�
BAdam/pre_selection_first_coordsdense3/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_first_coordsdense3/kernel/v*
_output_shapes

: *
dtype0
�
+Adam/pre_selection_first_coordses2/scales/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/pre_selection_first_coordses2/scales/v
�
?Adam/pre_selection_first_coordses2/scales/v/Read/ReadVariableOpReadVariableOp+Adam/pre_selection_first_coordses2/scales/v*
_output_shapes

:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *?
shared_name0.Adam/pre_selection_reduce_indices_ed1/kernel/v
�
BAdam/pre_selection_reduce_indices_ed1/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed1/kernel/v*
_output_shapes

: *
dtype0
�
,Adam/pre_selection_reduce_indices_ed1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed1/bias/v
�
@Adam/pre_selection_reduce_indices_ed1/bias/v/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed1/bias/v*
_output_shapes
:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/pre_selection_reduce_indices_ed2/kernel/v
�
BAdam/pre_selection_reduce_indices_ed2/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed2/kernel/v*
_output_shapes

:*
dtype0
�
,Adam/pre_selection_reduce_indices_ed2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed2/bias/v
�
@Adam/pre_selection_reduce_indices_ed2/bias/v/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed2/bias/v*
_output_shapes
:*
dtype0
�
.Adam/pre_selection_reduce_indices_ed3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/pre_selection_reduce_indices_ed3/kernel/v
�
BAdam/pre_selection_reduce_indices_ed3/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/pre_selection_reduce_indices_ed3/kernel/v*
_output_shapes

:*
dtype0
�
,Adam/pre_selection_reduce_indices_ed3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/pre_selection_reduce_indices_ed3/bias/v
�
@Adam/pre_selection_reduce_indices_ed3/bias/v/Read/ReadVariableOpReadVariableOp,Adam/pre_selection_reduce_indices_ed3/bias/v*
_output_shapes
:*
dtype0
�
)Adam/pre_selection_noisescore_d1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:c*:
shared_name+)Adam/pre_selection_noisescore_d1/kernel/v
�
=Adam/pre_selection_noisescore_d1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/pre_selection_noisescore_d1/kernel/v*
_output_shapes

:c*
dtype0
�
'Adam/pre_selection_noisescore_d1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'Adam/pre_selection_noisescore_d1/bias/v
�
;Adam/pre_selection_noisescore_d1/bias/v/Read/ReadVariableOpReadVariableOp'Adam/pre_selection_noisescore_d1/bias/v*
_output_shapes
:*
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/v
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/v/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/v*
_output_shapes

:  *
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/v
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/v/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/v*
_output_shapes
: *
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/v
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/v/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/v*
_output_shapes

:@ *
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/v
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/v/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/v*
_output_shapes
: *
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/v
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/v/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/v*
_output_shapes

:@*
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/v
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/v/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/v*
_output_shapes
:*
dtype0
�
OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*`
shared_nameQOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/v
�
cAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/v/Read/ReadVariableOpReadVariableOpOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/v*
_output_shapes

:*
dtype0
�
MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*^
shared_nameOMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v
�
aAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v/Read/ReadVariableOpReadVariableOpMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
W
outputs_keys
	model
	optimizer
loss
data_y_pred

signatures
 
�
layer-0
layer-1
	layer-2

layer-3
layer-4
layer-5
layer-6
layer-7
layer_with_weights-0
layer-8
layer-9
layer_with_weights-1
layer-10
layer-11
layer_with_weights-2
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-7
layer-21
layer-22
layer-23
layer-24
 layer_with_weights-8
 layer-25
!layer-26
"layer-27
#layer-28
$layer-29
%layer_with_weights-9
%layer-30
&layer_with_weights-10
&layer-31
'layer-32
(layer-33
)layer-34
*layer-35
+layer_with_weights-11
+layer-36
,layer-37
-layer-38
.layer-39
/layer-40
0layer-41
1layer-42
2layer-43
3layer-44
4layer-45
5layer-46
6layer_with_weights-12
6layer-47
7layer-48
8layer-49
9layer-50
:layer-51
;layer-52
<layer-53
=layer-54
>layer-55
?layer-56
@layer-57
Alayer-58
Blayer-59
Clayer-60
Dlayer-61
Elayer-62
Flayer-63
Glayer-64
Hlayer-65
Ilayer-66
Jlayer-67
Klayer-68
Llayer-69
Mlayer-70
Nlayer-71
Olayer-72
Player-73
Qlayer-74
Rlayer-75
Slayer-76
Tlayer-77
Ulayer-78
Vlayer-79
Wlayer-80
	optimizer
Xloss
�
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate^m�_m�`m�cm�dm�em�fm�gm�hm�im�jm�km�lm�mm�nm�om�um�vm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�^v�_v�`v�cv�dv�ev�fv�gv�hv�iv�jv�kv�lv�mv�nv�ov�uv�vv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�
 
 
 
 
 
 
 
 
 
 
 


^scales
 


_kernel
`bias
 
?
an_feature_transformation
bfeature_tranformation_dense


ckernel
dbias


ekernel
fbias


gkernel


hkernel
 
 
 
 


iscales
 
 
 


jkernel
kbias
 
 
 
 


lkernel
mbias


nkernel
obias
 
 
 
 

p	threshold
 
 
 
 

q	outshapes

r	outshapes

s	outshapes

t	outshapes
 
 


ukernel
vbias
 
 
 
 
 
 
 
 

w	outshapes

x	outshapes

y	outshapes

z	outshapes

{	outshapes

|	outshapes

}	outshapes
 
 
 
 
 
 
 

~	outshapes

	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes

�	outshapes
 
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE$pre_selection_first_coordses1/scales<model/layer_with_weights-0/scales/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'pre_selection_first_coordsdense1/kernel<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE%pre_selection_first_coordsdense1/bias:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 
�0
�1
�2
�3
zx
VARIABLE_VALUE(pre_selection_first_coordsdense1b/kernel<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE&pre_selection_first_coordsdense1b/bias:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE(pre_selection_first_coordsdense1c/kernel<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE&pre_selection_first_coordsdense1c/bias:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'pre_selection_first_coordsdense2/kernel<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'pre_selection_first_coordsdense3/kernel<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE$pre_selection_first_coordses2/scales<model/layer_with_weights-7/scales/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'pre_selection_reduce_indices_ed1/kernel<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE%pre_selection_reduce_indices_ed1/bias:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'pre_selection_reduce_indices_ed2/kernel<model/layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE%pre_selection_reduce_indices_ed2/bias:model/layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE'pre_selection_reduce_indices_ed3/kernel=model/layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE%pre_selection_reduce_indices_ed3/bias;model/layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEneighbour_groups/1/Variable@model/layer_with_weights-11/threshold/.ATTRIBUTES/VARIABLE_VALUE

�0

�0

�0

�0
us
VARIABLE_VALUE"pre_selection_noisescore_d1/kernel=model/layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE pre_selection_noisescore_d1/bias;model/layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�0

�kernel
	�bias

�kernel
	�bias

�kernel
	�bias

�kernel
	�bias
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
��
VARIABLE_VALUEHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernelZmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/biasXmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernelZmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/biasXmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernelZmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/biasXmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernelZmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/biasXmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+Adam/pre_selection_first_coordses1/scales/mXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense1/kernel/mXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_first_coordsdense1/bias/mVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/Adam/pre_selection_first_coordsdense1b/kernel/mXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/pre_selection_first_coordsdense1b/bias/mVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/Adam/pre_selection_first_coordsdense1c/kernel/mXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/pre_selection_first_coordsdense1c/bias/mVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense2/kernel/mXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense3/kernel/mXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+Adam/pre_selection_first_coordses2/scales/mXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed1/kernel/mXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed1/bias/mVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed2/kernel/mXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed2/bias/mVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed3/kernel/mYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed3/bias/mWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE)Adam/pre_selection_noisescore_d1/kernel/mYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE'Adam/pre_selection_noisescore_d1/bias/mWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/mvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/mtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/mvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/mtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/mvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/mtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/mvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/mtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+Adam/pre_selection_first_coordses1/scales/vXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense1/kernel/vXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_first_coordsdense1/bias/vVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/Adam/pre_selection_first_coordsdense1b/kernel/vXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/pre_selection_first_coordsdense1b/bias/vVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/Adam/pre_selection_first_coordsdense1c/kernel/vXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-Adam/pre_selection_first_coordsdense1c/bias/vVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense2/kernel/vXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_first_coordsdense3/kernel/vXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+Adam/pre_selection_first_coordses2/scales/vXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed1/kernel/vXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed1/bias/vVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed2/kernel/vXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed2/bias/vVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/pre_selection_reduce_indices_ed3/kernel/vYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/pre_selection_reduce_indices_ed3/bias/vWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE)Adam/pre_selection_noisescore_d1/kernel/vYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE'Adam/pre_selection_noisescore_d1/bias/vWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/vvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/vtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/vvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/vtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/vvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/vtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/vvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/vtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�2
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp8pre_selection_first_coordses1/scales/Read/ReadVariableOp;pre_selection_first_coordsdense1/kernel/Read/ReadVariableOp9pre_selection_first_coordsdense1/bias/Read/ReadVariableOp<pre_selection_first_coordsdense1b/kernel/Read/ReadVariableOp:pre_selection_first_coordsdense1b/bias/Read/ReadVariableOp<pre_selection_first_coordsdense1c/kernel/Read/ReadVariableOp:pre_selection_first_coordsdense1c/bias/Read/ReadVariableOp;pre_selection_first_coordsdense2/kernel/Read/ReadVariableOp;pre_selection_first_coordsdense3/kernel/Read/ReadVariableOp8pre_selection_first_coordses2/scales/Read/ReadVariableOp;pre_selection_reduce_indices_ed1/kernel/Read/ReadVariableOp9pre_selection_reduce_indices_ed1/bias/Read/ReadVariableOp;pre_selection_reduce_indices_ed2/kernel/Read/ReadVariableOp9pre_selection_reduce_indices_ed2/bias/Read/ReadVariableOp;pre_selection_reduce_indices_ed3/kernel/Read/ReadVariableOp9pre_selection_reduce_indices_ed3/bias/Read/ReadVariableOp/neighbour_groups/1/Variable/Read/ReadVariableOp6pre_selection_noisescore_d1/kernel/Read/ReadVariableOp4pre_selection_noisescore_d1/bias/Read/ReadVariableOp\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/Read/ReadVariableOpZpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/Read/ReadVariableOp\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/Read/ReadVariableOpZpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/Read/ReadVariableOp\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/Read/ReadVariableOpZpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/Read/ReadVariableOp\pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/Read/ReadVariableOpZpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/Read/ReadVariableOp?Adam/pre_selection_first_coordses1/scales/m/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense1/kernel/m/Read/ReadVariableOp@Adam/pre_selection_first_coordsdense1/bias/m/Read/ReadVariableOpCAdam/pre_selection_first_coordsdense1b/kernel/m/Read/ReadVariableOpAAdam/pre_selection_first_coordsdense1b/bias/m/Read/ReadVariableOpCAdam/pre_selection_first_coordsdense1c/kernel/m/Read/ReadVariableOpAAdam/pre_selection_first_coordsdense1c/bias/m/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense2/kernel/m/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense3/kernel/m/Read/ReadVariableOp?Adam/pre_selection_first_coordses2/scales/m/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed1/kernel/m/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed1/bias/m/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed2/kernel/m/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed2/bias/m/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed3/kernel/m/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed3/bias/m/Read/ReadVariableOp=Adam/pre_selection_noisescore_d1/kernel/m/Read/ReadVariableOp;Adam/pre_selection_noisescore_d1/bias/m/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/m/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/m/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/m/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/m/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/m/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/m/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/m/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m/Read/ReadVariableOp?Adam/pre_selection_first_coordses1/scales/v/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense1/kernel/v/Read/ReadVariableOp@Adam/pre_selection_first_coordsdense1/bias/v/Read/ReadVariableOpCAdam/pre_selection_first_coordsdense1b/kernel/v/Read/ReadVariableOpAAdam/pre_selection_first_coordsdense1b/bias/v/Read/ReadVariableOpCAdam/pre_selection_first_coordsdense1c/kernel/v/Read/ReadVariableOpAAdam/pre_selection_first_coordsdense1c/bias/v/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense2/kernel/v/Read/ReadVariableOpBAdam/pre_selection_first_coordsdense3/kernel/v/Read/ReadVariableOp?Adam/pre_selection_first_coordses2/scales/v/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed1/kernel/v/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed1/bias/v/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed2/kernel/v/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed2/bias/v/Read/ReadVariableOpBAdam/pre_selection_reduce_indices_ed3/kernel/v/Read/ReadVariableOp@Adam/pre_selection_reduce_indices_ed3/bias/v/Read/ReadVariableOp=Adam/pre_selection_noisescore_d1/kernel/v/Read/ReadVariableOp;Adam/pre_selection_noisescore_d1/bias/v/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/v/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/v/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/v/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/v/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/v/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/v/Read/ReadVariableOpcAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/v/Read/ReadVariableOpaAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v/Read/ReadVariableOpConst*a
TinZ
X2V	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_save_369768299
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate$pre_selection_first_coordses1/scales'pre_selection_first_coordsdense1/kernel%pre_selection_first_coordsdense1/bias(pre_selection_first_coordsdense1b/kernel&pre_selection_first_coordsdense1b/bias(pre_selection_first_coordsdense1c/kernel&pre_selection_first_coordsdense1c/bias'pre_selection_first_coordsdense2/kernel'pre_selection_first_coordsdense3/kernel$pre_selection_first_coordses2/scales'pre_selection_reduce_indices_ed1/kernel%pre_selection_reduce_indices_ed1/bias'pre_selection_reduce_indices_ed2/kernel%pre_selection_reduce_indices_ed2/bias'pre_selection_reduce_indices_ed3/kernel%pre_selection_reduce_indices_ed3/biasneighbour_groups/1/Variable"pre_selection_noisescore_d1/kernel pre_selection_noisescore_d1/biasHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernelFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/biasHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernelFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/biasHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernelFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/biasHpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernelFpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias+Adam/pre_selection_first_coordses1/scales/m.Adam/pre_selection_first_coordsdense1/kernel/m,Adam/pre_selection_first_coordsdense1/bias/m/Adam/pre_selection_first_coordsdense1b/kernel/m-Adam/pre_selection_first_coordsdense1b/bias/m/Adam/pre_selection_first_coordsdense1c/kernel/m-Adam/pre_selection_first_coordsdense1c/bias/m.Adam/pre_selection_first_coordsdense2/kernel/m.Adam/pre_selection_first_coordsdense3/kernel/m+Adam/pre_selection_first_coordses2/scales/m.Adam/pre_selection_reduce_indices_ed1/kernel/m,Adam/pre_selection_reduce_indices_ed1/bias/m.Adam/pre_selection_reduce_indices_ed2/kernel/m,Adam/pre_selection_reduce_indices_ed2/bias/m.Adam/pre_selection_reduce_indices_ed3/kernel/m,Adam/pre_selection_reduce_indices_ed3/bias/m)Adam/pre_selection_noisescore_d1/kernel/m'Adam/pre_selection_noisescore_d1/bias/mOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/mMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/mOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/mMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/mOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/mMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/mOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/mMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m+Adam/pre_selection_first_coordses1/scales/v.Adam/pre_selection_first_coordsdense1/kernel/v,Adam/pre_selection_first_coordsdense1/bias/v/Adam/pre_selection_first_coordsdense1b/kernel/v-Adam/pre_selection_first_coordsdense1b/bias/v/Adam/pre_selection_first_coordsdense1c/kernel/v-Adam/pre_selection_first_coordsdense1c/bias/v.Adam/pre_selection_first_coordsdense2/kernel/v.Adam/pre_selection_first_coordsdense3/kernel/v+Adam/pre_selection_first_coordses2/scales/v.Adam/pre_selection_reduce_indices_ed1/kernel/v,Adam/pre_selection_reduce_indices_ed1/bias/v.Adam/pre_selection_reduce_indices_ed2/kernel/v,Adam/pre_selection_reduce_indices_ed2/bias/v.Adam/pre_selection_reduce_indices_ed3/kernel/v,Adam/pre_selection_reduce_indices_ed3/bias/v)Adam/pre_selection_noisescore_d1/kernel/v'Adam/pre_selection_noisescore_d1/bias/vOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/vMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/vOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/vMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/vOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/vMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/vOAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/vMAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v*`
TinY
W2U*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference__traced_restore_369768561��
��
�@
%__inference__traced_restore_369768561
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate;
7assignvariableop_5_pre_selection_first_coordses1_scales>
:assignvariableop_6_pre_selection_first_coordsdense1_kernel<
8assignvariableop_7_pre_selection_first_coordsdense1_bias?
;assignvariableop_8_pre_selection_first_coordsdense1b_kernel=
9assignvariableop_9_pre_selection_first_coordsdense1b_bias@
<assignvariableop_10_pre_selection_first_coordsdense1c_kernel>
:assignvariableop_11_pre_selection_first_coordsdense1c_bias?
;assignvariableop_12_pre_selection_first_coordsdense2_kernel?
;assignvariableop_13_pre_selection_first_coordsdense3_kernel<
8assignvariableop_14_pre_selection_first_coordses2_scales?
;assignvariableop_15_pre_selection_reduce_indices_ed1_kernel=
9assignvariableop_16_pre_selection_reduce_indices_ed1_bias?
;assignvariableop_17_pre_selection_reduce_indices_ed2_kernel=
9assignvariableop_18_pre_selection_reduce_indices_ed2_bias?
;assignvariableop_19_pre_selection_reduce_indices_ed3_kernel=
9assignvariableop_20_pre_selection_reduce_indices_ed3_bias3
/assignvariableop_21_neighbour_groups_1_variable:
6assignvariableop_22_pre_selection_noisescore_d1_kernel8
4assignvariableop_23_pre_selection_noisescore_d1_bias`
\assignvariableop_24_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel^
Zassignvariableop_25_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias`
\assignvariableop_26_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel^
Zassignvariableop_27_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias`
\assignvariableop_28_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel^
Zassignvariableop_29_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias`
\assignvariableop_30_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel^
Zassignvariableop_31_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_biasC
?assignvariableop_32_adam_pre_selection_first_coordses1_scales_mF
Bassignvariableop_33_adam_pre_selection_first_coordsdense1_kernel_mD
@assignvariableop_34_adam_pre_selection_first_coordsdense1_bias_mG
Cassignvariableop_35_adam_pre_selection_first_coordsdense1b_kernel_mE
Aassignvariableop_36_adam_pre_selection_first_coordsdense1b_bias_mG
Cassignvariableop_37_adam_pre_selection_first_coordsdense1c_kernel_mE
Aassignvariableop_38_adam_pre_selection_first_coordsdense1c_bias_mF
Bassignvariableop_39_adam_pre_selection_first_coordsdense2_kernel_mF
Bassignvariableop_40_adam_pre_selection_first_coordsdense3_kernel_mC
?assignvariableop_41_adam_pre_selection_first_coordses2_scales_mF
Bassignvariableop_42_adam_pre_selection_reduce_indices_ed1_kernel_mD
@assignvariableop_43_adam_pre_selection_reduce_indices_ed1_bias_mF
Bassignvariableop_44_adam_pre_selection_reduce_indices_ed2_kernel_mD
@assignvariableop_45_adam_pre_selection_reduce_indices_ed2_bias_mF
Bassignvariableop_46_adam_pre_selection_reduce_indices_ed3_kernel_mD
@assignvariableop_47_adam_pre_selection_reduce_indices_ed3_bias_mA
=assignvariableop_48_adam_pre_selection_noisescore_d1_kernel_m?
;assignvariableop_49_adam_pre_selection_noisescore_d1_bias_mg
cassignvariableop_50_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_me
aassignvariableop_51_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_mg
cassignvariableop_52_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_me
aassignvariableop_53_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_mg
cassignvariableop_54_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_me
aassignvariableop_55_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_mg
cassignvariableop_56_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_me
aassignvariableop_57_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_mC
?assignvariableop_58_adam_pre_selection_first_coordses1_scales_vF
Bassignvariableop_59_adam_pre_selection_first_coordsdense1_kernel_vD
@assignvariableop_60_adam_pre_selection_first_coordsdense1_bias_vG
Cassignvariableop_61_adam_pre_selection_first_coordsdense1b_kernel_vE
Aassignvariableop_62_adam_pre_selection_first_coordsdense1b_bias_vG
Cassignvariableop_63_adam_pre_selection_first_coordsdense1c_kernel_vE
Aassignvariableop_64_adam_pre_selection_first_coordsdense1c_bias_vF
Bassignvariableop_65_adam_pre_selection_first_coordsdense2_kernel_vF
Bassignvariableop_66_adam_pre_selection_first_coordsdense3_kernel_vC
?assignvariableop_67_adam_pre_selection_first_coordses2_scales_vF
Bassignvariableop_68_adam_pre_selection_reduce_indices_ed1_kernel_vD
@assignvariableop_69_adam_pre_selection_reduce_indices_ed1_bias_vF
Bassignvariableop_70_adam_pre_selection_reduce_indices_ed2_kernel_vD
@assignvariableop_71_adam_pre_selection_reduce_indices_ed2_bias_vF
Bassignvariableop_72_adam_pre_selection_reduce_indices_ed3_kernel_vD
@assignvariableop_73_adam_pre_selection_reduce_indices_ed3_bias_vA
=assignvariableop_74_adam_pre_selection_noisescore_d1_kernel_v?
;assignvariableop_75_adam_pre_selection_noisescore_d1_bias_vg
cassignvariableop_76_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_ve
aassignvariableop_77_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_vg
cassignvariableop_78_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_ve
aassignvariableop_79_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_vg
cassignvariableop_80_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_ve
aassignvariableop_81_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_vg
cassignvariableop_82_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_ve
aassignvariableop_83_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_v
identity_85��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_9�9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�9
value�8B�8UB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-0/scales/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-7/scales/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB=model/layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB@model/layer_with_weights-11/threshold/.ATTRIBUTES/VARIABLE_VALUEB=model/layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp7assignvariableop_5_pre_selection_first_coordses1_scalesIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp:assignvariableop_6_pre_selection_first_coordsdense1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp8assignvariableop_7_pre_selection_first_coordsdense1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp;assignvariableop_8_pre_selection_first_coordsdense1b_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp9assignvariableop_9_pre_selection_first_coordsdense1b_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp<assignvariableop_10_pre_selection_first_coordsdense1c_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_pre_selection_first_coordsdense1c_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp;assignvariableop_12_pre_selection_first_coordsdense2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp;assignvariableop_13_pre_selection_first_coordsdense3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp8assignvariableop_14_pre_selection_first_coordses2_scalesIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp;assignvariableop_15_pre_selection_reduce_indices_ed1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp9assignvariableop_16_pre_selection_reduce_indices_ed1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_pre_selection_reduce_indices_ed2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp9assignvariableop_18_pre_selection_reduce_indices_ed2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp;assignvariableop_19_pre_selection_reduce_indices_ed3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp9assignvariableop_20_pre_selection_reduce_indices_ed3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_neighbour_groups_1_variableIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_pre_selection_noisescore_d1_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp4assignvariableop_23_pre_selection_noisescore_d1_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp\assignvariableop_24_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpZassignvariableop_25_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp\assignvariableop_26_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpZassignvariableop_27_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp\assignvariableop_28_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOpZassignvariableop_29_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp\assignvariableop_30_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpZassignvariableop_31_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp?assignvariableop_32_adam_pre_selection_first_coordses1_scales_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpBassignvariableop_33_adam_pre_selection_first_coordsdense1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_pre_selection_first_coordsdense1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOpCassignvariableop_35_adam_pre_selection_first_coordsdense1b_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpAassignvariableop_36_adam_pre_selection_first_coordsdense1b_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOpCassignvariableop_37_adam_pre_selection_first_coordsdense1c_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOpAassignvariableop_38_adam_pre_selection_first_coordsdense1c_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpBassignvariableop_39_adam_pre_selection_first_coordsdense2_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOpBassignvariableop_40_adam_pre_selection_first_coordsdense3_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp?assignvariableop_41_adam_pre_selection_first_coordses2_scales_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpBassignvariableop_42_adam_pre_selection_reduce_indices_ed1_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp@assignvariableop_43_adam_pre_selection_reduce_indices_ed1_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOpBassignvariableop_44_adam_pre_selection_reduce_indices_ed2_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp@assignvariableop_45_adam_pre_selection_reduce_indices_ed2_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOpBassignvariableop_46_adam_pre_selection_reduce_indices_ed3_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_pre_selection_reduce_indices_ed3_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp=assignvariableop_48_adam_pre_selection_noisescore_d1_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp;assignvariableop_49_adam_pre_selection_noisescore_d1_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOpcassignvariableop_50_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOpaassignvariableop_51_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOpcassignvariableop_52_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOpaassignvariableop_53_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOpcassignvariableop_54_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOpaassignvariableop_55_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOpcassignvariableop_56_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57�
AssignVariableOp_57AssignVariableOpaassignvariableop_57_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58�
AssignVariableOp_58AssignVariableOp?assignvariableop_58_adam_pre_selection_first_coordses1_scales_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59�
AssignVariableOp_59AssignVariableOpBassignvariableop_59_adam_pre_selection_first_coordsdense1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60�
AssignVariableOp_60AssignVariableOp@assignvariableop_60_adam_pre_selection_first_coordsdense1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61�
AssignVariableOp_61AssignVariableOpCassignvariableop_61_adam_pre_selection_first_coordsdense1b_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62�
AssignVariableOp_62AssignVariableOpAassignvariableop_62_adam_pre_selection_first_coordsdense1b_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63�
AssignVariableOp_63AssignVariableOpCassignvariableop_63_adam_pre_selection_first_coordsdense1c_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64�
AssignVariableOp_64AssignVariableOpAassignvariableop_64_adam_pre_selection_first_coordsdense1c_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65�
AssignVariableOp_65AssignVariableOpBassignvariableop_65_adam_pre_selection_first_coordsdense2_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66�
AssignVariableOp_66AssignVariableOpBassignvariableop_66_adam_pre_selection_first_coordsdense3_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67�
AssignVariableOp_67AssignVariableOp?assignvariableop_67_adam_pre_selection_first_coordses2_scales_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68�
AssignVariableOp_68AssignVariableOpBassignvariableop_68_adam_pre_selection_reduce_indices_ed1_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69�
AssignVariableOp_69AssignVariableOp@assignvariableop_69_adam_pre_selection_reduce_indices_ed1_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70�
AssignVariableOp_70AssignVariableOpBassignvariableop_70_adam_pre_selection_reduce_indices_ed2_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71�
AssignVariableOp_71AssignVariableOp@assignvariableop_71_adam_pre_selection_reduce_indices_ed2_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72�
AssignVariableOp_72AssignVariableOpBassignvariableop_72_adam_pre_selection_reduce_indices_ed3_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73�
AssignVariableOp_73AssignVariableOp@assignvariableop_73_adam_pre_selection_reduce_indices_ed3_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74�
AssignVariableOp_74AssignVariableOp=assignvariableop_74_adam_pre_selection_noisescore_d1_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75�
AssignVariableOp_75AssignVariableOp;assignvariableop_75_adam_pre_selection_noisescore_d1_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76�
AssignVariableOp_76AssignVariableOpcassignvariableop_76_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77�
AssignVariableOp_77AssignVariableOpaassignvariableop_77_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78�
AssignVariableOp_78AssignVariableOpcassignvariableop_78_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79�
AssignVariableOp_79AssignVariableOpaassignvariableop_79_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80�
AssignVariableOp_80AssignVariableOpcassignvariableop_80_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81�
AssignVariableOp_81AssignVariableOpaassignvariableop_81_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82�
AssignVariableOp_82AssignVariableOpcassignvariableop_82_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83�
AssignVariableOp_83AssignVariableOpaassignvariableop_83_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_839
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_84�
Identity_85IdentityIdentity_84:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_85"#
identity_85Identity_85:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�7
"__inference__traced_save_369768299
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopC
?savev2_pre_selection_first_coordses1_scales_read_readvariableopF
Bsavev2_pre_selection_first_coordsdense1_kernel_read_readvariableopD
@savev2_pre_selection_first_coordsdense1_bias_read_readvariableopG
Csavev2_pre_selection_first_coordsdense1b_kernel_read_readvariableopE
Asavev2_pre_selection_first_coordsdense1b_bias_read_readvariableopG
Csavev2_pre_selection_first_coordsdense1c_kernel_read_readvariableopE
Asavev2_pre_selection_first_coordsdense1c_bias_read_readvariableopF
Bsavev2_pre_selection_first_coordsdense2_kernel_read_readvariableopF
Bsavev2_pre_selection_first_coordsdense3_kernel_read_readvariableopC
?savev2_pre_selection_first_coordses2_scales_read_readvariableopF
Bsavev2_pre_selection_reduce_indices_ed1_kernel_read_readvariableopD
@savev2_pre_selection_reduce_indices_ed1_bias_read_readvariableopF
Bsavev2_pre_selection_reduce_indices_ed2_kernel_read_readvariableopD
@savev2_pre_selection_reduce_indices_ed2_bias_read_readvariableopF
Bsavev2_pre_selection_reduce_indices_ed3_kernel_read_readvariableopD
@savev2_pre_selection_reduce_indices_ed3_bias_read_readvariableop:
6savev2_neighbour_groups_1_variable_read_readvariableopA
=savev2_pre_selection_noisescore_d1_kernel_read_readvariableop?
;savev2_pre_selection_noisescore_d1_bias_read_readvariableopg
csavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_read_readvariableope
asavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_read_readvariableopg
csavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_read_readvariableope
asavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_read_readvariableopg
csavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_read_readvariableope
asavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_read_readvariableopg
csavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_read_readvariableope
asavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_read_readvariableopJ
Fsavev2_adam_pre_selection_first_coordses1_scales_m_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense1_kernel_m_read_readvariableopK
Gsavev2_adam_pre_selection_first_coordsdense1_bias_m_read_readvariableopN
Jsavev2_adam_pre_selection_first_coordsdense1b_kernel_m_read_readvariableopL
Hsavev2_adam_pre_selection_first_coordsdense1b_bias_m_read_readvariableopN
Jsavev2_adam_pre_selection_first_coordsdense1c_kernel_m_read_readvariableopL
Hsavev2_adam_pre_selection_first_coordsdense1c_bias_m_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense2_kernel_m_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense3_kernel_m_read_readvariableopJ
Fsavev2_adam_pre_selection_first_coordses2_scales_m_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed1_kernel_m_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed1_bias_m_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed2_kernel_m_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed2_bias_m_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed3_kernel_m_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed3_bias_m_read_readvariableopH
Dsavev2_adam_pre_selection_noisescore_d1_kernel_m_read_readvariableopF
Bsavev2_adam_pre_selection_noisescore_d1_bias_m_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_m_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_m_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_m_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_m_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_m_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_m_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_m_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_m_read_readvariableopJ
Fsavev2_adam_pre_selection_first_coordses1_scales_v_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense1_kernel_v_read_readvariableopK
Gsavev2_adam_pre_selection_first_coordsdense1_bias_v_read_readvariableopN
Jsavev2_adam_pre_selection_first_coordsdense1b_kernel_v_read_readvariableopL
Hsavev2_adam_pre_selection_first_coordsdense1b_bias_v_read_readvariableopN
Jsavev2_adam_pre_selection_first_coordsdense1c_kernel_v_read_readvariableopL
Hsavev2_adam_pre_selection_first_coordsdense1c_bias_v_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense2_kernel_v_read_readvariableopM
Isavev2_adam_pre_selection_first_coordsdense3_kernel_v_read_readvariableopJ
Fsavev2_adam_pre_selection_first_coordses2_scales_v_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed1_kernel_v_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed1_bias_v_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed2_kernel_v_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed2_bias_v_read_readvariableopM
Isavev2_adam_pre_selection_reduce_indices_ed3_kernel_v_read_readvariableopK
Gsavev2_adam_pre_selection_reduce_indices_ed3_bias_v_read_readvariableopH
Dsavev2_adam_pre_selection_noisescore_d1_kernel_v_read_readvariableopF
Bsavev2_adam_pre_selection_noisescore_d1_bias_v_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_v_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_v_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_v_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_v_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_v_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_v_read_readvariableopn
jsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_v_read_readvariableopl
hsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�9
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�9
value�8B�8UB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-0/scales/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-7/scales/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB=model/layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB@model/layer_with_weights-11/threshold/.ATTRIBUTES/VARIABLE_VALUEB=model/layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.ATTRIBUTES/VARIABLE_VALUEBZmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-0/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-7/scales/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXmodel/layer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVmodel/layer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBYmodel/layer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWmodel/layer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBvmodel/layer_with_weights-2/feature_tranformation_dense/3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtmodel/layer_with_weights-2/feature_tranformation_dense/3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�5
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop?savev2_pre_selection_first_coordses1_scales_read_readvariableopBsavev2_pre_selection_first_coordsdense1_kernel_read_readvariableop@savev2_pre_selection_first_coordsdense1_bias_read_readvariableopCsavev2_pre_selection_first_coordsdense1b_kernel_read_readvariableopAsavev2_pre_selection_first_coordsdense1b_bias_read_readvariableopCsavev2_pre_selection_first_coordsdense1c_kernel_read_readvariableopAsavev2_pre_selection_first_coordsdense1c_bias_read_readvariableopBsavev2_pre_selection_first_coordsdense2_kernel_read_readvariableopBsavev2_pre_selection_first_coordsdense3_kernel_read_readvariableop?savev2_pre_selection_first_coordses2_scales_read_readvariableopBsavev2_pre_selection_reduce_indices_ed1_kernel_read_readvariableop@savev2_pre_selection_reduce_indices_ed1_bias_read_readvariableopBsavev2_pre_selection_reduce_indices_ed2_kernel_read_readvariableop@savev2_pre_selection_reduce_indices_ed2_bias_read_readvariableopBsavev2_pre_selection_reduce_indices_ed3_kernel_read_readvariableop@savev2_pre_selection_reduce_indices_ed3_bias_read_readvariableop6savev2_neighbour_groups_1_variable_read_readvariableop=savev2_pre_selection_noisescore_d1_kernel_read_readvariableop;savev2_pre_selection_noisescore_d1_bias_read_readvariableopcsavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_read_readvariableopasavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_read_readvariableopcsavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_read_readvariableopasavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_read_readvariableopcsavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_read_readvariableopasavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_read_readvariableopcsavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_read_readvariableopasavev2_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_read_readvariableopFsavev2_adam_pre_selection_first_coordses1_scales_m_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense1_kernel_m_read_readvariableopGsavev2_adam_pre_selection_first_coordsdense1_bias_m_read_readvariableopJsavev2_adam_pre_selection_first_coordsdense1b_kernel_m_read_readvariableopHsavev2_adam_pre_selection_first_coordsdense1b_bias_m_read_readvariableopJsavev2_adam_pre_selection_first_coordsdense1c_kernel_m_read_readvariableopHsavev2_adam_pre_selection_first_coordsdense1c_bias_m_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense2_kernel_m_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense3_kernel_m_read_readvariableopFsavev2_adam_pre_selection_first_coordses2_scales_m_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed1_kernel_m_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed1_bias_m_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed2_kernel_m_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed2_bias_m_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed3_kernel_m_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed3_bias_m_read_readvariableopDsavev2_adam_pre_selection_noisescore_d1_kernel_m_read_readvariableopBsavev2_adam_pre_selection_noisescore_d1_bias_m_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_m_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_m_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_m_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_m_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_m_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_m_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_m_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_m_read_readvariableopFsavev2_adam_pre_selection_first_coordses1_scales_v_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense1_kernel_v_read_readvariableopGsavev2_adam_pre_selection_first_coordsdense1_bias_v_read_readvariableopJsavev2_adam_pre_selection_first_coordsdense1b_kernel_v_read_readvariableopHsavev2_adam_pre_selection_first_coordsdense1b_bias_v_read_readvariableopJsavev2_adam_pre_selection_first_coordsdense1c_kernel_v_read_readvariableopHsavev2_adam_pre_selection_first_coordsdense1c_bias_v_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense2_kernel_v_read_readvariableopIsavev2_adam_pre_selection_first_coordsdense3_kernel_v_read_readvariableopFsavev2_adam_pre_selection_first_coordses2_scales_v_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed1_kernel_v_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed1_bias_v_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed2_kernel_v_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed2_bias_v_read_readvariableopIsavev2_adam_pre_selection_reduce_indices_ed3_kernel_v_read_readvariableopGsavev2_adam_pre_selection_reduce_indices_ed3_bias_v_read_readvariableopDsavev2_adam_pre_selection_noisescore_d1_kernel_v_read_readvariableopBsavev2_adam_pre_selection_noisescore_d1_bias_v_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_kernel_v_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_0_bias_v_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_kernel_v_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_1_bias_v_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_kernel_v_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_2_bias_v_read_readvariableopjsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_kernel_v_read_readvariableophsavev2_adam_pre_selection_first_coordsdmp1_pre_selection_first_coordsdmp1_5_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : ::
 : :	�@:@:@ : : : :: :::::: :c::  : :@ : :@:::::
 : :	�@:@:@ : : : :: ::::::c::  : :@ : :@:::::
 : :	�@:@:@ : : : :: ::::::c::  : :@ : :@:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

:
 : 

_output_shapes
: :%	!

_output_shapes
:	�@: 


_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :$ 

_output_shapes

::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:c: 

_output_shapes
::$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

::$" 

_output_shapes

:
 : #

_output_shapes
: :%$!

_output_shapes
:	�@: %

_output_shapes
:@:$& 

_output_shapes

:@ : '

_output_shapes
: :$( 

_output_shapes

: :$) 

_output_shapes

: :$* 

_output_shapes

::$+ 

_output_shapes

: : ,

_output_shapes
::$- 

_output_shapes

:: .

_output_shapes
::$/ 

_output_shapes

:: 0

_output_shapes
::$1 

_output_shapes

:c: 2

_output_shapes
::$3 

_output_shapes

:  : 4

_output_shapes
: :$5 

_output_shapes

:@ : 6

_output_shapes
: :$7 

_output_shapes

:@: 8

_output_shapes
::$9 

_output_shapes

:: :

_output_shapes
::$; 

_output_shapes

::$< 

_output_shapes

:
 : =

_output_shapes
: :%>!

_output_shapes
:	�@: ?

_output_shapes
:@:$@ 

_output_shapes

:@ : A

_output_shapes
: :$B 

_output_shapes

: :$C 

_output_shapes

: :$D 

_output_shapes

::$E 

_output_shapes

: : F

_output_shapes
::$G 

_output_shapes

:: H

_output_shapes
::$I 

_output_shapes

:: J

_output_shapes
::$K 

_output_shapes

:c: L

_output_shapes
::$M 

_output_shapes

:  : N

_output_shapes
: :$O 

_output_shapes

:@ : P

_output_shapes
: :$Q 

_output_shapes

:@: R

_output_shapes
::$S 

_output_shapes

:: T

_output_shapes
::U

_output_shapes
: "�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:��	
��
outputs_keys
	model
	optimizer
loss
data_y_pred

signatures"��
_tf_keras_model��{"class_name": "RobustModel", "name": "robust_model", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"skip_non_finite": 5, "outputs_keys": ["features", "coords", "addfeat", "energy", "t_idx", "t_energy", "t_pos", "t_time", "t_pid", "t_spectator", "t_fully_contained", "group_backgather", "noise_backscatter_N", "noise_backscatter_idx", "orig_t_idx", "orig_t_energy"], "submodel": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "recHitFeatures"}, "name": "recHitFeatures", "inbound_nodes": []}, {"class_name": "ProcessFeatures", "config": {"name": "process_features", "trainable": true, "dtype": "float32", "newformat": true}, "name": "process_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "recHitFeatures_rowsplits"}, "name": "recHitFeatures_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFeatures", "config": {"name": "select_features_1", "trainable": true, "dtype": "float32", "index_left": 5, "index_right": 8}, "name": "select_features_1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "SelectFeatures", "config": {"name": "select_features", "trainable": true, "dtype": "float32", "index_left": 0, "index_right": 1}, "name": "select_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_idx"}, "name": "t_idx", "inbound_nodes": []}, {"class_name": "CastRowSplits", "config": {"name": "cast_row_splits", "trainable": true, "dtype": "float32"}, "name": "cast_row_splits", "inbound_nodes": [[["recHitFeatures_rowsplits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_initial", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_initial", "inbound_nodes": [[["select_features_1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses1", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses1", "inbound_nodes": [[["pre_selection_initial", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt1", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt1", "inbound_nodes": [[["pre_selection_first_coordses1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "KNN", "config": {"name": "knn", "trainable": true, "dtype": "float32", "K": 24, "radius": 1}, "name": "knn", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "DistanceWeightedMessagePassing", "config": {"name": "pre_selection_first_coordsdmp1", "trainable": true, "dtype": "float32", "n_feature_transformation": [32, 32, 8, 8], "sumwnorm": false}, "name": "pre_selection_first_coordsdmp1", "inbound_nodes": [[["pre_selection_first_coordsdense1", 0, 0, {}], ["knn", 0, 0, {}], ["knn", 0, 1, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1b", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1b", "inbound_nodes": [[["pre_selection_first_coordsdmp1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1c", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1c", "inbound_nodes": [[["pre_selection_first_coordsdense1b", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense2", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense2", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense3", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["pre_selection_first_coordsdense2", 0, 0, {}], ["pre_selection_first_coordsdense3", 0, 0, {}]]]}, {"class_name": "ScalarMultiply", "config": {"name": "scalar_multiply", "trainable": true, "dtype": "float32", "factor": 0.1}, "name": "scalar_multiply", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["scalar_multiply", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt3", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt3", "inbound_nodes": [[["add", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses2", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses2", "inbound_nodes": [[["pre_selection_first_coordsplt3", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt2", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt2", "inbound_nodes": [[["pre_selection_first_coordses2", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "RecalcDistances", "config": {"name": "recalc_distances", "trainable": true, "dtype": "float32"}, "name": "recalc_distances", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "SortAndSelectNeighbours", "config": {"name": "sort_and_select_neighbours", "trainable": true, "dtype": "float32", "K": 16, "radius": -1.0, "sort": true}, "name": "sort_and_select_neighbours", "inbound_nodes": [[["recalc_distances", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed1", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed1", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "RemoveSelfRef", "config": {"name": "remove_self_ref", "trainable": true, "dtype": "float32"}, "name": "remove_self_ref", "inbound_nodes": [[["sort_and_select_neighbours", 0, 0, {}]]]}, {"class_name": "EdgeCreator", "config": {"name": "edge_creator", "trainable": true, "dtype": "float32", "addself": false}, "name": "edge_creator", "inbound_nodes": [[["sort_and_select_neighbours", 0, 1, {}], ["pre_selection_reduce_indices_ed1", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [15, 1]}}, "name": "reshape", "inbound_nodes": [[["remove_self_ref", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["edge_creator", 0, 0, {}], ["reshape", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed2", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed3", "inbound_nodes": [[["pre_selection_reduce_indices_ed2", 0, 0, {}]]]}, {"class_name": "LLEdgeClassifier", "config": {"name": "ll_edge_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_edge_classifier", "inbound_nodes": [[["pre_selection_reduce_indices_ed3", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "EdgeSelector", "config": {"name": "edge_selector", "trainable": true, "dtype": "float32", "threshold": 0.5}, "name": "edge_selector", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}]]]}, {"class_name": "GroupScoreFromEdgeScores", "config": {"name": "group_score_from_edge_scores", "trainable": true, "dtype": "float32"}, "name": "group_score_from_edge_scores", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["edge_selector", 0, 0, {}]]]}, {"class_name": "LLClusterCoordinates", "config": {"name": "ll_cluster_coordinates", "trainable": true, "dtype": "float32", "dynamic": true, "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": true, "return_lossval": false}, "name": "ll_cluster_coordinates", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "NeighbourGroups", "config": {"name": "neighbour_groups", "trainable": true, "dtype": "float32", "purity_min_target": null, "efficiency_min_target": null, "thresh_viscosity": 0.01, "print_reduction": true, "threshold": 0.001, "return_backscatter": false}, "name": "neighbour_groups", "inbound_nodes": [[["group_score_from_edge_scores", 0, 0, {}], ["edge_selector", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_bef_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_bef_red", "inbound_nodes": [[["ll_cluster_coordinates", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_1", "trainable": true, "dtype": "float32", "mode": "mean"}, "name": "accumulate_neighbours_1", "inbound_nodes": [[["pre_selection_bef_red", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_2", "trainable": true, "dtype": "float32", "mode": "sum"}, "name": "accumulate_neighbours_2", "inbound_nodes": [[["select_features", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours", "trainable": true, "dtype": "float32", "mode": "minmeanmax"}, "name": "accumulate_neighbours", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_2", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_2", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_3", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_3", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_2", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_4", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_4", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_1", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_1", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_after_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_after_red", "inbound_nodes": [[["select_from_indices_2", 0, 0, {}], ["select_from_indices_3", 0, 0, {}], ["select_from_indices_4", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["select_from_indices_1", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_noisescore_d1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_noisescore_d1", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "LLNotNoiseClassifier", "config": {"name": "ll_not_noise_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_not_noise_classifier", "inbound_nodes": [[["pre_selection_noisescore_d1", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_energy"}, "name": "t_energy", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_pos"}, "name": "t_pos", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_time"}, "name": "t_time", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_pid"}, "name": "t_pid", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_spectator"}, "name": "t_spectator", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_fully_contained"}, "name": "t_fully_contained", "inbound_nodes": []}, {"class_name": "NoiseFilter", "config": {"name": "noise_filter", "trainable": true, "dtype": "float32", "threshold": 0.025, "print_reduction": true, "return_backscatter": true}, "name": "noise_filter", "inbound_nodes": [[["ll_not_noise_classifier", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices", "trainable": true, "dtype": "float32"}, "name": "select_from_indices", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["recHitFeatures", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_5", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_5", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_energy", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_6", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_6", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pos", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_7", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_7", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_time", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_8", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_8", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pid", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_9", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_9", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_spectator", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_10", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_10", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_fully_contained", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_idx_rowsplits"}, "name": "t_idx_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_energy_rowsplits"}, "name": "t_energy_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pos_rowsplits"}, "name": "t_pos_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_time_rowsplits"}, "name": "t_time_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pid_rowsplits"}, "name": "t_pid_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_spectator_rowsplits"}, "name": "t_spectator_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_fully_contained_rowsplits"}, "name": "t_fully_contained_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_11", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_11", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_12", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_12", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_13", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_13", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_14", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_14", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_3", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_15", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_15", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_16", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_16", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_5", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_17", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_17", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_6", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_18", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_18", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_7", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_19", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_19", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_8", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_20", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_20", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_9", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_21", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_21", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_10", 0, 0, {}]]]}], "input_layers": [["recHitFeatures", 0, 0], ["recHitFeatures_rowsplits", 0, 0], ["t_idx", 0, 0], ["t_idx_rowsplits", 0, 0], ["t_energy", 0, 0], ["t_energy_rowsplits", 0, 0], ["t_pos", 0, 0], ["t_pos_rowsplits", 0, 0], ["t_time", 0, 0], ["t_time_rowsplits", 0, 0], ["t_pid", 0, 0], ["t_pid_rowsplits", 0, 0], ["t_spectator", 0, 0], ["t_spectator_rowsplits", 0, 0], ["t_fully_contained", 0, 0], ["t_fully_contained_rowsplits", 0, 0]], "output_layers": [["select_from_indices_11", 0, 0], ["select_from_indices_12", 0, 0], ["select_from_indices_13", 0, 0], ["select_from_indices_14", 0, 0], ["select_from_indices_15", 0, 0], ["select_from_indices_16", 0, 0], ["select_from_indices_17", 0, 0], ["select_from_indices_18", 0, 0], ["select_from_indices_19", 0, 0], ["select_from_indices_20", 0, 0], ["select_from_indices_21", 0, 0], ["neighbour_groups", 0, 2], ["noise_filter", 0, 2], ["noise_filter", 0, 3], ["t_idx", 0, 0], ["t_energy", 0, 0]]}, "num_train_step": 56871}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "RobustModel", "config": {"skip_non_finite": 5, "outputs_keys": ["features", "coords", "addfeat", "energy", "t_idx", "t_energy", "t_pos", "t_time", "t_pid", "t_spectator", "t_fully_contained", "group_backgather", "noise_backscatter_N", "noise_backscatter_idx", "orig_t_idx", "orig_t_energy"], "submodel": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "recHitFeatures"}, "name": "recHitFeatures", "inbound_nodes": []}, {"class_name": "ProcessFeatures", "config": {"name": "process_features", "trainable": true, "dtype": "float32", "newformat": true}, "name": "process_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "recHitFeatures_rowsplits"}, "name": "recHitFeatures_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFeatures", "config": {"name": "select_features_1", "trainable": true, "dtype": "float32", "index_left": 5, "index_right": 8}, "name": "select_features_1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "SelectFeatures", "config": {"name": "select_features", "trainable": true, "dtype": "float32", "index_left": 0, "index_right": 1}, "name": "select_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_idx"}, "name": "t_idx", "inbound_nodes": []}, {"class_name": "CastRowSplits", "config": {"name": "cast_row_splits", "trainable": true, "dtype": "float32"}, "name": "cast_row_splits", "inbound_nodes": [[["recHitFeatures_rowsplits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_initial", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_initial", "inbound_nodes": [[["select_features_1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses1", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses1", "inbound_nodes": [[["pre_selection_initial", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt1", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt1", "inbound_nodes": [[["pre_selection_first_coordses1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "KNN", "config": {"name": "knn", "trainable": true, "dtype": "float32", "K": 24, "radius": 1}, "name": "knn", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "DistanceWeightedMessagePassing", "config": {"name": "pre_selection_first_coordsdmp1", "trainable": true, "dtype": "float32", "n_feature_transformation": [32, 32, 8, 8], "sumwnorm": false}, "name": "pre_selection_first_coordsdmp1", "inbound_nodes": [[["pre_selection_first_coordsdense1", 0, 0, {}], ["knn", 0, 0, {}], ["knn", 0, 1, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1b", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1b", "inbound_nodes": [[["pre_selection_first_coordsdmp1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1c", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1c", "inbound_nodes": [[["pre_selection_first_coordsdense1b", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense2", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense2", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense3", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["pre_selection_first_coordsdense2", 0, 0, {}], ["pre_selection_first_coordsdense3", 0, 0, {}]]]}, {"class_name": "ScalarMultiply", "config": {"name": "scalar_multiply", "trainable": true, "dtype": "float32", "factor": 0.1}, "name": "scalar_multiply", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["scalar_multiply", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt3", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt3", "inbound_nodes": [[["add", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses2", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses2", "inbound_nodes": [[["pre_selection_first_coordsplt3", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt2", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt2", "inbound_nodes": [[["pre_selection_first_coordses2", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "RecalcDistances", "config": {"name": "recalc_distances", "trainable": true, "dtype": "float32"}, "name": "recalc_distances", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "SortAndSelectNeighbours", "config": {"name": "sort_and_select_neighbours", "trainable": true, "dtype": "float32", "K": 16, "radius": -1.0, "sort": true}, "name": "sort_and_select_neighbours", "inbound_nodes": [[["recalc_distances", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed1", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed1", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "RemoveSelfRef", "config": {"name": "remove_self_ref", "trainable": true, "dtype": "float32"}, "name": "remove_self_ref", "inbound_nodes": [[["sort_and_select_neighbours", 0, 0, {}]]]}, {"class_name": "EdgeCreator", "config": {"name": "edge_creator", "trainable": true, "dtype": "float32", "addself": false}, "name": "edge_creator", "inbound_nodes": [[["sort_and_select_neighbours", 0, 1, {}], ["pre_selection_reduce_indices_ed1", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [15, 1]}}, "name": "reshape", "inbound_nodes": [[["remove_self_ref", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["edge_creator", 0, 0, {}], ["reshape", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed2", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed3", "inbound_nodes": [[["pre_selection_reduce_indices_ed2", 0, 0, {}]]]}, {"class_name": "LLEdgeClassifier", "config": {"name": "ll_edge_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_edge_classifier", "inbound_nodes": [[["pre_selection_reduce_indices_ed3", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "EdgeSelector", "config": {"name": "edge_selector", "trainable": true, "dtype": "float32", "threshold": 0.5}, "name": "edge_selector", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}]]]}, {"class_name": "GroupScoreFromEdgeScores", "config": {"name": "group_score_from_edge_scores", "trainable": true, "dtype": "float32"}, "name": "group_score_from_edge_scores", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["edge_selector", 0, 0, {}]]]}, {"class_name": "LLClusterCoordinates", "config": {"name": "ll_cluster_coordinates", "trainable": true, "dtype": "float32", "dynamic": true, "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": true, "return_lossval": false}, "name": "ll_cluster_coordinates", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "NeighbourGroups", "config": {"name": "neighbour_groups", "trainable": true, "dtype": "float32", "purity_min_target": null, "efficiency_min_target": null, "thresh_viscosity": 0.01, "print_reduction": true, "threshold": 0.001, "return_backscatter": false}, "name": "neighbour_groups", "inbound_nodes": [[["group_score_from_edge_scores", 0, 0, {}], ["edge_selector", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_bef_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_bef_red", "inbound_nodes": [[["ll_cluster_coordinates", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_1", "trainable": true, "dtype": "float32", "mode": "mean"}, "name": "accumulate_neighbours_1", "inbound_nodes": [[["pre_selection_bef_red", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_2", "trainable": true, "dtype": "float32", "mode": "sum"}, "name": "accumulate_neighbours_2", "inbound_nodes": [[["select_features", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours", "trainable": true, "dtype": "float32", "mode": "minmeanmax"}, "name": "accumulate_neighbours", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_2", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_2", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_3", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_3", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_2", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_4", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_4", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_1", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_1", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_after_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_after_red", "inbound_nodes": [[["select_from_indices_2", 0, 0, {}], ["select_from_indices_3", 0, 0, {}], ["select_from_indices_4", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["select_from_indices_1", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_noisescore_d1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_noisescore_d1", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "LLNotNoiseClassifier", "config": {"name": "ll_not_noise_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_not_noise_classifier", "inbound_nodes": [[["pre_selection_noisescore_d1", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_energy"}, "name": "t_energy", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_pos"}, "name": "t_pos", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_time"}, "name": "t_time", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_pid"}, "name": "t_pid", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_spectator"}, "name": "t_spectator", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_fully_contained"}, "name": "t_fully_contained", "inbound_nodes": []}, {"class_name": "NoiseFilter", "config": {"name": "noise_filter", "trainable": true, "dtype": "float32", "threshold": 0.025, "print_reduction": true, "return_backscatter": true}, "name": "noise_filter", "inbound_nodes": [[["ll_not_noise_classifier", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices", "trainable": true, "dtype": "float32"}, "name": "select_from_indices", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["recHitFeatures", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_5", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_5", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_energy", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_6", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_6", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pos", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_7", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_7", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_time", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_8", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_8", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pid", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_9", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_9", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_spectator", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_10", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_10", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_fully_contained", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_idx_rowsplits"}, "name": "t_idx_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_energy_rowsplits"}, "name": "t_energy_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pos_rowsplits"}, "name": "t_pos_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_time_rowsplits"}, "name": "t_time_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pid_rowsplits"}, "name": "t_pid_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_spectator_rowsplits"}, "name": "t_spectator_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_fully_contained_rowsplits"}, "name": "t_fully_contained_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_11", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_11", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_12", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_12", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_13", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_13", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_14", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_14", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_3", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_15", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_15", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_16", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_16", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_5", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_17", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_17", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_6", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_18", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_18", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_7", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_19", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_19", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_8", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_20", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_20", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_9", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_21", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_21", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_10", 0, 0, {}]]]}], "input_layers": [["recHitFeatures", 0, 0], ["recHitFeatures_rowsplits", 0, 0], ["t_idx", 0, 0], ["t_idx_rowsplits", 0, 0], ["t_energy", 0, 0], ["t_energy_rowsplits", 0, 0], ["t_pos", 0, 0], ["t_pos_rowsplits", 0, 0], ["t_time", 0, 0], ["t_time_rowsplits", 0, 0], ["t_pid", 0, 0], ["t_pid_rowsplits", 0, 0], ["t_spectator", 0, 0], ["t_spectator_rowsplits", 0, 0], ["t_fully_contained", 0, 0], ["t_fully_contained_rowsplits", 0, 0]], "output_layers": [["select_from_indices_11", 0, 0], ["select_from_indices_12", 0, 0], ["select_from_indices_13", 0, 0], ["select_from_indices_14", 0, 0], ["select_from_indices_15", 0, 0], ["select_from_indices_16", 0, 0], ["select_from_indices_17", 0, 0], ["select_from_indices_18", 0, 0], ["select_from_indices_19", 0, 0], ["select_from_indices_20", 0, 0], ["select_from_indices_21", 0, 0], ["neighbour_groups", 0, 2], ["noise_filter", 0, 2], ["noise_filter", 0, 3], ["t_idx", 0, 0], ["t_energy", 0, 0]]}, "num_train_step": 56871}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
 "
trackable_list_wrapper
��
layer-0
layer-1
	layer-2

layer-3
layer-4
layer-5
layer-6
layer-7
layer_with_weights-0
layer-8
layer-9
layer_with_weights-1
layer-10
layer-11
layer_with_weights-2
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-7
layer-21
layer-22
layer-23
layer-24
 layer_with_weights-8
 layer-25
!layer-26
"layer-27
#layer-28
$layer-29
%layer_with_weights-9
%layer-30
&layer_with_weights-10
&layer-31
'layer-32
(layer-33
)layer-34
*layer-35
+layer_with_weights-11
+layer-36
,layer-37
-layer-38
.layer-39
/layer-40
0layer-41
1layer-42
2layer-43
3layer-44
4layer-45
5layer-46
6layer_with_weights-12
6layer-47
7layer-48
8layer-49
9layer-50
:layer-51
;layer-52
<layer-53
=layer-54
>layer-55
?layer-56
@layer-57
Alayer-58
Blayer-59
Clayer-60
Dlayer-61
Elayer-62
Flayer-63
Glayer-64
Hlayer-65
Ilayer-66
Jlayer-67
Klayer-68
Llayer-69
Mlayer-70
Nlayer-71
Olayer-72
Player-73
Qlayer-74
Rlayer-75
Slayer-76
Tlayer-77
Ulayer-78
Vlayer-79
Wlayer-80
	optimizer
Xloss"�
_tf_keras_network̦{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "recHitFeatures"}, "name": "recHitFeatures", "inbound_nodes": []}, {"class_name": "ProcessFeatures", "config": {"name": "process_features", "trainable": true, "dtype": "float32", "newformat": true}, "name": "process_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "recHitFeatures_rowsplits"}, "name": "recHitFeatures_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFeatures", "config": {"name": "select_features_1", "trainable": true, "dtype": "float32", "index_left": 5, "index_right": 8}, "name": "select_features_1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "SelectFeatures", "config": {"name": "select_features", "trainable": true, "dtype": "float32", "index_left": 0, "index_right": 1}, "name": "select_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_idx"}, "name": "t_idx", "inbound_nodes": []}, {"class_name": "CastRowSplits", "config": {"name": "cast_row_splits", "trainable": true, "dtype": "float32"}, "name": "cast_row_splits", "inbound_nodes": [[["recHitFeatures_rowsplits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_initial", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_initial", "inbound_nodes": [[["select_features_1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses1", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses1", "inbound_nodes": [[["pre_selection_initial", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt1", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt1", "inbound_nodes": [[["pre_selection_first_coordses1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "KNN", "config": {"name": "knn", "trainable": true, "dtype": "float32", "K": 24, "radius": 1}, "name": "knn", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "DistanceWeightedMessagePassing", "config": {"name": "pre_selection_first_coordsdmp1", "trainable": true, "dtype": "float32", "n_feature_transformation": [32, 32, 8, 8], "sumwnorm": false}, "name": "pre_selection_first_coordsdmp1", "inbound_nodes": [[["pre_selection_first_coordsdense1", 0, 0, {}], ["knn", 0, 0, {}], ["knn", 0, 1, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1b", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1b", "inbound_nodes": [[["pre_selection_first_coordsdmp1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1c", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1c", "inbound_nodes": [[["pre_selection_first_coordsdense1b", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense2", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense2", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense3", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["pre_selection_first_coordsdense2", 0, 0, {}], ["pre_selection_first_coordsdense3", 0, 0, {}]]]}, {"class_name": "ScalarMultiply", "config": {"name": "scalar_multiply", "trainable": true, "dtype": "float32", "factor": 0.1}, "name": "scalar_multiply", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["scalar_multiply", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt3", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt3", "inbound_nodes": [[["add", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses2", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses2", "inbound_nodes": [[["pre_selection_first_coordsplt3", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt2", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt2", "inbound_nodes": [[["pre_selection_first_coordses2", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "RecalcDistances", "config": {"name": "recalc_distances", "trainable": true, "dtype": "float32"}, "name": "recalc_distances", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "SortAndSelectNeighbours", "config": {"name": "sort_and_select_neighbours", "trainable": true, "dtype": "float32", "K": 16, "radius": -1.0, "sort": true}, "name": "sort_and_select_neighbours", "inbound_nodes": [[["recalc_distances", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed1", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed1", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "RemoveSelfRef", "config": {"name": "remove_self_ref", "trainable": true, "dtype": "float32"}, "name": "remove_self_ref", "inbound_nodes": [[["sort_and_select_neighbours", 0, 0, {}]]]}, {"class_name": "EdgeCreator", "config": {"name": "edge_creator", "trainable": true, "dtype": "float32", "addself": false}, "name": "edge_creator", "inbound_nodes": [[["sort_and_select_neighbours", 0, 1, {}], ["pre_selection_reduce_indices_ed1", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [15, 1]}}, "name": "reshape", "inbound_nodes": [[["remove_self_ref", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["edge_creator", 0, 0, {}], ["reshape", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed2", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed3", "inbound_nodes": [[["pre_selection_reduce_indices_ed2", 0, 0, {}]]]}, {"class_name": "LLEdgeClassifier", "config": {"name": "ll_edge_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_edge_classifier", "inbound_nodes": [[["pre_selection_reduce_indices_ed3", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "EdgeSelector", "config": {"name": "edge_selector", "trainable": true, "dtype": "float32", "threshold": 0.5}, "name": "edge_selector", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}]]]}, {"class_name": "GroupScoreFromEdgeScores", "config": {"name": "group_score_from_edge_scores", "trainable": true, "dtype": "float32"}, "name": "group_score_from_edge_scores", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["edge_selector", 0, 0, {}]]]}, {"class_name": "LLClusterCoordinates", "config": {"name": "ll_cluster_coordinates", "trainable": true, "dtype": "float32", "dynamic": true, "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": true, "return_lossval": false}, "name": "ll_cluster_coordinates", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "NeighbourGroups", "config": {"name": "neighbour_groups", "trainable": true, "dtype": "float32", "purity_min_target": null, "efficiency_min_target": null, "thresh_viscosity": 0.01, "print_reduction": true, "threshold": 0.001, "return_backscatter": false}, "name": "neighbour_groups", "inbound_nodes": [[["group_score_from_edge_scores", 0, 0, {}], ["edge_selector", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_bef_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_bef_red", "inbound_nodes": [[["ll_cluster_coordinates", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_1", "trainable": true, "dtype": "float32", "mode": "mean"}, "name": "accumulate_neighbours_1", "inbound_nodes": [[["pre_selection_bef_red", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_2", "trainable": true, "dtype": "float32", "mode": "sum"}, "name": "accumulate_neighbours_2", "inbound_nodes": [[["select_features", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours", "trainable": true, "dtype": "float32", "mode": "minmeanmax"}, "name": "accumulate_neighbours", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_2", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_2", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_3", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_3", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_2", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_4", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_4", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_1", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_1", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_after_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_after_red", "inbound_nodes": [[["select_from_indices_2", 0, 0, {}], ["select_from_indices_3", 0, 0, {}], ["select_from_indices_4", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["select_from_indices_1", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_noisescore_d1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_noisescore_d1", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "LLNotNoiseClassifier", "config": {"name": "ll_not_noise_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_not_noise_classifier", "inbound_nodes": [[["pre_selection_noisescore_d1", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_energy"}, "name": "t_energy", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_pos"}, "name": "t_pos", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_time"}, "name": "t_time", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_pid"}, "name": "t_pid", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_spectator"}, "name": "t_spectator", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_fully_contained"}, "name": "t_fully_contained", "inbound_nodes": []}, {"class_name": "NoiseFilter", "config": {"name": "noise_filter", "trainable": true, "dtype": "float32", "threshold": 0.025, "print_reduction": true, "return_backscatter": true}, "name": "noise_filter", "inbound_nodes": [[["ll_not_noise_classifier", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices", "trainable": true, "dtype": "float32"}, "name": "select_from_indices", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["recHitFeatures", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_5", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_5", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_energy", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_6", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_6", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pos", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_7", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_7", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_time", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_8", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_8", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pid", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_9", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_9", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_spectator", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_10", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_10", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_fully_contained", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_idx_rowsplits"}, "name": "t_idx_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_energy_rowsplits"}, "name": "t_energy_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pos_rowsplits"}, "name": "t_pos_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_time_rowsplits"}, "name": "t_time_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pid_rowsplits"}, "name": "t_pid_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_spectator_rowsplits"}, "name": "t_spectator_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_fully_contained_rowsplits"}, "name": "t_fully_contained_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_11", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_11", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_12", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_12", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_13", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_13", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_14", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_14", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_3", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_15", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_15", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_16", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_16", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_5", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_17", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_17", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_6", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_18", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_18", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_7", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_19", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_19", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_8", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_20", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_20", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_9", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_21", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_21", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_10", 0, 0, {}]]]}], "input_layers": [["recHitFeatures", 0, 0], ["recHitFeatures_rowsplits", 0, 0], ["t_idx", 0, 0], ["t_idx_rowsplits", 0, 0], ["t_energy", 0, 0], ["t_energy_rowsplits", 0, 0], ["t_pos", 0, 0], ["t_pos_rowsplits", 0, 0], ["t_time", 0, 0], ["t_time_rowsplits", 0, 0], ["t_pid", 0, 0], ["t_pid_rowsplits", 0, 0], ["t_spectator", 0, 0], ["t_spectator_rowsplits", 0, 0], ["t_fully_contained", 0, 0], ["t_fully_contained_rowsplits", 0, 0]], "output_layers": [["select_from_indices_11", 0, 0], ["select_from_indices_12", 0, 0], ["select_from_indices_13", 0, 0], ["select_from_indices_14", 0, 0], ["select_from_indices_15", 0, 0], ["select_from_indices_16", 0, 0], ["select_from_indices_17", 0, 0], ["select_from_indices_18", 0, 0], ["select_from_indices_19", 0, 0], ["select_from_indices_20", 0, 0], ["select_from_indices_21", 0, 0], ["neighbour_groups", 0, 2], ["noise_filter", 0, 2], ["noise_filter", 0, 3], ["t_idx", 0, 0], ["t_energy", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 3]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "recHitFeatures"}, "name": "recHitFeatures", "inbound_nodes": []}, {"class_name": "ProcessFeatures", "config": {"name": "process_features", "trainable": true, "dtype": "float32", "newformat": true}, "name": "process_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "recHitFeatures_rowsplits"}, "name": "recHitFeatures_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFeatures", "config": {"name": "select_features_1", "trainable": true, "dtype": "float32", "index_left": 5, "index_right": 8}, "name": "select_features_1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "SelectFeatures", "config": {"name": "select_features", "trainable": true, "dtype": "float32", "index_left": 0, "index_right": 1}, "name": "select_features", "inbound_nodes": [[["recHitFeatures", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_idx"}, "name": "t_idx", "inbound_nodes": []}, {"class_name": "CastRowSplits", "config": {"name": "cast_row_splits", "trainable": true, "dtype": "float32"}, "name": "cast_row_splits", "inbound_nodes": [[["recHitFeatures_rowsplits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_initial", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_initial", "inbound_nodes": [[["select_features_1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses1", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses1", "inbound_nodes": [[["pre_selection_initial", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt1", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt1", "inbound_nodes": [[["pre_selection_first_coordses1", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1", "inbound_nodes": [[["process_features", 0, 0, {}]]]}, {"class_name": "KNN", "config": {"name": "knn", "trainable": true, "dtype": "float32", "K": 24, "radius": 1}, "name": "knn", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "DistanceWeightedMessagePassing", "config": {"name": "pre_selection_first_coordsdmp1", "trainable": true, "dtype": "float32", "n_feature_transformation": [32, 32, 8, 8], "sumwnorm": false}, "name": "pre_selection_first_coordsdmp1", "inbound_nodes": [[["pre_selection_first_coordsdense1", 0, 0, {}], ["knn", 0, 0, {}], ["knn", 0, 1, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1b", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1b", "inbound_nodes": [[["pre_selection_first_coordsdmp1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense1c", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense1c", "inbound_nodes": [[["pre_selection_first_coordsdense1b", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense2", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense2", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_first_coordsdense3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_first_coordsdense3", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["pre_selection_first_coordsdense2", 0, 0, {}], ["pre_selection_first_coordsdense3", 0, 0, {}]]]}, {"class_name": "ScalarMultiply", "config": {"name": "scalar_multiply", "trainable": true, "dtype": "float32", "factor": 0.1}, "name": "scalar_multiply", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["pre_selection_first_coordsplt1", 0, 0, {}], ["scalar_multiply", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt3", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt3", "inbound_nodes": [[["add", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "ElementScaling", "config": {"name": "pre_selection_first_coordses2", "trainable": true, "dtype": "float32"}, "name": "pre_selection_first_coordses2", "inbound_nodes": [[["pre_selection_first_coordsplt3", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_first_coordsplt2", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_first_coordsplt2", "inbound_nodes": [[["pre_selection_first_coordses2", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "RecalcDistances", "config": {"name": "recalc_distances", "trainable": true, "dtype": "float32"}, "name": "recalc_distances", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "SortAndSelectNeighbours", "config": {"name": "sort_and_select_neighbours", "trainable": true, "dtype": "float32", "K": 16, "radius": -1.0, "sort": true}, "name": "sort_and_select_neighbours", "inbound_nodes": [[["recalc_distances", 0, 0, {}], ["knn", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed1", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed1", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}]]]}, {"class_name": "RemoveSelfRef", "config": {"name": "remove_self_ref", "trainable": true, "dtype": "float32"}, "name": "remove_self_ref", "inbound_nodes": [[["sort_and_select_neighbours", 0, 0, {}]]]}, {"class_name": "EdgeCreator", "config": {"name": "edge_creator", "trainable": true, "dtype": "float32", "addself": false}, "name": "edge_creator", "inbound_nodes": [[["sort_and_select_neighbours", 0, 1, {}], ["pre_selection_reduce_indices_ed1", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [15, 1]}}, "name": "reshape", "inbound_nodes": [[["remove_self_ref", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["edge_creator", 0, 0, {}], ["reshape", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed2", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed2", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_reduce_indices_ed3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_reduce_indices_ed3", "inbound_nodes": [[["pre_selection_reduce_indices_ed2", 0, 0, {}]]]}, {"class_name": "LLEdgeClassifier", "config": {"name": "ll_edge_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_edge_classifier", "inbound_nodes": [[["pre_selection_reduce_indices_ed3", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "EdgeSelector", "config": {"name": "edge_selector", "trainable": true, "dtype": "float32", "threshold": 0.5}, "name": "edge_selector", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["sort_and_select_neighbours", 0, 1, {}]]]}, {"class_name": "GroupScoreFromEdgeScores", "config": {"name": "group_score_from_edge_scores", "trainable": true, "dtype": "float32"}, "name": "group_score_from_edge_scores", "inbound_nodes": [[["ll_edge_classifier", 0, 0, {}], ["edge_selector", 0, 0, {}]]]}, {"class_name": "LLClusterCoordinates", "config": {"name": "ll_cluster_coordinates", "trainable": true, "dtype": "float32", "dynamic": true, "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": true, "return_lossval": false}, "name": "ll_cluster_coordinates", "inbound_nodes": [[["pre_selection_first_coordsplt2", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "NeighbourGroups", "config": {"name": "neighbour_groups", "trainable": true, "dtype": "float32", "purity_min_target": null, "efficiency_min_target": null, "thresh_viscosity": 0.01, "print_reduction": true, "threshold": 0.001, "return_backscatter": false}, "name": "neighbour_groups", "inbound_nodes": [[["group_score_from_edge_scores", 0, 0, {}], ["edge_selector", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_bef_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_bef_red", "inbound_nodes": [[["ll_cluster_coordinates", 0, 0, {}], ["select_features", 0, 0, {}], ["t_idx", 0, 0, {}], ["cast_row_splits", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_1", "trainable": true, "dtype": "float32", "mode": "mean"}, "name": "accumulate_neighbours_1", "inbound_nodes": [[["pre_selection_bef_red", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours_2", "trainable": true, "dtype": "float32", "mode": "sum"}, "name": "accumulate_neighbours_2", "inbound_nodes": [[["select_features", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "AccumulateNeighbours", "config": {"name": "accumulate_neighbours", "trainable": true, "dtype": "float32", "mode": "minmeanmax"}, "name": "accumulate_neighbours", "inbound_nodes": [[["pre_selection_first_coordsdense1c", 0, 0, {}], ["neighbour_groups", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_2", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_2", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_3", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_3", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours_2", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_4", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_4", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_idx", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_1", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_1", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["accumulate_neighbours", 0, 0, {}]]]}, {"class_name": "PlotCoordinates", "config": {"name": "pre_selection_after_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}, "name": "pre_selection_after_red", "inbound_nodes": [[["select_from_indices_2", 0, 0, {}], ["select_from_indices_3", 0, 0, {}], ["select_from_indices_4", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["select_from_indices_1", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "pre_selection_noisescore_d1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "pre_selection_noisescore_d1", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "LLNotNoiseClassifier", "config": {"name": "ll_not_noise_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}, "name": "ll_not_noise_classifier", "inbound_nodes": [[["pre_selection_noisescore_d1", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_energy"}, "name": "t_energy", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_pos"}, "name": "t_pos", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_time"}, "name": "t_time", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_pid"}, "name": "t_pid", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_spectator"}, "name": "t_spectator", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_fully_contained"}, "name": "t_fully_contained", "inbound_nodes": []}, {"class_name": "NoiseFilter", "config": {"name": "noise_filter", "trainable": true, "dtype": "float32", "threshold": 0.025, "print_reduction": true, "return_backscatter": true}, "name": "noise_filter", "inbound_nodes": [[["ll_not_noise_classifier", 0, 0, {}], ["neighbour_groups", 0, 3, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices", "trainable": true, "dtype": "float32"}, "name": "select_from_indices", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["recHitFeatures", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_5", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_5", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_energy", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_6", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_6", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pos", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_7", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_7", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_time", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_8", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_8", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_pid", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_9", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_9", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_spectator", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_10", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_10", "inbound_nodes": [[["neighbour_groups", 0, 1, {}], ["t_fully_contained", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_idx_rowsplits"}, "name": "t_idx_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_energy_rowsplits"}, "name": "t_energy_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pos_rowsplits"}, "name": "t_pos_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_time_rowsplits"}, "name": "t_time_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pid_rowsplits"}, "name": "t_pid_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_spectator_rowsplits"}, "name": "t_spectator_rowsplits", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_fully_contained_rowsplits"}, "name": "t_fully_contained_rowsplits", "inbound_nodes": []}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_11", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_11", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_12", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_12", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["pre_selection_after_red", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_13", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_13", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_1", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_14", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_14", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_3", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_15", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_15", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_4", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_16", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_16", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_5", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_17", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_17", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_6", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_18", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_18", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_7", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_19", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_19", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_8", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_20", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_20", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_9", 0, 0, {}]]]}, {"class_name": "SelectFromIndices", "config": {"name": "select_from_indices_21", "trainable": true, "dtype": "float32"}, "name": "select_from_indices_21", "inbound_nodes": [[["noise_filter", 0, 0, {}], ["select_from_indices_10", 0, 0, {}]]]}], "input_layers": [["recHitFeatures", 0, 0], ["recHitFeatures_rowsplits", 0, 0], ["t_idx", 0, 0], ["t_idx_rowsplits", 0, 0], ["t_energy", 0, 0], ["t_energy_rowsplits", 0, 0], ["t_pos", 0, 0], ["t_pos_rowsplits", 0, 0], ["t_time", 0, 0], ["t_time_rowsplits", 0, 0], ["t_pid", 0, 0], ["t_pid_rowsplits", 0, 0], ["t_spectator", 0, 0], ["t_spectator_rowsplits", 0, 0], ["t_fully_contained", 0, 0], ["t_fully_contained_rowsplits", 0, 0]], "output_layers": [["select_from_indices_11", 0, 0], ["select_from_indices_12", 0, 0], ["select_from_indices_13", 0, 0], ["select_from_indices_14", 0, 0], ["select_from_indices_15", 0, 0], ["select_from_indices_16", 0, 0], ["select_from_indices_17", 0, 0], ["select_from_indices_18", 0, 0], ["select_from_indices_19", 0, 0], ["select_from_indices_20", 0, 0], ["select_from_indices_21", 0, 0], ["neighbour_groups", 0, 2], ["noise_filter", 0, 2], ["noise_filter", 0, 3], ["t_idx", 0, 0], ["t_energy", 0, 0]]}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate^m�_m�`m�cm�dm�em�fm�gm�hm�im�jm�km�lm�mm�nm�om�um�vm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�^v�_v�`v�cv�dv�ev�fv�gv�hv�iv�jv�kv�lv�mv�nv�ov�uv�vv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
"
signature_map
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "recHitFeatures", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "recHitFeatures"}}
�"�
_tf_keras_layer�{"class_name": "ProcessFeatures", "name": "process_features", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "process_features", "trainable": true, "dtype": "float32", "newformat": true}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "recHitFeatures_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "recHitFeatures_rowsplits"}}
�"�
_tf_keras_layer�{"class_name": "SelectFeatures", "name": "select_features_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_features_1", "trainable": true, "dtype": "float32", "index_left": 5, "index_right": 8}}
�"�
_tf_keras_layer�{"class_name": "SelectFeatures", "name": "select_features", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_features", "trainable": true, "dtype": "float32", "index_left": 0, "index_right": 1}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_idx", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_idx"}}
�"�
_tf_keras_layer�{"class_name": "CastRowSplits", "name": "cast_row_splits", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "cast_row_splits", "trainable": true, "dtype": "float32"}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_initial", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_initial", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�

^scales"�
_tf_keras_layer�{"class_name": "ElementScaling", "name": "pre_selection_first_coordses1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordses1", "trainable": true, "dtype": "float32"}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_first_coordsplt1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsplt1", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�

_kernel
`bias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_first_coordsdense1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdense1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�"�
_tf_keras_layer�{"class_name": "KNN", "name": "knn", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "knn", "trainable": true, "dtype": "float32", "K": 24, "radius": 1}}
�
an_feature_transformation
bfeature_tranformation_dense"�
_tf_keras_layer�{"class_name": "DistanceWeightedMessagePassing", "name": "pre_selection_first_coordsdmp1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdmp1", "trainable": true, "dtype": "float32", "n_feature_transformation": [32, 32, 8, 8], "sumwnorm": false}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null, 25]}, {"class_name": "TensorShape", "items": [null, 25]}]}
�

ckernel
dbias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_first_coordsdense1b", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdense1b", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 192}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192]}}
�

ekernel
fbias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_first_coordsdense1c", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdense1c", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�

gkernel"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_first_coordsdense2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdense2", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�

hkernel"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_first_coordsdense3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsdense3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 2]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�"�
_tf_keras_layer�{"class_name": "ScalarMultiply", "name": "scalar_multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "scalar_multiply", "trainable": true, "dtype": "float32", "factor": 0.1}}
�"�
_tf_keras_layer�{"class_name": "Add", "name": "add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 3]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_first_coordsplt3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsplt3", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�

iscales"�
_tf_keras_layer�{"class_name": "ElementScaling", "name": "pre_selection_first_coordses2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordses2", "trainable": true, "dtype": "float32"}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_first_coordsplt2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_first_coordsplt2", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�"�
_tf_keras_layer�{"class_name": "RecalcDistances", "name": "recalc_distances", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "recalc_distances", "trainable": true, "dtype": "float32"}}
�"�
_tf_keras_layer�{"class_name": "SortAndSelectNeighbours", "name": "sort_and_select_neighbours", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "sort_and_select_neighbours", "trainable": true, "dtype": "float32", "K": 16, "radius": -1.0, "sort": true}}
�

jkernel
kbias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_reduce_indices_ed1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_reduce_indices_ed1", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�"�
_tf_keras_layer�{"class_name": "RemoveSelfRef", "name": "remove_self_ref", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "remove_self_ref", "trainable": true, "dtype": "float32"}}
�"�
_tf_keras_layer�{"class_name": "EdgeCreator", "name": "edge_creator", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "edge_creator", "trainable": true, "dtype": "float32", "addself": false}}
�"�
_tf_keras_layer�{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [15, 1]}}}
�"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 15, 6]}, {"class_name": "TensorShape", "items": [null, 15, 1]}]}
�

lkernel
mbias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_reduce_indices_ed2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_reduce_indices_ed2", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 7]}}
�

nkernel
obias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_reduce_indices_ed3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_reduce_indices_ed3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 4]}}
�"�
_tf_keras_layer�{"class_name": "LLEdgeClassifier", "name": "ll_edge_classifier", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ll_edge_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}}
�"�
_tf_keras_layer�{"class_name": "EdgeSelector", "name": "edge_selector", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "edge_selector", "trainable": true, "dtype": "float32", "threshold": 0.5}}
�"�
_tf_keras_layer�{"class_name": "GroupScoreFromEdgeScores", "name": "group_score_from_edge_scores", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "group_score_from_edge_scores", "trainable": true, "dtype": "float32"}}
�"�
_tf_keras_layer�{"class_name": "LLClusterCoordinates", "name": "ll_cluster_coordinates", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ll_cluster_coordinates", "trainable": true, "dtype": "float32", "dynamic": true, "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": true, "return_lossval": false}}
�
p	threshold"�
_tf_keras_layer�{"class_name": "NeighbourGroups", "name": "neighbour_groups", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "neighbour_groups", "trainable": true, "dtype": "float32", "purity_min_target": null, "efficiency_min_target": null, "thresh_viscosity": 0.01, "print_reduction": true, "threshold": 0.001, "return_backscatter": false}}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_bef_red", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_bef_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�"�
_tf_keras_layer�{"class_name": "AccumulateNeighbours", "name": "accumulate_neighbours_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "accumulate_neighbours_1", "trainable": true, "dtype": "float32", "mode": "mean"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 3]}, {"class_name": "TensorShape", "items": [null, 16]}]}
�"�
_tf_keras_layer�{"class_name": "AccumulateNeighbours", "name": "accumulate_neighbours_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "accumulate_neighbours_2", "trainable": true, "dtype": "float32", "mode": "sum"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 16]}]}
�"�
_tf_keras_layer�{"class_name": "AccumulateNeighbours", "name": "accumulate_neighbours", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "accumulate_neighbours", "trainable": true, "dtype": "float32", "mode": "minmeanmax"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null, 16]}]}
�
q	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_2", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�
r	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_3", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
s	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_4", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
t	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_1", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 96]}]}
�"�
_tf_keras_layer�{"class_name": "PlotCoordinates", "name": "pre_selection_after_red", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_after_red", "trainable": true, "dtype": "float32", "plot_every": 1500, "outdir": "/mnt/home/jkieseler/HGCalML_trainout/Nov2021/pretrain_full_selection//intplots"}}
�"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 96]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�

ukernel
vbias"�
_tf_keras_layer�{"class_name": "Dense", "name": "pre_selection_noisescore_d1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pre_selection_noisescore_d1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 99}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 99]}}
�"�
_tf_keras_layer�{"class_name": "LLNotNoiseClassifier", "name": "ll_not_noise_classifier", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ll_not_noise_classifier", "trainable": true, "dtype": "float32", "active": true, "scale": 1.0, "print_loss": true, "print_batch_time": false, "return_lossval": false}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_energy", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_energy"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_pos", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_pos"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_time", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_time"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_pid", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "t_pid"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_spectator", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_spectator"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_fully_contained", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "t_fully_contained"}}
�"�
_tf_keras_layer�{"class_name": "NoiseFilter", "name": "noise_filter", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "noise_filter", "trainable": true, "dtype": "float32", "threshold": 0.025, "print_reduction": true, "return_backscatter": true}}
�
w	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 10]}]}
�
x	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_5", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
y	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_6", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�
z	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_7", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
{	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_8", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
|	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_9", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
}	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_10", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_idx_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_idx_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_energy_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_energy_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_pos_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pos_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_time_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_time_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_pid_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_pid_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_spectator_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_spectator_rowsplits"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "t_fully_contained_rowsplits", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "t_fully_contained_rowsplits"}}
�
~	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_11", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 10]}]}
�
	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_12", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_13", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 96]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_14", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_15", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_16", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_17", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 3]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_18", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_19", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_20", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
�
�	outshapes"�
_tf_keras_layer�{"class_name": "SelectFromIndices", "name": "select_from_indices_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "select_from_indices_21", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null]}, {"class_name": "TensorShape", "items": [null, 1]}]}
 "
trackable_dict_wrapper
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:42$pre_selection_first_coordses1/scales
9:7
 2'pre_selection_first_coordsdense1/kernel
3:1 2%pre_selection_first_coordsdense1/bias
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
;:9	�@2(pre_selection_first_coordsdense1b/kernel
4:2@2&pre_selection_first_coordsdense1b/bias
::8@ 2(pre_selection_first_coordsdense1c/kernel
4:2 2&pre_selection_first_coordsdense1c/bias
9:7 2'pre_selection_first_coordsdense2/kernel
9:7 2'pre_selection_first_coordsdense3/kernel
6:42$pre_selection_first_coordses2/scales
9:7 2'pre_selection_reduce_indices_ed1/kernel
3:12%pre_selection_reduce_indices_ed1/bias
9:72'pre_selection_reduce_indices_ed2/kernel
3:12%pre_selection_reduce_indices_ed2/bias
9:72'pre_selection_reduce_indices_ed3/kernel
3:12%pre_selection_reduce_indices_ed3/bias
#:! 2neighbour_groups/1/Variable
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
4:2c2"pre_selection_noisescore_d1/kernel
.:,2 pre_selection_noisescore_d1/bias
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�kernel
	�bias"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}}
�
�kernel
	�bias"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
�
�kernel
	�bias"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
�
�kernel
	�bias"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Z:X  2Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel
T:R 2Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias
Z:X@ 2Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel
T:R 2Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias
Z:X@2Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel
T:R2Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias
Z:X2Hpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel
T:R2Fpre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias
;:92+Adam/pre_selection_first_coordses1/scales/m
>:<
 2.Adam/pre_selection_first_coordsdense1/kernel/m
8:6 2,Adam/pre_selection_first_coordsdense1/bias/m
@:>	�@2/Adam/pre_selection_first_coordsdense1b/kernel/m
9:7@2-Adam/pre_selection_first_coordsdense1b/bias/m
?:=@ 2/Adam/pre_selection_first_coordsdense1c/kernel/m
9:7 2-Adam/pre_selection_first_coordsdense1c/bias/m
>:< 2.Adam/pre_selection_first_coordsdense2/kernel/m
>:< 2.Adam/pre_selection_first_coordsdense3/kernel/m
;:92+Adam/pre_selection_first_coordses2/scales/m
>:< 2.Adam/pre_selection_reduce_indices_ed1/kernel/m
8:62,Adam/pre_selection_reduce_indices_ed1/bias/m
>:<2.Adam/pre_selection_reduce_indices_ed2/kernel/m
8:62,Adam/pre_selection_reduce_indices_ed2/bias/m
>:<2.Adam/pre_selection_reduce_indices_ed3/kernel/m
8:62,Adam/pre_selection_reduce_indices_ed3/bias/m
9:7c2)Adam/pre_selection_noisescore_d1/kernel/m
3:12'Adam/pre_selection_noisescore_d1/bias/m
_:]  2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/m
Y:W 2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/m
_:]@ 2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/m
Y:W 2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/m
_:]@2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/m
Y:W2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/m
_:]2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/m
Y:W2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/m
;:92+Adam/pre_selection_first_coordses1/scales/v
>:<
 2.Adam/pre_selection_first_coordsdense1/kernel/v
8:6 2,Adam/pre_selection_first_coordsdense1/bias/v
@:>	�@2/Adam/pre_selection_first_coordsdense1b/kernel/v
9:7@2-Adam/pre_selection_first_coordsdense1b/bias/v
?:=@ 2/Adam/pre_selection_first_coordsdense1c/kernel/v
9:7 2-Adam/pre_selection_first_coordsdense1c/bias/v
>:< 2.Adam/pre_selection_first_coordsdense2/kernel/v
>:< 2.Adam/pre_selection_first_coordsdense3/kernel/v
;:92+Adam/pre_selection_first_coordses2/scales/v
>:< 2.Adam/pre_selection_reduce_indices_ed1/kernel/v
8:62,Adam/pre_selection_reduce_indices_ed1/bias/v
>:<2.Adam/pre_selection_reduce_indices_ed2/kernel/v
8:62,Adam/pre_selection_reduce_indices_ed2/bias/v
>:<2.Adam/pre_selection_reduce_indices_ed3/kernel/v
8:62,Adam/pre_selection_reduce_indices_ed3/bias/v
9:7c2)Adam/pre_selection_noisescore_d1/kernel/v
3:12'Adam/pre_selection_noisescore_d1/bias/v
_:]  2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/kernel/v
Y:W 2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/0/bias/v
_:]@ 2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/kernel/v
Y:W 2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/1/bias/v
_:]@2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/kernel/v
Y:W2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/2/bias/v
_:]2OAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/kernel/v
Y:W2MAdam/pre_selection_first_coordsdmp1/pre_selection_first_coordsdmp1/5/3/bias/v