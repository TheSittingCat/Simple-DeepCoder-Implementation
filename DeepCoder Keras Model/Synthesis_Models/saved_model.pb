Ŧ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??

?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	?@*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
??*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:?*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
??*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:?*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?"*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	?"*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:"*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:"*
dtype0
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
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*.
shared_nameAdam/embedding_1/embeddings/m
?
1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_6/kernel/m
?
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?"*&
shared_nameAdam/dense_7/kernel/m
?
)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes
:	?"*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:"*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:"*
dtype0
?
Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*.
shared_nameAdam/embedding_1/embeddings/v
?
1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_6/kernel/v
?
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?"*&
shared_nameAdam/dense_7/kernel/v
?
)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes
:	?"*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:"*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:"*
dtype0

NoOpNoOp
?;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?: B?:
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

 kernel
!bias
"trainable_variables
#	variables
$regularization_losses
%	keras_api
h

&kernel
'bias
(trainable_variables
)	variables
*regularization_losses
+	keras_api
R
,trainable_variables
-	variables
.regularization_losses
/	keras_api
R
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
?
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmy mz!m{&m|'m}4m~5mv?v?v? v?!v?&v?'v?4v?5v?
?
0
1
2
 3
!4
&5
'6
47
58
?
0
1
2
 3
!4
&5
'6
47
58
 
?
?layer_regularization_losses
@non_trainable_variables
trainable_variables
Alayer_metrics

Blayers
	variables
Cmetrics
regularization_losses
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
Dlayer_regularization_losses
Enon_trainable_variables
trainable_variables
Flayer_metrics

Glayers
	variables
Hmetrics
regularization_losses
 
 
 
?
Ilayer_regularization_losses
Jnon_trainable_variables
trainable_variables
Klayer_metrics

Llayers
	variables
Mmetrics
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Nlayer_regularization_losses
Onon_trainable_variables
trainable_variables
Player_metrics

Qlayers
	variables
Rmetrics
regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
Slayer_regularization_losses
Tnon_trainable_variables
"trainable_variables
Ulayer_metrics

Vlayers
#	variables
Wmetrics
$regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1

&0
'1
 
?
Xlayer_regularization_losses
Ynon_trainable_variables
(trainable_variables
Zlayer_metrics

[layers
)	variables
\metrics
*regularization_losses
 
 
 
?
]layer_regularization_losses
^non_trainable_variables
,trainable_variables
_layer_metrics

`layers
-	variables
ametrics
.regularization_losses
 
 
 
?
blayer_regularization_losses
cnon_trainable_variables
0trainable_variables
dlayer_metrics

elayers
1	variables
fmetrics
2regularization_losses
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
glayer_regularization_losses
hnon_trainable_variables
6trainable_variables
ilayer_metrics

jlayers
7	variables
kmetrics
8regularization_losses
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
 
 
 
F
0
1
2
3
4
5
6
7
	8

9

l0
m1
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
4
	ntotal
	ocount
p	variables
q	keras_api
D
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

u	variables
??
VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_3Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
|
serving_default_input_4Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_input_4embedding_1/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference_signature_wrapper_8129
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
GPU2*0J 8? *&
f!R
__inference__traced_save_8710
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/embedding_1/embeddings/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*0
Tin)
'2%*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_restore_8828??	
ő
?
A__inference_model_1_layer_call_and_return_conditional_losses_8287
inputs_0
inputs_14
!embedding_1_embedding_lookup_8182:	?@=
)dense_4_tensordot_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?=
)dense_5_tensordot_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?=
)dense_6_tensordot_readvariableop_resource:
??6
'dense_6_biasadd_readvariableop_resource:	?9
&dense_7_matmul_readvariableop_resource:	?"5
'dense_7_biasadd_readvariableop_resource:"
identity??dense_4/BiasAdd/ReadVariableOp? dense_4/Tensordot/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding_1/embedding_lookup?embedding_1/embedding_lookup_1x
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_8182embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/8182*,
_output_shapes
:??????????@*
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/8182*,
_output_shapes
:??????????@2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2)
'embedding_1/embedding_lookup/Identity_1|
embedding_1/Cast_1Castinputs_1*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast_1?
embedding_1/embedding_lookup_1ResourceGather!embedding_1_embedding_lookup_8182embedding_1/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/8182*,
_output_shapes
:??????????@*
dtype02 
embedding_1/embedding_lookup_1?
'embedding_1/embedding_lookup_1/IdentityIdentity'embedding_1/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/8182*,
_output_shapes
:??????????@2)
'embedding_1/embedding_lookup_1/Identity?
)embedding_1/embedding_lookup_1/Identity_1Identity0embedding_1/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????@2+
)embedding_1/embedding_lookup_1/Identity_1x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV20embedding_1/embedding_lookup/Identity_1:output:02embedding_1/embedding_lookup_1/Identity_1:output:0"concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:???????????2
concatenate_1/concat?
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes?
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free
dense_4/Tensordot/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape?
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis?
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2?
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis?
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const?
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod?
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1?
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1?
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis?
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat?
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack?
dense_4/Tensordot/transpose	Transposeconcatenate_1/concat:output:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Tensordot/transpose?
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_4/Tensordot/Reshape?
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/Tensordot/MatMul?
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_4/Tensordot/Const_2?
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis?
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1?
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Tensordot?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_4/BiasAddv
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Relu?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_5/Tensordot/ReadVariableOpz
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_5/Tensordot/axes?
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_5/Tensordot/free|
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dense_5/Tensordot/Shape?
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/GatherV2/axis?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2?
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_5/Tensordot/GatherV2_1/axis?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2_1|
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod?
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_1?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod_1?
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_5/Tensordot/concat/axis?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/stack?
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Tensordot/transpose?
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_5/Tensordot/Reshape?
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/Tensordot/MatMul?
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_5/Tensordot/Const_2?
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/concat_1/axis?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat_1?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Tensordot?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_5/BiasAddv
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Relu?
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_6/Tensordot/ReadVariableOpz
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_6/Tensordot/axes?
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_6/Tensordot/free|
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2
dense_6/Tensordot/Shape?
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_6/Tensordot/GatherV2/axis?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_6/Tensordot/GatherV2?
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_6/Tensordot/GatherV2_1/axis?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_6/Tensordot/GatherV2_1|
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_6/Tensordot/Const?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_6/Tensordot/Prod?
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_6/Tensordot/Const_1?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_6/Tensordot/Prod_1?
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_6/Tensordot/concat/axis?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/concat?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/stack?
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Tensordot/transpose?
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_6/Tensordot/Reshape?
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/Tensordot/MatMul?
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_6/Tensordot/Const_2?
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_6/Tensordot/concat_1/axis?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/concat_1?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Tensordot?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_6/BiasAddv
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Relu?
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_1/Max/reduction_indices?
global_max_pooling1d_1/MaxMaxdense_6/Relu:activations:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_max_pooling1d_1/Maxs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshape#global_max_pooling1d_1/Max:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?"*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulflatten_1/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:"*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????"2
dense_7/Sigmoid?
IdentityIdentitydense_7/Sigmoid:y:0^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding_1/embedding_lookup^embedding_1/embedding_lookup_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2@
embedding_1/embedding_lookup_1embedding_1/embedding_lookup_1:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
&__inference_dense_7_layer_call_fn_8567

inputs
unknown:	?"
	unknown_0:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_78372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_4_layer_call_fn_8436

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_77372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?!
?
A__inference_dense_5_layer_call_and_return_conditional_losses_8507

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?+
?
A__inference_model_1_layer_call_and_return_conditional_losses_7986

inputs
inputs_1#
embedding_1_7957:	?@ 
dense_4_7963:
??
dense_4_7965:	? 
dense_5_7968:
??
dense_5_7970:	? 
dense_6_7973:
??
dense_6_7975:	?
dense_7_7980:	?"
dense_7_7982:"
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?%embedding_1/StatefulPartitionedCall_1?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_7957*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912%
#embedding_1/StatefulPartitionedCall?
%embedding_1/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_1_7957*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912'
%embedding_1/StatefulPartitionedCall_1?
concatenate_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0.embedding_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_77042
concatenate_1/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_7963dense_4_7965*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_77372!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_7968dense_5_7970*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_77742!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_7973dense_6_7975*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_78112!
dense_6/StatefulPartitionedCall?
&global_max_pooling1d_1/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_76662(
&global_max_pooling1d_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_78242
flatten_1/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_7_7980dense_7_7982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_78372!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall&^embedding_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%embedding_1/StatefulPartitionedCall_1%embedding_1/StatefulPartitionedCall_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
G__inference_concatenate_1_layer_call_and_return_conditional_losses_8427
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*-
_output_shapes
:???????????2
concati
IdentityIdentityconcat:output:0*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????@:??????????@:V R
,
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?+
?
A__inference_model_1_layer_call_and_return_conditional_losses_8097
input_4
input_3#
embedding_1_8068:	?@ 
dense_4_8074:
??
dense_4_8076:	? 
dense_5_8079:
??
dense_5_8081:	? 
dense_6_8084:
??
dense_6_8086:	?
dense_7_8091:	?"
dense_7_8093:"
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?%embedding_1/StatefulPartitionedCall_1?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_4embedding_1_8068*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912%
#embedding_1/StatefulPartitionedCall?
%embedding_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_3embedding_1_8068*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912'
%embedding_1/StatefulPartitionedCall_1?
concatenate_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0.embedding_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_77042
concatenate_1/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_8074dense_4_8076*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_77372!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_8079dense_5_8081*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_77742!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_8084dense_6_8086*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_78112!
dense_6/StatefulPartitionedCall?
&global_max_pooling1d_1/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_76662(
&global_max_pooling1d_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_78242
flatten_1/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_7_8091dense_7_8093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_78372!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall&^embedding_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%embedding_1/StatefulPartitionedCall_1%embedding_1/StatefulPartitionedCall_1:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
??
?
__inference__wrapped_model_7659
input_4
input_3<
)model_1_embedding_1_embedding_lookup_7554:	?@E
1model_1_dense_4_tensordot_readvariableop_resource:
??>
/model_1_dense_4_biasadd_readvariableop_resource:	?E
1model_1_dense_5_tensordot_readvariableop_resource:
??>
/model_1_dense_5_biasadd_readvariableop_resource:	?E
1model_1_dense_6_tensordot_readvariableop_resource:
??>
/model_1_dense_6_biasadd_readvariableop_resource:	?A
.model_1_dense_7_matmul_readvariableop_resource:	?"=
/model_1_dense_7_biasadd_readvariableop_resource:"
identity??&model_1/dense_4/BiasAdd/ReadVariableOp?(model_1/dense_4/Tensordot/ReadVariableOp?&model_1/dense_5/BiasAdd/ReadVariableOp?(model_1/dense_5/Tensordot/ReadVariableOp?&model_1/dense_6/BiasAdd/ReadVariableOp?(model_1/dense_6/Tensordot/ReadVariableOp?&model_1/dense_7/BiasAdd/ReadVariableOp?%model_1/dense_7/MatMul/ReadVariableOp?$model_1/embedding_1/embedding_lookup?&model_1/embedding_1/embedding_lookup_1?
model_1/embedding_1/CastCastinput_4*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_1/embedding_1/Cast?
$model_1/embedding_1/embedding_lookupResourceGather)model_1_embedding_1_embedding_lookup_7554model_1/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/7554*,
_output_shapes
:??????????@*
dtype02&
$model_1/embedding_1/embedding_lookup?
-model_1/embedding_1/embedding_lookup/IdentityIdentity-model_1/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/7554*,
_output_shapes
:??????????@2/
-model_1/embedding_1/embedding_lookup/Identity?
/model_1/embedding_1/embedding_lookup/Identity_1Identity6model_1/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@21
/model_1/embedding_1/embedding_lookup/Identity_1?
model_1/embedding_1/Cast_1Castinput_3*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_1/embedding_1/Cast_1?
&model_1/embedding_1/embedding_lookup_1ResourceGather)model_1_embedding_1_embedding_lookup_7554model_1/embedding_1/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/7554*,
_output_shapes
:??????????@*
dtype02(
&model_1/embedding_1/embedding_lookup_1?
/model_1/embedding_1/embedding_lookup_1/IdentityIdentity/model_1/embedding_1/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@model_1/embedding_1/embedding_lookup/7554*,
_output_shapes
:??????????@21
/model_1/embedding_1/embedding_lookup_1/Identity?
1model_1/embedding_1/embedding_lookup_1/Identity_1Identity8model_1/embedding_1/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????@23
1model_1/embedding_1/embedding_lookup_1/Identity_1?
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_1/concatenate_1/concat/axis?
model_1/concatenate_1/concatConcatV28model_1/embedding_1/embedding_lookup/Identity_1:output:0:model_1/embedding_1/embedding_lookup_1/Identity_1:output:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:???????????2
model_1/concatenate_1/concat?
(model_1/dense_4/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_1/dense_4/Tensordot/ReadVariableOp?
model_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/dense_4/Tensordot/axes?
model_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/dense_4/Tensordot/free?
model_1/dense_4/Tensordot/ShapeShape%model_1/concatenate_1/concat:output:0*
T0*
_output_shapes
:2!
model_1/dense_4/Tensordot/Shape?
'model_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_4/Tensordot/GatherV2/axis?
"model_1/dense_4/Tensordot/GatherV2GatherV2(model_1/dense_4/Tensordot/Shape:output:0'model_1/dense_4/Tensordot/free:output:00model_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/dense_4/Tensordot/GatherV2?
)model_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/dense_4/Tensordot/GatherV2_1/axis?
$model_1/dense_4/Tensordot/GatherV2_1GatherV2(model_1/dense_4/Tensordot/Shape:output:0'model_1/dense_4/Tensordot/axes:output:02model_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/dense_4/Tensordot/GatherV2_1?
model_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/dense_4/Tensordot/Const?
model_1/dense_4/Tensordot/ProdProd+model_1/dense_4/Tensordot/GatherV2:output:0(model_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/dense_4/Tensordot/Prod?
!model_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/dense_4/Tensordot/Const_1?
 model_1/dense_4/Tensordot/Prod_1Prod-model_1/dense_4/Tensordot/GatherV2_1:output:0*model_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/dense_4/Tensordot/Prod_1?
%model_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/dense_4/Tensordot/concat/axis?
 model_1/dense_4/Tensordot/concatConcatV2'model_1/dense_4/Tensordot/free:output:0'model_1/dense_4/Tensordot/axes:output:0.model_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/dense_4/Tensordot/concat?
model_1/dense_4/Tensordot/stackPack'model_1/dense_4/Tensordot/Prod:output:0)model_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/dense_4/Tensordot/stack?
#model_1/dense_4/Tensordot/transpose	Transpose%model_1/concatenate_1/concat:output:0)model_1/dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2%
#model_1/dense_4/Tensordot/transpose?
!model_1/dense_4/Tensordot/ReshapeReshape'model_1/dense_4/Tensordot/transpose:y:0(model_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!model_1/dense_4/Tensordot/Reshape?
 model_1/dense_4/Tensordot/MatMulMatMul*model_1/dense_4/Tensordot/Reshape:output:00model_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 model_1/dense_4/Tensordot/MatMul?
!model_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2#
!model_1/dense_4/Tensordot/Const_2?
'model_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_4/Tensordot/concat_1/axis?
"model_1/dense_4/Tensordot/concat_1ConcatV2+model_1/dense_4/Tensordot/GatherV2:output:0*model_1/dense_4/Tensordot/Const_2:output:00model_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/dense_4/Tensordot/concat_1?
model_1/dense_4/TensordotReshape*model_1/dense_4/Tensordot/MatMul:product:0+model_1/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_4/Tensordot?
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_1/dense_4/BiasAdd/ReadVariableOp?
model_1/dense_4/BiasAddBiasAdd"model_1/dense_4/Tensordot:output:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/dense_4/BiasAdd?
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_4/Relu?
(model_1/dense_5/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_1/dense_5/Tensordot/ReadVariableOp?
model_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/dense_5/Tensordot/axes?
model_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/dense_5/Tensordot/free?
model_1/dense_5/Tensordot/ShapeShape"model_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2!
model_1/dense_5/Tensordot/Shape?
'model_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_5/Tensordot/GatherV2/axis?
"model_1/dense_5/Tensordot/GatherV2GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/free:output:00model_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/dense_5/Tensordot/GatherV2?
)model_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/dense_5/Tensordot/GatherV2_1/axis?
$model_1/dense_5/Tensordot/GatherV2_1GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/axes:output:02model_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/dense_5/Tensordot/GatherV2_1?
model_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/dense_5/Tensordot/Const?
model_1/dense_5/Tensordot/ProdProd+model_1/dense_5/Tensordot/GatherV2:output:0(model_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/dense_5/Tensordot/Prod?
!model_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/dense_5/Tensordot/Const_1?
 model_1/dense_5/Tensordot/Prod_1Prod-model_1/dense_5/Tensordot/GatherV2_1:output:0*model_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/dense_5/Tensordot/Prod_1?
%model_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/dense_5/Tensordot/concat/axis?
 model_1/dense_5/Tensordot/concatConcatV2'model_1/dense_5/Tensordot/free:output:0'model_1/dense_5/Tensordot/axes:output:0.model_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/dense_5/Tensordot/concat?
model_1/dense_5/Tensordot/stackPack'model_1/dense_5/Tensordot/Prod:output:0)model_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/dense_5/Tensordot/stack?
#model_1/dense_5/Tensordot/transpose	Transpose"model_1/dense_4/Relu:activations:0)model_1/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2%
#model_1/dense_5/Tensordot/transpose?
!model_1/dense_5/Tensordot/ReshapeReshape'model_1/dense_5/Tensordot/transpose:y:0(model_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!model_1/dense_5/Tensordot/Reshape?
 model_1/dense_5/Tensordot/MatMulMatMul*model_1/dense_5/Tensordot/Reshape:output:00model_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 model_1/dense_5/Tensordot/MatMul?
!model_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2#
!model_1/dense_5/Tensordot/Const_2?
'model_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_5/Tensordot/concat_1/axis?
"model_1/dense_5/Tensordot/concat_1ConcatV2+model_1/dense_5/Tensordot/GatherV2:output:0*model_1/dense_5/Tensordot/Const_2:output:00model_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/dense_5/Tensordot/concat_1?
model_1/dense_5/TensordotReshape*model_1/dense_5/Tensordot/MatMul:product:0+model_1/dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_5/Tensordot?
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_1/dense_5/BiasAdd/ReadVariableOp?
model_1/dense_5/BiasAddBiasAdd"model_1/dense_5/Tensordot:output:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/dense_5/BiasAdd?
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_5/Relu?
(model_1/dense_6/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_1/dense_6/Tensordot/ReadVariableOp?
model_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/dense_6/Tensordot/axes?
model_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/dense_6/Tensordot/free?
model_1/dense_6/Tensordot/ShapeShape"model_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:2!
model_1/dense_6/Tensordot/Shape?
'model_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_6/Tensordot/GatherV2/axis?
"model_1/dense_6/Tensordot/GatherV2GatherV2(model_1/dense_6/Tensordot/Shape:output:0'model_1/dense_6/Tensordot/free:output:00model_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/dense_6/Tensordot/GatherV2?
)model_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/dense_6/Tensordot/GatherV2_1/axis?
$model_1/dense_6/Tensordot/GatherV2_1GatherV2(model_1/dense_6/Tensordot/Shape:output:0'model_1/dense_6/Tensordot/axes:output:02model_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/dense_6/Tensordot/GatherV2_1?
model_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/dense_6/Tensordot/Const?
model_1/dense_6/Tensordot/ProdProd+model_1/dense_6/Tensordot/GatherV2:output:0(model_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/dense_6/Tensordot/Prod?
!model_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/dense_6/Tensordot/Const_1?
 model_1/dense_6/Tensordot/Prod_1Prod-model_1/dense_6/Tensordot/GatherV2_1:output:0*model_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/dense_6/Tensordot/Prod_1?
%model_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/dense_6/Tensordot/concat/axis?
 model_1/dense_6/Tensordot/concatConcatV2'model_1/dense_6/Tensordot/free:output:0'model_1/dense_6/Tensordot/axes:output:0.model_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/dense_6/Tensordot/concat?
model_1/dense_6/Tensordot/stackPack'model_1/dense_6/Tensordot/Prod:output:0)model_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/dense_6/Tensordot/stack?
#model_1/dense_6/Tensordot/transpose	Transpose"model_1/dense_5/Relu:activations:0)model_1/dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2%
#model_1/dense_6/Tensordot/transpose?
!model_1/dense_6/Tensordot/ReshapeReshape'model_1/dense_6/Tensordot/transpose:y:0(model_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!model_1/dense_6/Tensordot/Reshape?
 model_1/dense_6/Tensordot/MatMulMatMul*model_1/dense_6/Tensordot/Reshape:output:00model_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 model_1/dense_6/Tensordot/MatMul?
!model_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2#
!model_1/dense_6/Tensordot/Const_2?
'model_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_6/Tensordot/concat_1/axis?
"model_1/dense_6/Tensordot/concat_1ConcatV2+model_1/dense_6/Tensordot/GatherV2:output:0*model_1/dense_6/Tensordot/Const_2:output:00model_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/dense_6/Tensordot/concat_1?
model_1/dense_6/TensordotReshape*model_1/dense_6/Tensordot/MatMul:product:0+model_1/dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_6/Tensordot?
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_1/dense_6/BiasAdd/ReadVariableOp?
model_1/dense_6/BiasAddBiasAdd"model_1/dense_6/Tensordot:output:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/dense_6/BiasAdd?
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
model_1/dense_6/Relu?
4model_1/global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :26
4model_1/global_max_pooling1d_1/Max/reduction_indices?
"model_1/global_max_pooling1d_1/MaxMax"model_1/dense_6/Relu:activations:0=model_1/global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2$
"model_1/global_max_pooling1d_1/Max?
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_1/flatten_1/Const?
model_1/flatten_1/ReshapeReshape+model_1/global_max_pooling1d_1/Max:output:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model_1/flatten_1/Reshape?
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes
:	?"*
dtype02'
%model_1/dense_7/MatMul/ReadVariableOp?
model_1/dense_7/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
model_1/dense_7/MatMul?
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:"*
dtype02(
&model_1/dense_7/BiasAdd/ReadVariableOp?
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
model_1/dense_7/BiasAdd?
model_1/dense_7/SigmoidSigmoid model_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????"2
model_1/dense_7/Sigmoid?
IdentityIdentitymodel_1/dense_7/Sigmoid:y:0'^model_1/dense_4/BiasAdd/ReadVariableOp)^model_1/dense_4/Tensordot/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp)^model_1/dense_5/Tensordot/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp)^model_1/dense_6/Tensordot/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp%^model_1/embedding_1/embedding_lookup'^model_1/embedding_1/embedding_lookup_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2T
(model_1/dense_4/Tensordot/ReadVariableOp(model_1/dense_4/Tensordot/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2T
(model_1/dense_5/Tensordot/ReadVariableOp(model_1/dense_5/Tensordot/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2T
(model_1/dense_6/Tensordot/ReadVariableOp(model_1/dense_6/Tensordot/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2L
$model_1/embedding_1/embedding_lookup$model_1/embedding_1/embedding_lookup2P
&model_1/embedding_1/embedding_lookup_1&model_1/embedding_1/embedding_lookup_1:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?

?
A__inference_dense_7_layer_call_and_return_conditional_losses_7837

inputs1
matmul_readvariableop_resource:	?"-
biasadd_readvariableop_resource:"
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?"*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:"*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????"2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
&__inference_model_1_layer_call_fn_7865
input_4
input_3
unknown:	?@
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?"
	unknown_7:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_78442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?

?
"__inference_signature_wrapper_8129
input_3
input_4
unknown:	?@
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?"
	unknown_7:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__wrapped_model_76592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?
X
,__inference_concatenate_1_layer_call_fn_8420
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_77042
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????@:??????????@:V R
,
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?!
?
A__inference_dense_6_layer_call_and_return_conditional_losses_8547

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?
D
(__inference_flatten_1_layer_call_fn_8552

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_78242
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_7824

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__traced_restore_8828
file_prefix:
'assignvariableop_embedding_1_embeddings:	?@5
!assignvariableop_1_dense_4_kernel:
??.
assignvariableop_2_dense_4_bias:	?5
!assignvariableop_3_dense_5_kernel:
??.
assignvariableop_4_dense_5_bias:	?5
!assignvariableop_5_dense_6_kernel:
??.
assignvariableop_6_dense_6_bias:	?4
!assignvariableop_7_dense_7_kernel:	?"-
assignvariableop_8_dense_7_bias:"&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: D
1assignvariableop_18_adam_embedding_1_embeddings_m:	?@=
)assignvariableop_19_adam_dense_4_kernel_m:
??6
'assignvariableop_20_adam_dense_4_bias_m:	?=
)assignvariableop_21_adam_dense_5_kernel_m:
??6
'assignvariableop_22_adam_dense_5_bias_m:	?=
)assignvariableop_23_adam_dense_6_kernel_m:
??6
'assignvariableop_24_adam_dense_6_bias_m:	?<
)assignvariableop_25_adam_dense_7_kernel_m:	?"5
'assignvariableop_26_adam_dense_7_bias_m:"D
1assignvariableop_27_adam_embedding_1_embeddings_v:	?@=
)assignvariableop_28_adam_dense_4_kernel_v:
??6
'assignvariableop_29_adam_dense_4_bias_v:	?=
)assignvariableop_30_adam_dense_5_kernel_v:
??6
'assignvariableop_31_adam_dense_5_bias_v:	?=
)assignvariableop_32_adam_dense_6_kernel_v:
??6
'assignvariableop_33_adam_dense_6_bias_v:	?<
)assignvariableop_34_adam_dense_7_kernel_v:	?"5
'assignvariableop_35_adam_dense_7_bias_v:"
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_5_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_5_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_6_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_6_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_7_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_7_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp1assignvariableop_18_adam_embedding_1_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_7_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_embedding_1_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_4_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_4_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_5_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_5_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_6_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_6_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_7_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_7_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_359
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_36?
Identity_37IdentityIdentity_36:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_37"#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?!
?
A__inference_dense_4_layer_call_and_return_conditional_losses_7737

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?!
?
A__inference_dense_5_layer_call_and_return_conditional_losses_7774

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
&__inference_model_1_layer_call_fn_8031
input_4
input_3
unknown:	?@
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?"
	unknown_7:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_79862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
q
G__inference_concatenate_1_layer_call_and_return_conditional_losses_7704

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*-
_output_shapes
:???????????2
concati
IdentityIdentityconcat:output:0*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????@:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?

?
A__inference_dense_7_layer_call_and_return_conditional_losses_8578

inputs1
matmul_readvariableop_resource:	?"-
biasadd_readvariableop_resource:"
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?"*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:"*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????"2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_8558

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?!
?
A__inference_dense_4_layer_call_and_return_conditional_losses_8467

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_1_layer_call_and_return_conditional_losses_8414

inputs(
embedding_lookup_8408:	?@
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_8408Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*(
_class
loc:@embedding_lookup/8408*,
_output_shapes
:??????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@embedding_lookup/8408*,
_output_shapes
:??????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_1_layer_call_and_return_conditional_losses_7691

inputs(
embedding_lookup_7685:	?@
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_7685Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*(
_class
loc:@embedding_lookup/7685*,
_output_shapes
:??????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@embedding_lookup/7685*,
_output_shapes
:??????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_5_layer_call_fn_8476

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_77742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?

*__inference_embedding_1_layer_call_fn_8404

inputs
unknown:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Q
5__inference_global_max_pooling1d_1_layer_call_fn_7672

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_76662
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?M
?
__inference__traced_save_8710
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?@:
??:?:
??:?:
??:?:	?":": : : : : : : : : :	?@:
??:?:
??:?:
??:?:	?":":	?@:
??:?:
??:?:
??:?:	?":": 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?": 	

_output_shapes
:":


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?": 

_output_shapes
:":%!

_output_shapes
:	?@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:%#!

_output_shapes
:	?": $

_output_shapes
:":%

_output_shapes
: 
?

?
&__inference_model_1_layer_call_fn_8153
inputs_0
inputs_1
unknown:	?@
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?"
	unknown_7:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_78442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
l
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_7666

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?+
?
A__inference_model_1_layer_call_and_return_conditional_losses_7844

inputs
inputs_1#
embedding_1_7692:	?@ 
dense_4_7738:
??
dense_4_7740:	? 
dense_5_7775:
??
dense_5_7777:	? 
dense_6_7812:
??
dense_6_7814:	?
dense_7_7838:	?"
dense_7_7840:"
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?%embedding_1/StatefulPartitionedCall_1?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_7692*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912%
#embedding_1/StatefulPartitionedCall?
%embedding_1/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1embedding_1_7692*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912'
%embedding_1/StatefulPartitionedCall_1?
concatenate_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0.embedding_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_77042
concatenate_1/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_7738dense_4_7740*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_77372!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_7775dense_5_7777*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_77742!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_7812dense_6_7814*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_78112!
dense_6/StatefulPartitionedCall?
&global_max_pooling1d_1/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_76662(
&global_max_pooling1d_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_78242
flatten_1/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_7_7838dense_7_7840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_78372!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall&^embedding_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%embedding_1/StatefulPartitionedCall_1%embedding_1/StatefulPartitionedCall_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_6_layer_call_fn_8516

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_78112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
ő
?
A__inference_model_1_layer_call_and_return_conditional_losses_8397
inputs_0
inputs_14
!embedding_1_embedding_lookup_8292:	?@=
)dense_4_tensordot_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?=
)dense_5_tensordot_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?=
)dense_6_tensordot_readvariableop_resource:
??6
'dense_6_biasadd_readvariableop_resource:	?9
&dense_7_matmul_readvariableop_resource:	?"5
'dense_7_biasadd_readvariableop_resource:"
identity??dense_4/BiasAdd/ReadVariableOp? dense_4/Tensordot/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding_1/embedding_lookup?embedding_1/embedding_lookup_1x
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_8292embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/8292*,
_output_shapes
:??????????@*
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/8292*,
_output_shapes
:??????????@2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2)
'embedding_1/embedding_lookup/Identity_1|
embedding_1/Cast_1Castinputs_1*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast_1?
embedding_1/embedding_lookup_1ResourceGather!embedding_1_embedding_lookup_8292embedding_1/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding_1/embedding_lookup/8292*,
_output_shapes
:??????????@*
dtype02 
embedding_1/embedding_lookup_1?
'embedding_1/embedding_lookup_1/IdentityIdentity'embedding_1/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/8292*,
_output_shapes
:??????????@2)
'embedding_1/embedding_lookup_1/Identity?
)embedding_1/embedding_lookup_1/Identity_1Identity0embedding_1/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????@2+
)embedding_1/embedding_lookup_1/Identity_1x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV20embedding_1/embedding_lookup/Identity_1:output:02embedding_1/embedding_lookup_1/Identity_1:output:0"concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:???????????2
concatenate_1/concat?
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes?
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free
dense_4/Tensordot/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape?
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis?
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2?
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis?
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const?
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod?
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1?
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1?
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis?
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat?
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack?
dense_4/Tensordot/transpose	Transposeconcatenate_1/concat:output:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Tensordot/transpose?
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_4/Tensordot/Reshape?
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/Tensordot/MatMul?
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_4/Tensordot/Const_2?
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis?
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1?
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Tensordot?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_4/BiasAddv
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_4/Relu?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_5/Tensordot/ReadVariableOpz
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_5/Tensordot/axes?
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_5/Tensordot/free|
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dense_5/Tensordot/Shape?
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/GatherV2/axis?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2?
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_5/Tensordot/GatherV2_1/axis?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2_1|
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod?
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_1?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod_1?
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_5/Tensordot/concat/axis?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/stack?
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Tensordot/transpose?
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_5/Tensordot/Reshape?
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/Tensordot/MatMul?
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_5/Tensordot/Const_2?
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/concat_1/axis?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat_1?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Tensordot?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_5/BiasAddv
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_5/Relu?
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_6/Tensordot/ReadVariableOpz
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_6/Tensordot/axes?
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_6/Tensordot/free|
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2
dense_6/Tensordot/Shape?
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_6/Tensordot/GatherV2/axis?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_6/Tensordot/GatherV2?
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_6/Tensordot/GatherV2_1/axis?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_6/Tensordot/GatherV2_1|
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_6/Tensordot/Const?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_6/Tensordot/Prod?
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_6/Tensordot/Const_1?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_6/Tensordot/Prod_1?
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_6/Tensordot/concat/axis?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/concat?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/stack?
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Tensordot/transpose?
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_6/Tensordot/Reshape?
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/Tensordot/MatMul?
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_6/Tensordot/Const_2?
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_6/Tensordot/concat_1/axis?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_6/Tensordot/concat_1?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Tensordot?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
dense_6/BiasAddv
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
dense_6/Relu?
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_1/Max/reduction_indices?
global_max_pooling1d_1/MaxMaxdense_6/Relu:activations:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_max_pooling1d_1/Maxs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshape#global_max_pooling1d_1/Max:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?"*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulflatten_1/Reshape:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:"*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????"2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????"2
dense_7/Sigmoid?
IdentityIdentitydense_7/Sigmoid:y:0^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding_1/embedding_lookup^embedding_1/embedding_lookup_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2@
embedding_1/embedding_lookup_1embedding_1/embedding_lookup_1:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?

?
&__inference_model_1_layer_call_fn_8177
inputs_0
inputs_1
unknown:	?@
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?"
	unknown_7:"
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_79862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?+
?
A__inference_model_1_layer_call_and_return_conditional_losses_8064
input_4
input_3#
embedding_1_8035:	?@ 
dense_4_8041:
??
dense_4_8043:	? 
dense_5_8046:
??
dense_5_8048:	? 
dense_6_8051:
??
dense_6_8053:	?
dense_7_8058:	?"
dense_7_8060:"
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?%embedding_1/StatefulPartitionedCall_1?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_4embedding_1_8035*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912%
#embedding_1/StatefulPartitionedCall?
%embedding_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_3embedding_1_8035*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_76912'
%embedding_1/StatefulPartitionedCall_1?
concatenate_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0.embedding_1/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_77042
concatenate_1/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_8041dense_4_8043*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_77372!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_8046dense_5_8048*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_77742!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_8051dense_6_8053*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_78112!
dense_6/StatefulPartitionedCall?
&global_max_pooling1d_1/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_76662(
&global_max_pooling1d_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_78242
flatten_1/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_7_8058dense_7_8060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????"*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_78372!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0 ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall&^embedding_1/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????"2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????:??????????: : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2N
%embedding_1/StatefulPartitionedCall_1%embedding_1/StatefulPartitionedCall_1:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_4:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?!
?
A__inference_dense_6_layer_call_and_return_conditional_losses_7811

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_31
serving_default_input_3:0??????????
<
input_41
serving_default_input_4:0??????????;
dense_70
StatefulPartitionedCall:0?????????"tensorflow/serving/predict:??
?P
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?L
_tf_keras_network?L{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 770, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_4", 0, 0, {}]], [["input_3", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["embedding_1", 0, 0, {}], ["embedding_1", 1, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_1", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["global_max_pooling1d_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 34, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0], ["input_3", 0, 0]], "output_layers": [["dense_7", 0, 0]]}, "shared_object_id": 19, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128]}, {"class_name": "TensorShape", "items": [null, 128]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128]}, "float32", "input_4"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 128]}, "float32", "input_3"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 770, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_4", 0, 0, {}]], [["input_3", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["embedding_1", 0, 0, {}], ["embedding_1", 1, 0, {}]]], "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dense_5", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_1", "inbound_nodes": [[["dense_6", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["global_max_pooling1d_1", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 34, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["flatten_1", 0, 0, {}]]], "shared_object_id": 18}], "input_layers": [["input_4", 0, 0], ["input_3", 0, 0]], "output_layers": [["dense_7", 0, 0]]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 22}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 770, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["input_4", 0, 0, {}]], [["input_3", 0, 0, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["embedding_1", 0, 0, {}], ["embedding_1", 1, 0, {}]]], "shared_object_id": 4, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 128, 64]}, {"class_name": "TensorShape", "items": [null, 128, 64]}]}
?	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128]}}
?	

 kernel
!bias
"trainable_variables
#	variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 512]}}
?	

&kernel
'bias
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_5", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 512]}}
?
,trainable_variables
-	variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "global_max_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dense_6", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 27}}
?
0trainable_variables
1	variables
2regularization_losses
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["global_max_pooling1d_1", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 28}}
?	

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 34, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_1", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmy mz!m{&m|'m}4m~5mv?v?v? v?!v?&v?'v?4v?5v?"
	optimizer
_
0
1
2
 3
!4
&5
'6
47
58"
trackable_list_wrapper
_
0
1
2
 3
!4
&5
'6
47
58"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_regularization_losses
@non_trainable_variables
trainable_variables
Alayer_metrics

Blayers
	variables
Cmetrics
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):'	?@2embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dlayer_regularization_losses
Enon_trainable_variables
trainable_variables
Flayer_metrics

Glayers
	variables
Hmetrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ilayer_regularization_losses
Jnon_trainable_variables
trainable_variables
Klayer_metrics

Llayers
	variables
Mmetrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_4/kernel
:?2dense_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nlayer_regularization_losses
Onon_trainable_variables
trainable_variables
Player_metrics

Qlayers
	variables
Rmetrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_5/kernel
:?2dense_5/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Slayer_regularization_losses
Tnon_trainable_variables
"trainable_variables
Ulayer_metrics

Vlayers
#	variables
Wmetrics
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_6/kernel
:?2dense_6/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xlayer_regularization_losses
Ynon_trainable_variables
(trainable_variables
Zlayer_metrics

[layers
)	variables
\metrics
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
]layer_regularization_losses
^non_trainable_variables
,trainable_variables
_layer_metrics

`layers
-	variables
ametrics
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
blayer_regularization_losses
cnon_trainable_variables
0trainable_variables
dlayer_metrics

elayers
1	variables
fmetrics
2regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?"2dense_7/kernel
:"2dense_7/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
glayer_regularization_losses
hnon_trainable_variables
6trainable_variables
ilayer_metrics

jlayers
7	variables
kmetrics
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	ntotal
	ocount
p	variables
q	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 30}
?
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 23}
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
r0
s1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
.:,	?@2Adam/embedding_1/embeddings/m
':%
??2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
':%
??2Adam/dense_5/kernel/m
 :?2Adam/dense_5/bias/m
':%
??2Adam/dense_6/kernel/m
 :?2Adam/dense_6/bias/m
&:$	?"2Adam/dense_7/kernel/m
:"2Adam/dense_7/bias/m
.:,	?@2Adam/embedding_1/embeddings/v
':%
??2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
':%
??2Adam/dense_5/kernel/v
 :?2Adam/dense_5/bias/v
':%
??2Adam/dense_6/kernel/v
 :?2Adam/dense_6/bias/v
&:$	?"2Adam/dense_7/kernel/v
:"2Adam/dense_7/bias/v
?2?
&__inference_model_1_layer_call_fn_7865
&__inference_model_1_layer_call_fn_8153
&__inference_model_1_layer_call_fn_8177
&__inference_model_1_layer_call_fn_8031?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_7659?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *P?M
K?H
"?
input_4??????????
"?
input_3??????????
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_8287
A__inference_model_1_layer_call_and_return_conditional_losses_8397
A__inference_model_1_layer_call_and_return_conditional_losses_8064
A__inference_model_1_layer_call_and_return_conditional_losses_8097?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_embedding_1_layer_call_fn_8404?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_embedding_1_layer_call_and_return_conditional_losses_8414?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_concatenate_1_layer_call_fn_8420?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_concatenate_1_layer_call_and_return_conditional_losses_8427?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_4_layer_call_fn_8436?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_4_layer_call_and_return_conditional_losses_8467?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_5_layer_call_fn_8476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_5_layer_call_and_return_conditional_losses_8507?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_6_layer_call_fn_8516?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_6_layer_call_and_return_conditional_losses_8547?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_global_max_pooling1d_1_layer_call_fn_7672?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_7666?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
(__inference_flatten_1_layer_call_fn_8552?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_1_layer_call_and_return_conditional_losses_8558?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_7_layer_call_fn_8567?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_7_layer_call_and_return_conditional_losses_8578?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_8129input_3input_4"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_7659?	 !&'45Z?W
P?M
K?H
"?
input_4??????????
"?
input_3??????????
? "1?.
,
dense_7!?
dense_7?????????"?
G__inference_concatenate_1_layer_call_and_return_conditional_losses_8427?d?a
Z?W
U?R
'?$
inputs/0??????????@
'?$
inputs/1??????????@
? "+?(
!?
0???????????
? ?
,__inference_concatenate_1_layer_call_fn_8420?d?a
Z?W
U?R
'?$
inputs/0??????????@
'?$
inputs/1??????????@
? "?????????????
A__inference_dense_4_layer_call_and_return_conditional_losses_8467h5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
&__inference_dense_4_layer_call_fn_8436[5?2
+?(
&?#
inputs???????????
? "?????????????
A__inference_dense_5_layer_call_and_return_conditional_losses_8507h !5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
&__inference_dense_5_layer_call_fn_8476[ !5?2
+?(
&?#
inputs???????????
? "?????????????
A__inference_dense_6_layer_call_and_return_conditional_losses_8547h&'5?2
+?(
&?#
inputs???????????
? "+?(
!?
0???????????
? ?
&__inference_dense_6_layer_call_fn_8516[&'5?2
+?(
&?#
inputs???????????
? "?????????????
A__inference_dense_7_layer_call_and_return_conditional_losses_8578]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????"
? z
&__inference_dense_7_layer_call_fn_8567P450?-
&?#
!?
inputs??????????
? "??????????"?
E__inference_embedding_1_layer_call_and_return_conditional_losses_8414a0?-
&?#
!?
inputs??????????
? "*?'
 ?
0??????????@
? ?
*__inference_embedding_1_layer_call_fn_8404T0?-
&?#
!?
inputs??????????
? "???????????@?
C__inference_flatten_1_layer_call_and_return_conditional_losses_8558Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? y
(__inference_flatten_1_layer_call_fn_8552M0?-
&?#
!?
inputs??????????
? "????????????
P__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_7666wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
5__inference_global_max_pooling1d_1_layer_call_fn_7672jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
A__inference_model_1_layer_call_and_return_conditional_losses_8064?	 !&'45b?_
X?U
K?H
"?
input_4??????????
"?
input_3??????????
p 

 
? "%?"
?
0?????????"
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_8097?	 !&'45b?_
X?U
K?H
"?
input_4??????????
"?
input_3??????????
p

 
? "%?"
?
0?????????"
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_8287?	 !&'45d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
p 

 
? "%?"
?
0?????????"
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_8397?	 !&'45d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
p

 
? "%?"
?
0?????????"
? ?
&__inference_model_1_layer_call_fn_7865?	 !&'45b?_
X?U
K?H
"?
input_4??????????
"?
input_3??????????
p 

 
? "??????????"?
&__inference_model_1_layer_call_fn_8031?	 !&'45b?_
X?U
K?H
"?
input_4??????????
"?
input_3??????????
p

 
? "??????????"?
&__inference_model_1_layer_call_fn_8153?	 !&'45d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
p 

 
? "??????????"?
&__inference_model_1_layer_call_fn_8177?	 !&'45d?a
Z?W
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
p

 
? "??????????"?
"__inference_signature_wrapper_8129?	 !&'45k?h
? 
a?^
-
input_3"?
input_3??????????
-
input_4"?
input_4??????????"1?.
,
dense_7!?
dense_7?????????"