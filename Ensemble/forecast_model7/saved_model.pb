
¯
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
@
Softplus
features"T
activations"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.0-49-g85c8b2a817f8ÄÚ
z
dense_89/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`* 
shared_namedense_89/kernel
s
#dense_89/kernel/Read/ReadVariableOpReadVariableOpdense_89/kernel*
_output_shapes

:`*
dtype0
r
dense_89/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_89/bias
k
!dense_89/bias/Read/ReadVariableOpReadVariableOpdense_89/bias*
_output_shapes
:*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	

lstm_91/lstm_cell_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_namelstm_91/lstm_cell_144/kernel

0lstm_91/lstm_cell_144/kernel/Read/ReadVariableOpReadVariableOplstm_91/lstm_cell_144/kernel*
_output_shapes
:	*
dtype0
©
&lstm_91/lstm_cell_144/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`*7
shared_name(&lstm_91/lstm_cell_144/recurrent_kernel
¢
:lstm_91/lstm_cell_144/recurrent_kernel/Read/ReadVariableOpReadVariableOp&lstm_91/lstm_cell_144/recurrent_kernel*
_output_shapes
:	`*
dtype0

lstm_91/lstm_cell_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelstm_91/lstm_cell_144/bias

.lstm_91/lstm_cell_144/bias/Read/ReadVariableOpReadVariableOplstm_91/lstm_cell_144/bias*
_output_shapes	
:*
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

SGD/dense_89/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*-
shared_nameSGD/dense_89/kernel/momentum

0SGD/dense_89/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_89/kernel/momentum*
_output_shapes

:`*
dtype0

SGD/dense_89/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_89/bias/momentum

.SGD/dense_89/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_89/bias/momentum*
_output_shapes
:*
dtype0
¯
)SGD/lstm_91/lstm_cell_144/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*:
shared_name+)SGD/lstm_91/lstm_cell_144/kernel/momentum
¨
=SGD/lstm_91/lstm_cell_144/kernel/momentum/Read/ReadVariableOpReadVariableOp)SGD/lstm_91/lstm_cell_144/kernel/momentum*
_output_shapes
:	*
dtype0
Ã
3SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`*D
shared_name53SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum
¼
GSGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum/Read/ReadVariableOpReadVariableOp3SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum*
_output_shapes
:	`*
dtype0
§
'SGD/lstm_91/lstm_cell_144/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'SGD/lstm_91/lstm_cell_144/bias/momentum
 
;SGD/lstm_91/lstm_cell_144/bias/momentum/Read/ReadVariableOpReadVariableOp'SGD/lstm_91/lstm_cell_144/bias/momentum*
_output_shapes	
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ú
valueÐBÍ BÆ
¿
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api

	decay
learning_rate
momentum
itermomentum:momentum;momentum<momentum=momentum>
#
0
1
2
3
4
#
0
1
2
3
4
 
­
metrics

layers
layer_regularization_losses
	variables
trainable_variables
non_trainable_variables
 layer_metrics
regularization_losses
 
~

kernel
recurrent_kernel
bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
 

0
1
2

0
1
2
 
¹
%metrics

&states

'layers
(layer_regularization_losses
	variables
trainable_variables
)non_trainable_variables
*layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_89/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_89/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
+metrics
,layer_regularization_losses

-layers
	variables
trainable_variables
.non_trainable_variables
/layer_metrics
regularization_losses
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUElstm_91/lstm_cell_144/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&lstm_91/lstm_cell_144/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElstm_91/lstm_cell_144/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

00

0
1
 
 
 

0
1
2

0
1
2
 
­
1metrics
2layer_regularization_losses

3layers
!	variables
"trainable_variables
4non_trainable_variables
5layer_metrics
#regularization_losses
 
 

	0
 
 
 
 
 
 
 
 
4
	6total
	7count
8	variables
9	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

60
71

8	variables

VARIABLE_VALUESGD/dense_89/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/dense_89/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE)SGD/lstm_91/lstm_cell_144/kernel/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE'SGD/lstm_91/lstm_cell_144/bias/momentumIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_91_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Æ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_91_inputlstm_91/lstm_cell_144/kernel&lstm_91/lstm_cell_144/recurrent_kernellstm_91/lstm_cell_144/biasdense_89/kerneldense_89/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_11938321
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ê
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_89/kernel/Read/ReadVariableOp!dense_89/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOp0lstm_91/lstm_cell_144/kernel/Read/ReadVariableOp:lstm_91/lstm_cell_144/recurrent_kernel/Read/ReadVariableOp.lstm_91/lstm_cell_144/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0SGD/dense_89/kernel/momentum/Read/ReadVariableOp.SGD/dense_89/bias/momentum/Read/ReadVariableOp=SGD/lstm_91/lstm_cell_144/kernel/momentum/Read/ReadVariableOpGSGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum/Read/ReadVariableOp;SGD/lstm_91/lstm_cell_144/bias/momentum/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_11939515
¥
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_89/kerneldense_89/biasdecaylearning_ratemomentumSGD/iterlstm_91/lstm_cell_144/kernel&lstm_91/lstm_cell_144/recurrent_kernellstm_91/lstm_cell_144/biastotalcountSGD/dense_89/kernel/momentumSGD/dense_89/bias/momentum)SGD/lstm_91/lstm_cell_144/kernel/momentum3SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum'SGD/lstm_91/lstm_cell_144/bias/momentum*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_11939573ï
E
è
E__inference_lstm_91_layer_call_and_return_conditional_losses_11937844

inputs
lstm_cell_144_11937762
lstm_cell_144_11937764
lstm_cell_144_11937766
identity¢%lstm_cell_144/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2«
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_11937762lstm_cell_144_11937764lstm_cell_144_11937766*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373492'
%lstm_cell_144/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_11937762lstm_cell_144_11937764lstm_cell_144_11937766*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11937775*
condR
while_cond_11937774*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_144/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


K__inference_sequential_95_layer_call_and_return_conditional_losses_11938285

inputs
lstm_91_11938272
lstm_91_11938274
lstm_91_11938276
dense_89_11938279
dense_89_11938281
identity¢ dense_89/StatefulPartitionedCall¢lstm_91/StatefulPartitionedCall©
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputslstm_91_11938272lstm_91_11938274lstm_91_11938276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119381622!
lstm_91/StatefulPartitionedCall¼
 dense_89/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_89_11938279dense_89_11938281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_89_layer_call_and_return_conditional_losses_119382022"
 dense_89/StatefulPartitionedCallÂ
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0!^dense_89/StatefulPartitionedCall ^lstm_91/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\
ú
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938009

inputs0
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11937924*
condR
while_cond_11937923*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
²
0__inference_sequential_95_layer_call_fn_11938654

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_95_layer_call_and_return_conditional_losses_119382542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Í
while_cond_11938889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11938889___redundant_placeholder06
2while_while_cond_11938889___redundant_placeholder16
2while_while_cond_11938889___redundant_placeholder26
2while_while_cond_11938889___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
Û%
¦
while_body_11937643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"
while_lstm_cell_144_11937667_0"
while_lstm_cell_144_11937669_0"
while_lstm_cell_144_11937671_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor 
while_lstm_cell_144_11937667 
while_lstm_cell_144_11937669 
while_lstm_cell_144_11937671¢+while/lstm_cell_144/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemï
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_11937667_0while_lstm_cell_144_11937669_0while_lstm_cell_144_11937671_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373162-
+while/lstm_cell_144/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2»
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Æ
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1,^while/lstm_cell_144/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4Æ
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2,^while/lstm_cell_144/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_144_11937667while_lstm_cell_144_11937667_0">
while_lstm_cell_144_11937669while_lstm_cell_144_11937669_0">
while_lstm_cell_144_11937671while_lstm_cell_144_11937671_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
Î
Þ
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11937316

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mulb
SoftplusSoftplussplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplusl
mul_1MulSigmoid:y:0Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_2a

Softplus_1Softplus	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplus_1p
mul_2MulSigmoid_2:y:0Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_namestates
µ
Í
while_cond_11937923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11937923___redundant_placeholder06
2while_while_cond_11937923___redundant_placeholder16
2while_while_cond_11937923___redundant_placeholder26
2while_while_cond_11937923___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
µ
Í
while_cond_11939064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11939064___redundant_placeholder06
2while_while_cond_11939064___redundant_placeholder16
2while_while_cond_11939064___redundant_placeholder26
2while_while_cond_11939064___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
¿\
ü
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939150
inputs_00
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11939065*
condR
while_cond_11939064*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¥
¦
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938235
lstm_91_input
lstm_91_11938222
lstm_91_11938224
lstm_91_11938226
dense_89_11938229
dense_89_11938231
identity¢ dense_89/StatefulPartitionedCall¢lstm_91/StatefulPartitionedCall°
lstm_91/StatefulPartitionedCallStatefulPartitionedCalllstm_91_inputlstm_91_11938222lstm_91_11938224lstm_91_11938226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119381622!
lstm_91/StatefulPartitionedCall¼
 dense_89/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_89_11938229dense_89_11938231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_89_layer_call_and_return_conditional_losses_119382022"
 dense_89/StatefulPartitionedCallÂ
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0!^dense_89/StatefulPartitionedCall ^lstm_91/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input
D

while_body_11939218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
¥
¦
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938219
lstm_91_input
lstm_91_11938185
lstm_91_11938187
lstm_91_11938189
dense_89_11938213
dense_89_11938215
identity¢ dense_89/StatefulPartitionedCall¢lstm_91/StatefulPartitionedCall°
lstm_91/StatefulPartitionedCallStatefulPartitionedCalllstm_91_inputlstm_91_11938185lstm_91_11938187lstm_91_11938189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119380092!
lstm_91/StatefulPartitionedCall¼
 dense_89/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_89_11938213dense_89_11938215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_89_layer_call_and_return_conditional_losses_119382022"
 dense_89/StatefulPartitionedCallÂ
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0!^dense_89/StatefulPartitionedCall ^lstm_91/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input
\
ú
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938822

inputs0
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11938737*
condR
while_cond_11938736*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_lstm_91_layer_call_fn_11939325
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119378442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
D

while_body_11938737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
P


lstm_91_while_body_11938389,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3+
'lstm_91_while_lstm_91_strided_slice_1_0g
clstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0@
<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0B
>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0A
=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0
lstm_91_while_identity
lstm_91_while_identity_1
lstm_91_while_identity_2
lstm_91_while_identity_3
lstm_91_while_identity_4
lstm_91_while_identity_5)
%lstm_91_while_lstm_91_strided_slice_1e
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor>
:lstm_91_while_lstm_cell_144_matmul_readvariableop_resource@
<lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource?
;lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource¢2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp¢1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp¢3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpÓ
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0lstm_91_while_placeholderHlstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_91/while/TensorArrayV2Read/TensorListGetItemä
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpú
"lstm_91/while/lstm_cell_144/MatMulMatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_91/while/lstm_cell_144/MatMulê
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype025
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpã
$lstm_91/while/lstm_cell_144/MatMul_1MatMullstm_91_while_placeholder_2;lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_91/while/lstm_cell_144/MatMul_1Ü
lstm_91/while/lstm_cell_144/addAddV2,lstm_91/while/lstm_cell_144/MatMul:product:0.lstm_91/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_91/while/lstm_cell_144/addã
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype024
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOpé
#lstm_91/while/lstm_cell_144/BiasAddBiasAdd#lstm_91/while/lstm_cell_144/add:z:0:lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_91/while/lstm_cell_144/BiasAdd
!lstm_91/while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_91/while/lstm_cell_144/Const
+lstm_91/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+lstm_91/while/lstm_cell_144/split/split_dim¯
!lstm_91/while/lstm_cell_144/splitSplit4lstm_91/while/lstm_cell_144/split/split_dim:output:0,lstm_91/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2#
!lstm_91/while/lstm_cell_144/split³
#lstm_91/while/lstm_cell_144/SigmoidSigmoid*lstm_91/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2%
#lstm_91/while/lstm_cell_144/Sigmoid·
%lstm_91/while/lstm_cell_144/Sigmoid_1Sigmoid*lstm_91/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%lstm_91/while/lstm_cell_144/Sigmoid_1Ã
lstm_91/while/lstm_cell_144/mulMul)lstm_91/while/lstm_cell_144/Sigmoid_1:y:0lstm_91_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/while/lstm_cell_144/mul¶
$lstm_91/while/lstm_cell_144/SoftplusSoftplus*lstm_91/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2&
$lstm_91/while/lstm_cell_144/SoftplusÜ
!lstm_91/while/lstm_cell_144/mul_1Mul'lstm_91/while/lstm_cell_144/Sigmoid:y:02lstm_91/while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/mul_1Í
!lstm_91/while/lstm_cell_144/add_1AddV2#lstm_91/while/lstm_cell_144/mul:z:0%lstm_91/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/add_1·
%lstm_91/while/lstm_cell_144/Sigmoid_2Sigmoid*lstm_91/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%lstm_91/while/lstm_cell_144/Sigmoid_2µ
&lstm_91/while/lstm_cell_144/Softplus_1Softplus%lstm_91/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2(
&lstm_91/while/lstm_cell_144/Softplus_1à
!lstm_91/while/lstm_cell_144/mul_2Mul)lstm_91/while/lstm_cell_144/Sigmoid_2:y:04lstm_91/while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/mul_2
2lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_91_while_placeholder_1lstm_91_while_placeholder%lstm_91/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_91/while/TensorArrayV2Write/TensorListSetIteml
lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add/y
lstm_91/while/addAddV2lstm_91_while_placeholderlstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/addp
lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add_1/y
lstm_91/while/add_1AddV2(lstm_91_while_lstm_91_while_loop_counterlstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/add_1
lstm_91/while/IdentityIdentitylstm_91/while/add_1:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity°
lstm_91/while/Identity_1Identity.lstm_91_while_lstm_91_while_maximum_iterations3^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_1
lstm_91/while/Identity_2Identitylstm_91/while/add:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_2Ä
lstm_91/while/Identity_3IdentityBlstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_3¸
lstm_91/while/Identity_4Identity%lstm_91/while/lstm_cell_144/mul_2:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/while/Identity_4¸
lstm_91/while/Identity_5Identity%lstm_91/while/lstm_cell_144/add_1:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/while/Identity_5"9
lstm_91_while_identitylstm_91/while/Identity:output:0"=
lstm_91_while_identity_1!lstm_91/while/Identity_1:output:0"=
lstm_91_while_identity_2!lstm_91/while/Identity_2:output:0"=
lstm_91_while_identity_3!lstm_91/while/Identity_3:output:0"=
lstm_91_while_identity_4!lstm_91/while/Identity_4:output:0"=
lstm_91_while_identity_5!lstm_91/while/Identity_5:output:0"P
%lstm_91_while_lstm_91_strided_slice_1'lstm_91_while_lstm_91_strided_slice_1_0"|
;lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0"~
<lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0"z
:lstm_91_while_lstm_cell_144_matmul_readvariableop_resource<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0"È
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2h
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2f
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp2j
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
è
¹
0__inference_sequential_95_layer_call_fn_11938298
lstm_91_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCalllstm_91_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_95_layer_call_and_return_conditional_losses_119382852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input
Î
Þ
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11937349

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mulb
SoftplusSoftplussplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplusl
mul_1MulSigmoid:y:0Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_2a

Softplus_1Softplus	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplus_1p
mul_2MulSigmoid_2:y:0Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_namestates
Ö
à
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939377

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mulb
SoftplusSoftplussplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplusl
mul_1MulSigmoid:y:0Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_2a

Softplus_1Softplus	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplus_1p
mul_2MulSigmoid_2:y:0Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/1
è
¹
0__inference_sequential_95_layer_call_fn_11938267
lstm_91_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCalllstm_91_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_95_layer_call_and_return_conditional_losses_119382542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input
Á
Ð
0__inference_lstm_cell_144_layer_call_fn_11939427

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/1
Ò,
Û
!__inference__traced_save_11939515
file_prefix.
*savev2_dense_89_kernel_read_readvariableop,
(savev2_dense_89_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	;
7savev2_lstm_91_lstm_cell_144_kernel_read_readvariableopE
Asavev2_lstm_91_lstm_cell_144_recurrent_kernel_read_readvariableop9
5savev2_lstm_91_lstm_cell_144_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_sgd_dense_89_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_89_bias_momentum_read_readvariableopH
Dsavev2_sgd_lstm_91_lstm_cell_144_kernel_momentum_read_readvariableopR
Nsavev2_sgd_lstm_91_lstm_cell_144_recurrent_kernel_momentum_read_readvariableopF
Bsavev2_sgd_lstm_91_lstm_cell_144_bias_momentum_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÂ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô
valueÊBÇB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesª
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices÷
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_89_kernel_read_readvariableop(savev2_dense_89_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop7savev2_lstm_91_lstm_cell_144_kernel_read_readvariableopAsavev2_lstm_91_lstm_cell_144_recurrent_kernel_read_readvariableop5savev2_lstm_91_lstm_cell_144_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_sgd_dense_89_kernel_momentum_read_readvariableop5savev2_sgd_dense_89_bias_momentum_read_readvariableopDsavev2_sgd_lstm_91_lstm_cell_144_kernel_momentum_read_readvariableopNsavev2_sgd_lstm_91_lstm_cell_144_recurrent_kernel_momentum_read_readvariableopBsavev2_sgd_lstm_91_lstm_cell_144_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*}
_input_shapesl
j: :`:: : : : :	:	`:: : :`::	:	`:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:`: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	`:!	

_output_shapes	
::


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:`: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	`:!

_output_shapes	
::

_output_shapes
: 
¿\
ü
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939303
inputs_00
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11939218*
condR
while_cond_11939217*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ó
²
0__inference_sequential_95_layer_call_fn_11938669

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_95_layer_call_and_return_conditional_losses_119382852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
E
è
E__inference_lstm_91_layer_call_and_return_conditional_losses_11937712

inputs
lstm_cell_144_11937630
lstm_cell_144_11937632
lstm_cell_144_11937634
identity¢%lstm_cell_144/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2«
%lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_144_11937630lstm_cell_144_11937632lstm_cell_144_11937634*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373162'
%lstm_cell_144/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_144_11937630lstm_cell_144_11937632lstm_cell_144_11937634*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11937643*
condR
while_cond_11937642*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_144/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2N
%lstm_cell_144/StatefulPartitionedCall%lstm_cell_144/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ß
F__inference_dense_89_layer_call_and_return_conditional_losses_11938202

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Ìs
Ö
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938639

inputs8
4lstm_91_lstm_cell_144_matmul_readvariableop_resource:
6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource9
5lstm_91_lstm_cell_144_biasadd_readvariableop_resource+
'dense_89_matmul_readvariableop_resource,
(dense_89_biasadd_readvariableop_resource
identity¢dense_89/BiasAdd/ReadVariableOp¢dense_89/MatMul/ReadVariableOp¢,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp¢+lstm_91/lstm_cell_144/MatMul/ReadVariableOp¢-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp¢lstm_91/whileT
lstm_91/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_91/Shape
lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice/stack
lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_1
lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_2
lstm_91/strided_sliceStridedSlicelstm_91/Shape:output:0$lstm_91/strided_slice/stack:output:0&lstm_91/strided_slice/stack_1:output:0&lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slicel
lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros/mul/y
lstm_91/zeros/mulMullstm_91/strided_slice:output:0lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/mulo
lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_91/zeros/Less/y
lstm_91/zeros/LessLesslstm_91/zeros/mul:z:0lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/Lessr
lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros/packed/1£
lstm_91/zeros/packedPacklstm_91/strided_slice:output:0lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros/packedo
lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros/Const
lstm_91/zerosFilllstm_91/zeros/packed:output:0lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/zerosp
lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros_1/mul/y
lstm_91/zeros_1/mulMullstm_91/strided_slice:output:0lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/muls
lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_91/zeros_1/Less/y
lstm_91/zeros_1/LessLesslstm_91/zeros_1/mul:z:0lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/Lessv
lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros_1/packed/1©
lstm_91/zeros_1/packedPacklstm_91/strided_slice:output:0!lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros_1/packeds
lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros_1/Const
lstm_91/zeros_1Filllstm_91/zeros_1/packed:output:0lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/zeros_1
lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose/perm
lstm_91/transpose	Transposeinputslstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/transposeg
lstm_91/Shape_1Shapelstm_91/transpose:y:0*
T0*
_output_shapes
:2
lstm_91/Shape_1
lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_1/stack
lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_1
lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_2
lstm_91/strided_slice_1StridedSlicelstm_91/Shape_1:output:0&lstm_91/strided_slice_1/stack:output:0(lstm_91/strided_slice_1/stack_1:output:0(lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slice_1
#lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_91/TensorArrayV2/element_shapeÒ
lstm_91/TensorArrayV2TensorListReserve,lstm_91/TensorArrayV2/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2Ï
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_91/transpose:y:0Flstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_91/TensorArrayUnstack/TensorListFromTensor
lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_2/stack
lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_1
lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_2¬
lstm_91/strided_slice_2StridedSlicelstm_91/transpose:y:0&lstm_91/strided_slice_2/stack:output:0(lstm_91/strided_slice_2/stack_1:output:0(lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_91/strided_slice_2Ð
+lstm_91/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4lstm_91_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_91/lstm_cell_144/MatMul/ReadVariableOpÐ
lstm_91/lstm_cell_144/MatMulMatMul lstm_91/strided_slice_2:output:03lstm_91/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/MatMulÖ
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02/
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOpÌ
lstm_91/lstm_cell_144/MatMul_1MatMullstm_91/zeros:output:05lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_91/lstm_cell_144/MatMul_1Ä
lstm_91/lstm_cell_144/addAddV2&lstm_91/lstm_cell_144/MatMul:product:0(lstm_91/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/addÏ
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOpÑ
lstm_91/lstm_cell_144/BiasAddBiasAddlstm_91/lstm_cell_144/add:z:04lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/BiasAdd|
lstm_91/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/lstm_cell_144/Const
%lstm_91/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%lstm_91/lstm_cell_144/split/split_dim
lstm_91/lstm_cell_144/splitSplit.lstm_91/lstm_cell_144/split/split_dim:output:0&lstm_91/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_91/lstm_cell_144/split¡
lstm_91/lstm_cell_144/SigmoidSigmoid$lstm_91/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/Sigmoid¥
lstm_91/lstm_cell_144/Sigmoid_1Sigmoid$lstm_91/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/lstm_cell_144/Sigmoid_1®
lstm_91/lstm_cell_144/mulMul#lstm_91/lstm_cell_144/Sigmoid_1:y:0lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul¤
lstm_91/lstm_cell_144/SoftplusSoftplus$lstm_91/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
lstm_91/lstm_cell_144/SoftplusÄ
lstm_91/lstm_cell_144/mul_1Mul!lstm_91/lstm_cell_144/Sigmoid:y:0,lstm_91/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul_1µ
lstm_91/lstm_cell_144/add_1AddV2lstm_91/lstm_cell_144/mul:z:0lstm_91/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/add_1¥
lstm_91/lstm_cell_144/Sigmoid_2Sigmoid$lstm_91/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/lstm_cell_144/Sigmoid_2£
 lstm_91/lstm_cell_144/Softplus_1Softpluslstm_91/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2"
 lstm_91/lstm_cell_144/Softplus_1È
lstm_91/lstm_cell_144/mul_2Mul#lstm_91/lstm_cell_144/Sigmoid_2:y:0.lstm_91/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul_2
%lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2'
%lstm_91/TensorArrayV2_1/element_shapeØ
lstm_91/TensorArrayV2_1TensorListReserve.lstm_91/TensorArrayV2_1/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2_1^
lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/time
 lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_91/while/maximum_iterationsz
lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/while/loop_counterí
lstm_91/whileWhile#lstm_91/while/loop_counter:output:0)lstm_91/while/maximum_iterations:output:0lstm_91/time:output:0 lstm_91/TensorArrayV2_1:handle:0lstm_91/zeros:output:0lstm_91/zeros_1:output:0 lstm_91/strided_slice_1:output:0?lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_91_lstm_cell_144_matmul_readvariableop_resource6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource5lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_91_while_body_11938548*'
condR
lstm_91_while_cond_11938547*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
lstm_91/whileÅ
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2:
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_91/TensorArrayV2Stack/TensorListStackTensorListStacklstm_91/while:output:3Alstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02,
*lstm_91/TensorArrayV2Stack/TensorListStack
lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_91/strided_slice_3/stack
lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_91/strided_slice_3/stack_1
lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_3/stack_2Ê
lstm_91/strided_slice_3StridedSlice3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_91/strided_slice_3/stack:output:0(lstm_91/strided_slice_3/stack_1:output:0(lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
lstm_91/strided_slice_3
lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose_1/permÅ
lstm_91/transpose_1	Transpose3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/transpose_1v
lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/runtime¨
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02 
dense_89/MatMul/ReadVariableOp¨
dense_89/MatMulMatMul lstm_91/strided_slice_3:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/MatMul§
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_89/BiasAdd/ReadVariableOp¥
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/BiasAddÍ
IdentityIdentitydense_89/BiasAdd:output:0 ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp-^lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp,^lstm_91/lstm_cell_144/MatMul/ReadVariableOp.^lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_91/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp2\
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp2Z
+lstm_91/lstm_cell_144/MatMul/ReadVariableOp+lstm_91/lstm_cell_144/MatMul/ReadVariableOp2^
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp2
lstm_91/whilelstm_91/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Í
while_cond_11938736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11938736___redundant_placeholder06
2while_while_cond_11938736___redundant_placeholder16
2while_while_cond_11938736___redundant_placeholder26
2while_while_cond_11938736___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
e
Ë
)sequential_95_lstm_91_while_body_11937152H
Dsequential_95_lstm_91_while_sequential_95_lstm_91_while_loop_counterN
Jsequential_95_lstm_91_while_sequential_95_lstm_91_while_maximum_iterations+
'sequential_95_lstm_91_while_placeholder-
)sequential_95_lstm_91_while_placeholder_1-
)sequential_95_lstm_91_while_placeholder_2-
)sequential_95_lstm_91_while_placeholder_3G
Csequential_95_lstm_91_while_sequential_95_lstm_91_strided_slice_1_0
sequential_95_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_91_tensorarrayunstack_tensorlistfromtensor_0N
Jsequential_95_lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0P
Lsequential_95_lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0O
Ksequential_95_lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0(
$sequential_95_lstm_91_while_identity*
&sequential_95_lstm_91_while_identity_1*
&sequential_95_lstm_91_while_identity_2*
&sequential_95_lstm_91_while_identity_3*
&sequential_95_lstm_91_while_identity_4*
&sequential_95_lstm_91_while_identity_5E
Asequential_95_lstm_91_while_sequential_95_lstm_91_strided_slice_1
}sequential_95_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_91_tensorarrayunstack_tensorlistfromtensorL
Hsequential_95_lstm_91_while_lstm_cell_144_matmul_readvariableop_resourceN
Jsequential_95_lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resourceM
Isequential_95_lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource¢@sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp¢?sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp¢Asequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpï
Msequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_95_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_91_tensorarrayunstack_tensorlistfromtensor_0'sequential_95_lstm_91_while_placeholderVsequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItem
?sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpJsequential_95_lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02A
?sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp²
0sequential_95/lstm_91/while/lstm_cell_144/MatMulMatMulFsequential_95/lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_95/lstm_91/while/lstm_cell_144/MatMul
Asequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpLsequential_95_lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02C
Asequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp
2sequential_95/lstm_91/while/lstm_cell_144/MatMul_1MatMul)sequential_95_lstm_91_while_placeholder_2Isequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_95/lstm_91/while/lstm_cell_144/MatMul_1
-sequential_95/lstm_91/while/lstm_cell_144/addAddV2:sequential_95/lstm_91/while/lstm_cell_144/MatMul:product:0<sequential_95/lstm_91/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_95/lstm_91/while/lstm_cell_144/add
@sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpKsequential_95_lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02B
@sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp¡
1sequential_95/lstm_91/while/lstm_cell_144/BiasAddBiasAdd1sequential_95/lstm_91/while/lstm_cell_144/add:z:0Hsequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_95/lstm_91/while/lstm_cell_144/BiasAdd¤
/sequential_95/lstm_91/while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_95/lstm_91/while/lstm_cell_144/Const¸
9sequential_95/lstm_91/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2;
9sequential_95/lstm_91/while/lstm_cell_144/split/split_dimç
/sequential_95/lstm_91/while/lstm_cell_144/splitSplitBsequential_95/lstm_91/while/lstm_cell_144/split/split_dim:output:0:sequential_95/lstm_91/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split21
/sequential_95/lstm_91/while/lstm_cell_144/splitÝ
1sequential_95/lstm_91/while/lstm_cell_144/SigmoidSigmoid8sequential_95/lstm_91/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`23
1sequential_95/lstm_91/while/lstm_cell_144/Sigmoidá
3sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_1Sigmoid8sequential_95/lstm_91/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`25
3sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_1û
-sequential_95/lstm_91/while/lstm_cell_144/mulMul7sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_1:y:0)sequential_95_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2/
-sequential_95/lstm_91/while/lstm_cell_144/mulà
2sequential_95/lstm_91/while/lstm_cell_144/SoftplusSoftplus8sequential_95/lstm_91/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`24
2sequential_95/lstm_91/while/lstm_cell_144/Softplus
/sequential_95/lstm_91/while/lstm_cell_144/mul_1Mul5sequential_95/lstm_91/while/lstm_cell_144/Sigmoid:y:0@sequential_95/lstm_91/while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`21
/sequential_95/lstm_91/while/lstm_cell_144/mul_1
/sequential_95/lstm_91/while/lstm_cell_144/add_1AddV21sequential_95/lstm_91/while/lstm_cell_144/mul:z:03sequential_95/lstm_91/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`21
/sequential_95/lstm_91/while/lstm_cell_144/add_1á
3sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_2Sigmoid8sequential_95/lstm_91/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`25
3sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_2ß
4sequential_95/lstm_91/while/lstm_cell_144/Softplus_1Softplus3sequential_95/lstm_91/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`26
4sequential_95/lstm_91/while/lstm_cell_144/Softplus_1
/sequential_95/lstm_91/while/lstm_cell_144/mul_2Mul7sequential_95/lstm_91/while/lstm_cell_144/Sigmoid_2:y:0Bsequential_95/lstm_91/while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`21
/sequential_95/lstm_91/while/lstm_cell_144/mul_2Ï
@sequential_95/lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_95_lstm_91_while_placeholder_1'sequential_95_lstm_91_while_placeholder3sequential_95/lstm_91/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_95/lstm_91/while/TensorArrayV2Write/TensorListSetItem
!sequential_95/lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_95/lstm_91/while/add/yÁ
sequential_95/lstm_91/while/addAddV2'sequential_95_lstm_91_while_placeholder*sequential_95/lstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_95/lstm_91/while/add
#sequential_95/lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_95/lstm_91/while/add_1/yä
!sequential_95/lstm_91/while/add_1AddV2Dsequential_95_lstm_91_while_sequential_95_lstm_91_while_loop_counter,sequential_95/lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_95/lstm_91/while/add_1é
$sequential_95/lstm_91/while/IdentityIdentity%sequential_95/lstm_91/while/add_1:z:0A^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_95/lstm_91/while/Identity
&sequential_95/lstm_91/while/Identity_1IdentityJsequential_95_lstm_91_while_sequential_95_lstm_91_while_maximum_iterationsA^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_95/lstm_91/while/Identity_1ë
&sequential_95/lstm_91/while/Identity_2Identity#sequential_95/lstm_91/while/add:z:0A^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_95/lstm_91/while/Identity_2
&sequential_95/lstm_91/while/Identity_3IdentityPsequential_95/lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0A^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_95/lstm_91/while/Identity_3
&sequential_95/lstm_91/while/Identity_4Identity3sequential_95/lstm_91/while/lstm_cell_144/mul_2:z:0A^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2(
&sequential_95/lstm_91/while/Identity_4
&sequential_95/lstm_91/while/Identity_5Identity3sequential_95/lstm_91/while/lstm_cell_144/add_1:z:0A^sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@^sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpB^sequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2(
&sequential_95/lstm_91/while/Identity_5"U
$sequential_95_lstm_91_while_identity-sequential_95/lstm_91/while/Identity:output:0"Y
&sequential_95_lstm_91_while_identity_1/sequential_95/lstm_91/while/Identity_1:output:0"Y
&sequential_95_lstm_91_while_identity_2/sequential_95/lstm_91/while/Identity_2:output:0"Y
&sequential_95_lstm_91_while_identity_3/sequential_95/lstm_91/while/Identity_3:output:0"Y
&sequential_95_lstm_91_while_identity_4/sequential_95/lstm_91/while/Identity_4:output:0"Y
&sequential_95_lstm_91_while_identity_5/sequential_95/lstm_91/while/Identity_5:output:0"
Isequential_95_lstm_91_while_lstm_cell_144_biasadd_readvariableop_resourceKsequential_95_lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0"
Jsequential_95_lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resourceLsequential_95_lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0"
Hsequential_95_lstm_91_while_lstm_cell_144_matmul_readvariableop_resourceJsequential_95_lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0"
Asequential_95_lstm_91_while_sequential_95_lstm_91_strided_slice_1Csequential_95_lstm_91_while_sequential_95_lstm_91_strided_slice_1_0"
}sequential_95_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_91_tensorarrayunstack_tensorlistfromtensorsequential_95_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_95_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2
@sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp@sequential_95/lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2
?sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp?sequential_95/lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp2
Asequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpAsequential_95/lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
¶
¯
&__inference_signature_wrapper_11938321
lstm_91_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_91_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_119372432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input


*__inference_lstm_91_layer_call_fn_11939314
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119377122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


*__inference_lstm_91_layer_call_fn_11938986

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119380092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
D

while_body_11938890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
\
ú
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938975

inputs0
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11938890*
condR
while_cond_11938889*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Í
while_cond_11937774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11937774___redundant_placeholder06
2while_while_cond_11937774___redundant_placeholder16
2while_while_cond_11937774___redundant_placeholder26
2while_while_cond_11937774___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
µ
Í
while_cond_11937642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11937642___redundant_placeholder06
2while_while_cond_11937642___redundant_placeholder16
2while_while_cond_11937642___redundant_placeholder26
2while_while_cond_11937642___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
Ìs
Ö
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938480

inputs8
4lstm_91_lstm_cell_144_matmul_readvariableop_resource:
6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource9
5lstm_91_lstm_cell_144_biasadd_readvariableop_resource+
'dense_89_matmul_readvariableop_resource,
(dense_89_biasadd_readvariableop_resource
identity¢dense_89/BiasAdd/ReadVariableOp¢dense_89/MatMul/ReadVariableOp¢,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp¢+lstm_91/lstm_cell_144/MatMul/ReadVariableOp¢-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp¢lstm_91/whileT
lstm_91/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_91/Shape
lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice/stack
lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_1
lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_2
lstm_91/strided_sliceStridedSlicelstm_91/Shape:output:0$lstm_91/strided_slice/stack:output:0&lstm_91/strided_slice/stack_1:output:0&lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slicel
lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros/mul/y
lstm_91/zeros/mulMullstm_91/strided_slice:output:0lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/mulo
lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_91/zeros/Less/y
lstm_91/zeros/LessLesslstm_91/zeros/mul:z:0lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/Lessr
lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros/packed/1£
lstm_91/zeros/packedPacklstm_91/strided_slice:output:0lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros/packedo
lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros/Const
lstm_91/zerosFilllstm_91/zeros/packed:output:0lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/zerosp
lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros_1/mul/y
lstm_91/zeros_1/mulMullstm_91/strided_slice:output:0lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/muls
lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_91/zeros_1/Less/y
lstm_91/zeros_1/LessLesslstm_91/zeros_1/mul:z:0lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/Lessv
lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
lstm_91/zeros_1/packed/1©
lstm_91/zeros_1/packedPacklstm_91/strided_slice:output:0!lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros_1/packeds
lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros_1/Const
lstm_91/zeros_1Filllstm_91/zeros_1/packed:output:0lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/zeros_1
lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose/perm
lstm_91/transpose	Transposeinputslstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/transposeg
lstm_91/Shape_1Shapelstm_91/transpose:y:0*
T0*
_output_shapes
:2
lstm_91/Shape_1
lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_1/stack
lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_1
lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_2
lstm_91/strided_slice_1StridedSlicelstm_91/Shape_1:output:0&lstm_91/strided_slice_1/stack:output:0(lstm_91/strided_slice_1/stack_1:output:0(lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slice_1
#lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_91/TensorArrayV2/element_shapeÒ
lstm_91/TensorArrayV2TensorListReserve,lstm_91/TensorArrayV2/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2Ï
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_91/transpose:y:0Flstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_91/TensorArrayUnstack/TensorListFromTensor
lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_2/stack
lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_1
lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_2¬
lstm_91/strided_slice_2StridedSlicelstm_91/transpose:y:0&lstm_91/strided_slice_2/stack:output:0(lstm_91/strided_slice_2/stack_1:output:0(lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_91/strided_slice_2Ð
+lstm_91/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4lstm_91_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_91/lstm_cell_144/MatMul/ReadVariableOpÐ
lstm_91/lstm_cell_144/MatMulMatMul lstm_91/strided_slice_2:output:03lstm_91/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/MatMulÖ
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02/
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOpÌ
lstm_91/lstm_cell_144/MatMul_1MatMullstm_91/zeros:output:05lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_91/lstm_cell_144/MatMul_1Ä
lstm_91/lstm_cell_144/addAddV2&lstm_91/lstm_cell_144/MatMul:product:0(lstm_91/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/addÏ
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOpÑ
lstm_91/lstm_cell_144/BiasAddBiasAddlstm_91/lstm_cell_144/add:z:04lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_91/lstm_cell_144/BiasAdd|
lstm_91/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/lstm_cell_144/Const
%lstm_91/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%lstm_91/lstm_cell_144/split/split_dim
lstm_91/lstm_cell_144/splitSplit.lstm_91/lstm_cell_144/split/split_dim:output:0&lstm_91/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_91/lstm_cell_144/split¡
lstm_91/lstm_cell_144/SigmoidSigmoid$lstm_91/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/Sigmoid¥
lstm_91/lstm_cell_144/Sigmoid_1Sigmoid$lstm_91/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/lstm_cell_144/Sigmoid_1®
lstm_91/lstm_cell_144/mulMul#lstm_91/lstm_cell_144/Sigmoid_1:y:0lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul¤
lstm_91/lstm_cell_144/SoftplusSoftplus$lstm_91/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
lstm_91/lstm_cell_144/SoftplusÄ
lstm_91/lstm_cell_144/mul_1Mul!lstm_91/lstm_cell_144/Sigmoid:y:0,lstm_91/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul_1µ
lstm_91/lstm_cell_144/add_1AddV2lstm_91/lstm_cell_144/mul:z:0lstm_91/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/add_1¥
lstm_91/lstm_cell_144/Sigmoid_2Sigmoid$lstm_91/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/lstm_cell_144/Sigmoid_2£
 lstm_91/lstm_cell_144/Softplus_1Softpluslstm_91/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2"
 lstm_91/lstm_cell_144/Softplus_1È
lstm_91/lstm_cell_144/mul_2Mul#lstm_91/lstm_cell_144/Sigmoid_2:y:0.lstm_91/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/lstm_cell_144/mul_2
%lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2'
%lstm_91/TensorArrayV2_1/element_shapeØ
lstm_91/TensorArrayV2_1TensorListReserve.lstm_91/TensorArrayV2_1/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2_1^
lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/time
 lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_91/while/maximum_iterationsz
lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/while/loop_counterí
lstm_91/whileWhile#lstm_91/while/loop_counter:output:0)lstm_91/while/maximum_iterations:output:0lstm_91/time:output:0 lstm_91/TensorArrayV2_1:handle:0lstm_91/zeros:output:0lstm_91/zeros_1:output:0 lstm_91/strided_slice_1:output:0?lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_91_lstm_cell_144_matmul_readvariableop_resource6lstm_91_lstm_cell_144_matmul_1_readvariableop_resource5lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_91_while_body_11938389*'
condR
lstm_91_while_cond_11938388*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
lstm_91/whileÅ
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2:
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_91/TensorArrayV2Stack/TensorListStackTensorListStacklstm_91/while:output:3Alstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02,
*lstm_91/TensorArrayV2Stack/TensorListStack
lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_91/strided_slice_3/stack
lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_91/strided_slice_3/stack_1
lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_3/stack_2Ê
lstm_91/strided_slice_3StridedSlice3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_91/strided_slice_3/stack:output:0(lstm_91/strided_slice_3/stack_1:output:0(lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
lstm_91/strided_slice_3
lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose_1/permÅ
lstm_91/transpose_1	Transpose3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/transpose_1v
lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/runtime¨
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02 
dense_89/MatMul/ReadVariableOp¨
dense_89/MatMulMatMul lstm_91/strided_slice_3:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/MatMul§
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_89/BiasAdd/ReadVariableOp¥
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/BiasAddÍ
IdentityIdentitydense_89/BiasAdd:output:0 ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp-^lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp,^lstm_91/lstm_cell_144/MatMul/ReadVariableOp.^lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp^lstm_91/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp2\
,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp,lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp2Z
+lstm_91/lstm_cell_144/MatMul/ReadVariableOp+lstm_91/lstm_cell_144/MatMul/ReadVariableOp2^
-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp-lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp2
lstm_91/whilelstm_91/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
P


lstm_91_while_body_11938548,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3+
'lstm_91_while_lstm_91_strided_slice_1_0g
clstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0@
<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0B
>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0A
=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0
lstm_91_while_identity
lstm_91_while_identity_1
lstm_91_while_identity_2
lstm_91_while_identity_3
lstm_91_while_identity_4
lstm_91_while_identity_5)
%lstm_91_while_lstm_91_strided_slice_1e
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor>
:lstm_91_while_lstm_cell_144_matmul_readvariableop_resource@
<lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource?
;lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource¢2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp¢1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp¢3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpÓ
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0lstm_91_while_placeholderHlstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_91/while/TensorArrayV2Read/TensorListGetItemä
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOpú
"lstm_91/while/lstm_cell_144/MatMulMatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_91/while/lstm_cell_144/MatMulê
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype025
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOpã
$lstm_91/while/lstm_cell_144/MatMul_1MatMullstm_91_while_placeholder_2;lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_91/while/lstm_cell_144/MatMul_1Ü
lstm_91/while/lstm_cell_144/addAddV2,lstm_91/while/lstm_cell_144/MatMul:product:0.lstm_91/while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_91/while/lstm_cell_144/addã
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype024
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOpé
#lstm_91/while/lstm_cell_144/BiasAddBiasAdd#lstm_91/while/lstm_cell_144/add:z:0:lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_91/while/lstm_cell_144/BiasAdd
!lstm_91/while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm_91/while/lstm_cell_144/Const
+lstm_91/while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+lstm_91/while/lstm_cell_144/split/split_dim¯
!lstm_91/while/lstm_cell_144/splitSplit4lstm_91/while/lstm_cell_144/split/split_dim:output:0,lstm_91/while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2#
!lstm_91/while/lstm_cell_144/split³
#lstm_91/while/lstm_cell_144/SigmoidSigmoid*lstm_91/while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2%
#lstm_91/while/lstm_cell_144/Sigmoid·
%lstm_91/while/lstm_cell_144/Sigmoid_1Sigmoid*lstm_91/while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%lstm_91/while/lstm_cell_144/Sigmoid_1Ã
lstm_91/while/lstm_cell_144/mulMul)lstm_91/while/lstm_cell_144/Sigmoid_1:y:0lstm_91_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2!
lstm_91/while/lstm_cell_144/mul¶
$lstm_91/while/lstm_cell_144/SoftplusSoftplus*lstm_91/while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2&
$lstm_91/while/lstm_cell_144/SoftplusÜ
!lstm_91/while/lstm_cell_144/mul_1Mul'lstm_91/while/lstm_cell_144/Sigmoid:y:02lstm_91/while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/mul_1Í
!lstm_91/while/lstm_cell_144/add_1AddV2#lstm_91/while/lstm_cell_144/mul:z:0%lstm_91/while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/add_1·
%lstm_91/while/lstm_cell_144/Sigmoid_2Sigmoid*lstm_91/while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%lstm_91/while/lstm_cell_144/Sigmoid_2µ
&lstm_91/while/lstm_cell_144/Softplus_1Softplus%lstm_91/while/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2(
&lstm_91/while/lstm_cell_144/Softplus_1à
!lstm_91/while/lstm_cell_144/mul_2Mul)lstm_91/while/lstm_cell_144/Sigmoid_2:y:04lstm_91/while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!lstm_91/while/lstm_cell_144/mul_2
2lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_91_while_placeholder_1lstm_91_while_placeholder%lstm_91/while/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_91/while/TensorArrayV2Write/TensorListSetIteml
lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add/y
lstm_91/while/addAddV2lstm_91_while_placeholderlstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/addp
lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add_1/y
lstm_91/while/add_1AddV2(lstm_91_while_lstm_91_while_loop_counterlstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/add_1
lstm_91/while/IdentityIdentitylstm_91/while/add_1:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity°
lstm_91/while/Identity_1Identity.lstm_91_while_lstm_91_while_maximum_iterations3^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_1
lstm_91/while/Identity_2Identitylstm_91/while/add:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_2Ä
lstm_91/while/Identity_3IdentityBlstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_3¸
lstm_91/while/Identity_4Identity%lstm_91/while/lstm_cell_144/mul_2:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/while/Identity_4¸
lstm_91/while/Identity_5Identity%lstm_91/while/lstm_cell_144/add_1:z:03^lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2^lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp4^lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_91/while/Identity_5"9
lstm_91_while_identitylstm_91/while/Identity:output:0"=
lstm_91_while_identity_1!lstm_91/while/Identity_1:output:0"=
lstm_91_while_identity_2!lstm_91/while/Identity_2:output:0"=
lstm_91_while_identity_3!lstm_91/while/Identity_3:output:0"=
lstm_91_while_identity_4!lstm_91/while/Identity_4:output:0"=
lstm_91_while_identity_5!lstm_91/while/Identity_5:output:0"P
%lstm_91_while_lstm_91_strided_slice_1'lstm_91_while_lstm_91_strided_slice_1_0"|
;lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource=lstm_91_while_lstm_cell_144_biasadd_readvariableop_resource_0"~
<lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource>lstm_91_while_lstm_cell_144_matmul_1_readvariableop_resource_0"z
:lstm_91_while_lstm_cell_144_matmul_readvariableop_resource<lstm_91_while_lstm_cell_144_matmul_readvariableop_resource_0"È
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2h
2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2lstm_91/while/lstm_cell_144/BiasAdd/ReadVariableOp2f
1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp1lstm_91/while/lstm_cell_144/MatMul/ReadVariableOp2j
3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp3lstm_91/while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 


K__inference_sequential_95_layer_call_and_return_conditional_losses_11938254

inputs
lstm_91_11938241
lstm_91_11938243
lstm_91_11938245
dense_89_11938248
dense_89_11938250
identity¢ dense_89/StatefulPartitionedCall¢lstm_91/StatefulPartitionedCall©
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputslstm_91_11938241lstm_91_11938243lstm_91_11938245*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119380092!
lstm_91/StatefulPartitionedCall¼
 dense_89/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_89_11938248dense_89_11938250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_89_layer_call_and_return_conditional_losses_119382022"
 dense_89/StatefulPartitionedCallÂ
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0!^dense_89/StatefulPartitionedCall ^lstm_91/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

í
lstm_91_while_cond_11938547,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3.
*lstm_91_while_less_lstm_91_strided_slice_1F
Blstm_91_while_lstm_91_while_cond_11938547___redundant_placeholder0F
Blstm_91_while_lstm_91_while_cond_11938547___redundant_placeholder1F
Blstm_91_while_lstm_91_while_cond_11938547___redundant_placeholder2F
Blstm_91_while_lstm_91_while_cond_11938547___redundant_placeholder3
lstm_91_while_identity

lstm_91/while/LessLesslstm_91_while_placeholder*lstm_91_while_less_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2
lstm_91/while/Lessu
lstm_91/while/IdentityIdentitylstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_91/while/Identity"9
lstm_91_while_identitylstm_91/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
D

while_body_11938077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
¦

í
lstm_91_while_cond_11938388,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3.
*lstm_91_while_less_lstm_91_strided_slice_1F
Blstm_91_while_lstm_91_while_cond_11938388___redundant_placeholder0F
Blstm_91_while_lstm_91_while_cond_11938388___redundant_placeholder1F
Blstm_91_while_lstm_91_while_cond_11938388___redundant_placeholder2F
Blstm_91_while_lstm_91_while_cond_11938388___redundant_placeholder3
lstm_91_while_identity

lstm_91/while/LessLesslstm_91_while_placeholder*lstm_91_while_less_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2
lstm_91/while/Lessu
lstm_91/while/IdentityIdentitylstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_91/while/Identity"9
lstm_91_while_identitylstm_91/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
¨G
	
$__inference__traced_restore_11939573
file_prefix$
 assignvariableop_dense_89_kernel$
 assignvariableop_1_dense_89_bias
assignvariableop_2_decay$
 assignvariableop_3_learning_rate
assignvariableop_4_momentum
assignvariableop_5_sgd_iter3
/assignvariableop_6_lstm_91_lstm_cell_144_kernel=
9assignvariableop_7_lstm_91_lstm_cell_144_recurrent_kernel1
-assignvariableop_8_lstm_91_lstm_cell_144_bias
assignvariableop_9_total
assignvariableop_10_count4
0assignvariableop_11_sgd_dense_89_kernel_momentum2
.assignvariableop_12_sgd_dense_89_bias_momentumA
=assignvariableop_13_sgd_lstm_91_lstm_cell_144_kernel_momentumK
Gassignvariableop_14_sgd_lstm_91_lstm_cell_144_recurrent_kernel_momentum?
;assignvariableop_15_sgd_lstm_91_lstm_cell_144_bias_momentum
identity_17¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô
valueÊBÇB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names°
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_89_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_89_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2
AssignVariableOp_2AssignVariableOpassignvariableop_2_decayIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_learning_rateIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4 
AssignVariableOp_4AssignVariableOpassignvariableop_4_momentumIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5 
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6´
AssignVariableOp_6AssignVariableOp/assignvariableop_6_lstm_91_lstm_cell_144_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¾
AssignVariableOp_7AssignVariableOp9assignvariableop_7_lstm_91_lstm_cell_144_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8²
AssignVariableOp_8AssignVariableOp-assignvariableop_8_lstm_91_lstm_cell_144_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¸
AssignVariableOp_11AssignVariableOp0assignvariableop_11_sgd_dense_89_kernel_momentumIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¶
AssignVariableOp_12AssignVariableOp.assignvariableop_12_sgd_dense_89_bias_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Å
AssignVariableOp_13AssignVariableOp=assignvariableop_13_sgd_lstm_91_lstm_cell_144_kernel_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ï
AssignVariableOp_14AssignVariableOpGassignvariableop_14_sgd_lstm_91_lstm_cell_144_recurrent_kernel_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ã
AssignVariableOp_15AssignVariableOp;assignvariableop_15_sgd_lstm_91_lstm_cell_144_bias_momentumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¾
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16±
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
µ
Í
while_cond_11938076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11938076___redundant_placeholder06
2while_while_cond_11938076___redundant_placeholder16
2while_while_cond_11938076___redundant_placeholder26
2while_while_cond_11938076___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
Ö
à
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939410

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mulb
SoftplusSoftplussplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplusl
mul_1MulSigmoid:y:0Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	Sigmoid_2a

Softplus_1Softplus	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Softplus_1p
mul_2MulSigmoid_2:y:0Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
mul_2¨
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity¬

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1¬

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/1
Ë

)sequential_95_lstm_91_while_cond_11937151H
Dsequential_95_lstm_91_while_sequential_95_lstm_91_while_loop_counterN
Jsequential_95_lstm_91_while_sequential_95_lstm_91_while_maximum_iterations+
'sequential_95_lstm_91_while_placeholder-
)sequential_95_lstm_91_while_placeholder_1-
)sequential_95_lstm_91_while_placeholder_2-
)sequential_95_lstm_91_while_placeholder_3J
Fsequential_95_lstm_91_while_less_sequential_95_lstm_91_strided_slice_1b
^sequential_95_lstm_91_while_sequential_95_lstm_91_while_cond_11937151___redundant_placeholder0b
^sequential_95_lstm_91_while_sequential_95_lstm_91_while_cond_11937151___redundant_placeholder1b
^sequential_95_lstm_91_while_sequential_95_lstm_91_while_cond_11937151___redundant_placeholder2b
^sequential_95_lstm_91_while_sequential_95_lstm_91_while_cond_11937151___redundant_placeholder3(
$sequential_95_lstm_91_while_identity
Þ
 sequential_95/lstm_91/while/LessLess'sequential_95_lstm_91_while_placeholderFsequential_95_lstm_91_while_less_sequential_95_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_95/lstm_91/while/Less
$sequential_95/lstm_91/while/IdentityIdentity$sequential_95/lstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_95/lstm_91/while/Identity"U
$sequential_95_lstm_91_while_identity-sequential_95/lstm_91/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
æ
Ï
#__inference__wrapped_model_11937243
lstm_91_inputF
Bsequential_95_lstm_91_lstm_cell_144_matmul_readvariableop_resourceH
Dsequential_95_lstm_91_lstm_cell_144_matmul_1_readvariableop_resourceG
Csequential_95_lstm_91_lstm_cell_144_biasadd_readvariableop_resource9
5sequential_95_dense_89_matmul_readvariableop_resource:
6sequential_95_dense_89_biasadd_readvariableop_resource
identity¢-sequential_95/dense_89/BiasAdd/ReadVariableOp¢,sequential_95/dense_89/MatMul/ReadVariableOp¢:sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp¢9sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp¢;sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp¢sequential_95/lstm_91/whilew
sequential_95/lstm_91/ShapeShapelstm_91_input*
T0*
_output_shapes
:2
sequential_95/lstm_91/Shape 
)sequential_95/lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_95/lstm_91/strided_slice/stack¤
+sequential_95/lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_95/lstm_91/strided_slice/stack_1¤
+sequential_95/lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_95/lstm_91/strided_slice/stack_2æ
#sequential_95/lstm_91/strided_sliceStridedSlice$sequential_95/lstm_91/Shape:output:02sequential_95/lstm_91/strided_slice/stack:output:04sequential_95/lstm_91/strided_slice/stack_1:output:04sequential_95/lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_95/lstm_91/strided_slice
!sequential_95/lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2#
!sequential_95/lstm_91/zeros/mul/yÄ
sequential_95/lstm_91/zeros/mulMul,sequential_95/lstm_91/strided_slice:output:0*sequential_95/lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_95/lstm_91/zeros/mul
"sequential_95/lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_95/lstm_91/zeros/Less/y¿
 sequential_95/lstm_91/zeros/LessLess#sequential_95/lstm_91/zeros/mul:z:0+sequential_95/lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_95/lstm_91/zeros/Less
$sequential_95/lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2&
$sequential_95/lstm_91/zeros/packed/1Û
"sequential_95/lstm_91/zeros/packedPack,sequential_95/lstm_91/strided_slice:output:0-sequential_95/lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_95/lstm_91/zeros/packed
!sequential_95/lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_95/lstm_91/zeros/ConstÍ
sequential_95/lstm_91/zerosFill+sequential_95/lstm_91/zeros/packed:output:0*sequential_95/lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
sequential_95/lstm_91/zeros
#sequential_95/lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2%
#sequential_95/lstm_91/zeros_1/mul/yÊ
!sequential_95/lstm_91/zeros_1/mulMul,sequential_95/lstm_91/strided_slice:output:0,sequential_95/lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_95/lstm_91/zeros_1/mul
$sequential_95/lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_95/lstm_91/zeros_1/Less/yÇ
"sequential_95/lstm_91/zeros_1/LessLess%sequential_95/lstm_91/zeros_1/mul:z:0-sequential_95/lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_95/lstm_91/zeros_1/Less
&sequential_95/lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_95/lstm_91/zeros_1/packed/1á
$sequential_95/lstm_91/zeros_1/packedPack,sequential_95/lstm_91/strided_slice:output:0/sequential_95/lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_95/lstm_91/zeros_1/packed
#sequential_95/lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_95/lstm_91/zeros_1/ConstÕ
sequential_95/lstm_91/zeros_1Fill-sequential_95/lstm_91/zeros_1/packed:output:0,sequential_95/lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
sequential_95/lstm_91/zeros_1¡
$sequential_95/lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_95/lstm_91/transpose/permÃ
sequential_95/lstm_91/transpose	Transposelstm_91_input-sequential_95/lstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_95/lstm_91/transpose
sequential_95/lstm_91/Shape_1Shape#sequential_95/lstm_91/transpose:y:0*
T0*
_output_shapes
:2
sequential_95/lstm_91/Shape_1¤
+sequential_95/lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_95/lstm_91/strided_slice_1/stack¨
-sequential_95/lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_95/lstm_91/strided_slice_1/stack_1¨
-sequential_95/lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_95/lstm_91/strided_slice_1/stack_2ò
%sequential_95/lstm_91/strided_slice_1StridedSlice&sequential_95/lstm_91/Shape_1:output:04sequential_95/lstm_91/strided_slice_1/stack:output:06sequential_95/lstm_91/strided_slice_1/stack_1:output:06sequential_95/lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_95/lstm_91/strided_slice_1±
1sequential_95/lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_95/lstm_91/TensorArrayV2/element_shape
#sequential_95/lstm_91/TensorArrayV2TensorListReserve:sequential_95/lstm_91/TensorArrayV2/element_shape:output:0.sequential_95/lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_95/lstm_91/TensorArrayV2ë
Ksequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_95/lstm_91/transpose:y:0Tsequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensor¤
+sequential_95/lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_95/lstm_91/strided_slice_2/stack¨
-sequential_95/lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_95/lstm_91/strided_slice_2/stack_1¨
-sequential_95/lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_95/lstm_91/strided_slice_2/stack_2
%sequential_95/lstm_91/strided_slice_2StridedSlice#sequential_95/lstm_91/transpose:y:04sequential_95/lstm_91/strided_slice_2/stack:output:06sequential_95/lstm_91/strided_slice_2/stack_1:output:06sequential_95/lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_95/lstm_91/strided_slice_2ú
9sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOpReadVariableOpBsequential_95_lstm_91_lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02;
9sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp
*sequential_95/lstm_91/lstm_cell_144/MatMulMatMul.sequential_95/lstm_91/strided_slice_2:output:0Asequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_95/lstm_91/lstm_cell_144/MatMul
;sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOpDsequential_95_lstm_91_lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02=
;sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp
,sequential_95/lstm_91/lstm_cell_144/MatMul_1MatMul$sequential_95/lstm_91/zeros:output:0Csequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_95/lstm_91/lstm_cell_144/MatMul_1ü
'sequential_95/lstm_91/lstm_cell_144/addAddV24sequential_95/lstm_91/lstm_cell_144/MatMul:product:06sequential_95/lstm_91/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_95/lstm_91/lstm_cell_144/addù
:sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOpCsequential_95_lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02<
:sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp
+sequential_95/lstm_91/lstm_cell_144/BiasAddBiasAdd+sequential_95/lstm_91/lstm_cell_144/add:z:0Bsequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_95/lstm_91/lstm_cell_144/BiasAdd
)sequential_95/lstm_91/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_95/lstm_91/lstm_cell_144/Const¬
3sequential_95/lstm_91/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_95/lstm_91/lstm_cell_144/split/split_dimÏ
)sequential_95/lstm_91/lstm_cell_144/splitSplit<sequential_95/lstm_91/lstm_cell_144/split/split_dim:output:04sequential_95/lstm_91/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2+
)sequential_95/lstm_91/lstm_cell_144/splitË
+sequential_95/lstm_91/lstm_cell_144/SigmoidSigmoid2sequential_95/lstm_91/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2-
+sequential_95/lstm_91/lstm_cell_144/SigmoidÏ
-sequential_95/lstm_91/lstm_cell_144/Sigmoid_1Sigmoid2sequential_95/lstm_91/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2/
-sequential_95/lstm_91/lstm_cell_144/Sigmoid_1æ
'sequential_95/lstm_91/lstm_cell_144/mulMul1sequential_95/lstm_91/lstm_cell_144/Sigmoid_1:y:0&sequential_95/lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2)
'sequential_95/lstm_91/lstm_cell_144/mulÎ
,sequential_95/lstm_91/lstm_cell_144/SoftplusSoftplus2sequential_95/lstm_91/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2.
,sequential_95/lstm_91/lstm_cell_144/Softplusü
)sequential_95/lstm_91/lstm_cell_144/mul_1Mul/sequential_95/lstm_91/lstm_cell_144/Sigmoid:y:0:sequential_95/lstm_91/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2+
)sequential_95/lstm_91/lstm_cell_144/mul_1í
)sequential_95/lstm_91/lstm_cell_144/add_1AddV2+sequential_95/lstm_91/lstm_cell_144/mul:z:0-sequential_95/lstm_91/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2+
)sequential_95/lstm_91/lstm_cell_144/add_1Ï
-sequential_95/lstm_91/lstm_cell_144/Sigmoid_2Sigmoid2sequential_95/lstm_91/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2/
-sequential_95/lstm_91/lstm_cell_144/Sigmoid_2Í
.sequential_95/lstm_91/lstm_cell_144/Softplus_1Softplus-sequential_95/lstm_91/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`20
.sequential_95/lstm_91/lstm_cell_144/Softplus_1
)sequential_95/lstm_91/lstm_cell_144/mul_2Mul1sequential_95/lstm_91/lstm_cell_144/Sigmoid_2:y:0<sequential_95/lstm_91/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2+
)sequential_95/lstm_91/lstm_cell_144/mul_2»
3sequential_95/lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   25
3sequential_95/lstm_91/TensorArrayV2_1/element_shape
%sequential_95/lstm_91/TensorArrayV2_1TensorListReserve<sequential_95/lstm_91/TensorArrayV2_1/element_shape:output:0.sequential_95/lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_95/lstm_91/TensorArrayV2_1z
sequential_95/lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_95/lstm_91/time«
.sequential_95/lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_95/lstm_91/while/maximum_iterations
(sequential_95/lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_95/lstm_91/while/loop_counter¿
sequential_95/lstm_91/whileWhile1sequential_95/lstm_91/while/loop_counter:output:07sequential_95/lstm_91/while/maximum_iterations:output:0#sequential_95/lstm_91/time:output:0.sequential_95/lstm_91/TensorArrayV2_1:handle:0$sequential_95/lstm_91/zeros:output:0&sequential_95/lstm_91/zeros_1:output:0.sequential_95/lstm_91/strided_slice_1:output:0Msequential_95/lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_95_lstm_91_lstm_cell_144_matmul_readvariableop_resourceDsequential_95_lstm_91_lstm_cell_144_matmul_1_readvariableop_resourceCsequential_95_lstm_91_lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*5
body-R+
)sequential_95_lstm_91_while_body_11937152*5
cond-R+
)sequential_95_lstm_91_while_cond_11937151*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
sequential_95/lstm_91/whileá
Fsequential_95/lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2H
Fsequential_95/lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_95/lstm_91/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_95/lstm_91/while:output:3Osequential_95/lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02:
8sequential_95/lstm_91/TensorArrayV2Stack/TensorListStack­
+sequential_95/lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_95/lstm_91/strided_slice_3/stack¨
-sequential_95/lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_95/lstm_91/strided_slice_3/stack_1¨
-sequential_95/lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_95/lstm_91/strided_slice_3/stack_2
%sequential_95/lstm_91/strided_slice_3StridedSliceAsequential_95/lstm_91/TensorArrayV2Stack/TensorListStack:tensor:04sequential_95/lstm_91/strided_slice_3/stack:output:06sequential_95/lstm_91/strided_slice_3/stack_1:output:06sequential_95/lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2'
%sequential_95/lstm_91/strided_slice_3¥
&sequential_95/lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_95/lstm_91/transpose_1/permý
!sequential_95/lstm_91/transpose_1	TransposeAsequential_95/lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_95/lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2#
!sequential_95/lstm_91/transpose_1
sequential_95/lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_95/lstm_91/runtimeÒ
,sequential_95/dense_89/MatMul/ReadVariableOpReadVariableOp5sequential_95_dense_89_matmul_readvariableop_resource*
_output_shapes

:`*
dtype02.
,sequential_95/dense_89/MatMul/ReadVariableOpà
sequential_95/dense_89/MatMulMatMul.sequential_95/lstm_91/strided_slice_3:output:04sequential_95/dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_95/dense_89/MatMulÑ
-sequential_95/dense_89/BiasAdd/ReadVariableOpReadVariableOp6sequential_95_dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_95/dense_89/BiasAdd/ReadVariableOpÝ
sequential_95/dense_89/BiasAddBiasAdd'sequential_95/dense_89/MatMul:product:05sequential_95/dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_95/dense_89/BiasAdd¯
IdentityIdentity'sequential_95/dense_89/BiasAdd:output:0.^sequential_95/dense_89/BiasAdd/ReadVariableOp-^sequential_95/dense_89/MatMul/ReadVariableOp;^sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp:^sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp<^sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp^sequential_95/lstm_91/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ:::::2^
-sequential_95/dense_89/BiasAdd/ReadVariableOp-sequential_95/dense_89/BiasAdd/ReadVariableOp2\
,sequential_95/dense_89/MatMul/ReadVariableOp,sequential_95/dense_89/MatMul/ReadVariableOp2x
:sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp:sequential_95/lstm_91/lstm_cell_144/BiasAdd/ReadVariableOp2v
9sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp9sequential_95/lstm_91/lstm_cell_144/MatMul/ReadVariableOp2z
;sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp;sequential_95/lstm_91/lstm_cell_144/MatMul_1/ReadVariableOp2:
sequential_95/lstm_91/whilesequential_95/lstm_91/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_91_input


*__inference_lstm_91_layer_call_fn_11938997

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_91_layer_call_and_return_conditional_losses_119381622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á

+__inference_dense_89_layer_call_fn_11939344

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_89_layer_call_and_return_conditional_losses_119382022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Á
Ð
0__inference_lstm_cell_144_layer_call_fn_11939444

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
states/1
\
ú
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938162

inputs0
,lstm_cell_144_matmul_readvariableop_resource2
.lstm_cell_144_matmul_1_readvariableop_resource1
-lstm_cell_144_biasadd_readvariableop_resource
identity¢$lstm_cell_144/BiasAdd/ReadVariableOp¢#lstm_cell_144/MatMul/ReadVariableOp¢%lstm_cell_144/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¸
#lstm_cell_144/MatMul/ReadVariableOpReadVariableOp,lstm_cell_144_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#lstm_cell_144/MatMul/ReadVariableOp°
lstm_cell_144/MatMulMatMulstrided_slice_2:output:0+lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul¾
%lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_144_matmul_1_readvariableop_resource*
_output_shapes
:	`*
dtype02'
%lstm_cell_144/MatMul_1/ReadVariableOp¬
lstm_cell_144/MatMul_1MatMulzeros:output:0-lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/MatMul_1¤
lstm_cell_144/addAddV2lstm_cell_144/MatMul:product:0 lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/add·
$lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_144_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_144/BiasAdd/ReadVariableOp±
lstm_cell_144/BiasAddBiasAddlstm_cell_144/add:z:0,lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_144/BiasAddl
lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/Const
lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_144/split/split_dim÷
lstm_cell_144/splitSplit&lstm_cell_144/split/split_dim:output:0lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
lstm_cell_144/split
lstm_cell_144/SigmoidSigmoidlstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid
lstm_cell_144/Sigmoid_1Sigmoidlstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_1
lstm_cell_144/mulMullstm_cell_144/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul
lstm_cell_144/SoftplusSoftpluslstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus¤
lstm_cell_144/mul_1Mullstm_cell_144/Sigmoid:y:0$lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_1
lstm_cell_144/add_1AddV2lstm_cell_144/mul:z:0lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/add_1
lstm_cell_144/Sigmoid_2Sigmoidlstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Sigmoid_2
lstm_cell_144/Softplus_1Softpluslstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/Softplus_1¨
lstm_cell_144/mul_2Mullstm_cell_144/Sigmoid_2:y:0&lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
lstm_cell_144/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterõ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_144_matmul_readvariableop_resource.lstm_cell_144_matmul_1_readvariableop_resource-lstm_cell_144_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_11938077*
condR
while_cond_11938076*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ`   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeé
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_144/BiasAdd/ReadVariableOp$^lstm_cell_144/MatMul/ReadVariableOp&^lstm_cell_144/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_144/BiasAdd/ReadVariableOp$lstm_cell_144/BiasAdd/ReadVariableOp2J
#lstm_cell_144/MatMul/ReadVariableOp#lstm_cell_144/MatMul/ReadVariableOp2N
%lstm_cell_144/MatMul_1/ReadVariableOp%lstm_cell_144/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Í
while_cond_11939217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_11939217___redundant_placeholder06
2while_while_cond_11939217___redundant_placeholder16
2while_while_cond_11939217___redundant_placeholder26
2while_while_cond_11939217___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
:
D

while_body_11939065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
Û%
¦
while_body_11937775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"
while_lstm_cell_144_11937799_0"
while_lstm_cell_144_11937801_0"
while_lstm_cell_144_11937803_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor 
while_lstm_cell_144_11937799 
while_lstm_cell_144_11937801 
while_lstm_cell_144_11937803¢+while/lstm_cell_144/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemï
+while/lstm_cell_144/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_144_11937799_0while_lstm_cell_144_11937801_0while_lstm_cell_144_11937803_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_119373492-
+while/lstm_cell_144/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_144/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2»
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_144/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Æ
while/Identity_4Identity4while/lstm_cell_144/StatefulPartitionedCall:output:1,^while/lstm_cell_144/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4Æ
while/Identity_5Identity4while/lstm_cell_144/StatefulPartitionedCall:output:2,^while/lstm_cell_144/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_144_11937799while_lstm_cell_144_11937799_0">
while_lstm_cell_144_11937801while_lstm_cell_144_11937801_0">
while_lstm_cell_144_11937803while_lstm_cell_144_11937803_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2Z
+while/lstm_cell_144/StatefulPartitionedCall+while/lstm_cell_144/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
D

while_body_11937924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_144_matmul_readvariableop_resource_0:
6while_lstm_cell_144_matmul_1_readvariableop_resource_09
5while_lstm_cell_144_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_144_matmul_readvariableop_resource8
4while_lstm_cell_144_matmul_1_readvariableop_resource7
3while_lstm_cell_144_biasadd_readvariableop_resource¢*while/lstm_cell_144/BiasAdd/ReadVariableOp¢)while/lstm_cell_144/MatMul/ReadVariableOp¢+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_144/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_144_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02+
)while/lstm_cell_144/MatMul/ReadVariableOpÚ
while/lstm_cell_144/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_144/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMulÒ
+while/lstm_cell_144/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_144_matmul_1_readvariableop_resource_0*
_output_shapes
:	`*
dtype02-
+while/lstm_cell_144/MatMul_1/ReadVariableOpÃ
while/lstm_cell_144/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_144/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/MatMul_1¼
while/lstm_cell_144/addAddV2$while/lstm_cell_144/MatMul:product:0&while/lstm_cell_144/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/addË
*while/lstm_cell_144/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_144_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_144/BiasAdd/ReadVariableOpÉ
while/lstm_cell_144/BiasAddBiasAddwhile/lstm_cell_144/add:z:02while/lstm_cell_144/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_144/BiasAddx
while/lstm_cell_144/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_144/Const
#while/lstm_cell_144/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_144/split/split_dim
while/lstm_cell_144/splitSplit,while/lstm_cell_144/split/split_dim:output:0$while/lstm_cell_144/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`*
	num_split2
while/lstm_cell_144/split
while/lstm_cell_144/SigmoidSigmoid"while/lstm_cell_144/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid
while/lstm_cell_144/Sigmoid_1Sigmoid"while/lstm_cell_144/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_1£
while/lstm_cell_144/mulMul!while/lstm_cell_144/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul
while/lstm_cell_144/SoftplusSoftplus"while/lstm_cell_144/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Softplus¼
while/lstm_cell_144/mul_1Mulwhile/lstm_cell_144/Sigmoid:y:0*while/lstm_cell_144/Softplus:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_1­
while/lstm_cell_144/add_1AddV2while/lstm_cell_144/mul:z:0while/lstm_cell_144/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/add_1
while/lstm_cell_144/Sigmoid_2Sigmoid"while/lstm_cell_144/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/Sigmoid_2
while/lstm_cell_144/Softplus_1Softpluswhile/lstm_cell_144/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2 
while/lstm_cell_144/Softplus_1À
while/lstm_cell_144/mul_2Mul!while/lstm_cell_144/Sigmoid_2:y:0,while/lstm_cell_144/Softplus_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/lstm_cell_144/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_144/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_144/mul_2:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_144/add_1:z:0+^while/lstm_cell_144/BiasAdd/ReadVariableOp*^while/lstm_cell_144/MatMul/ReadVariableOp,^while/lstm_cell_144/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_144_biasadd_readvariableop_resource5while_lstm_cell_144_biasadd_readvariableop_resource_0"n
4while_lstm_cell_144_matmul_1_readvariableop_resource6while_lstm_cell_144_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_144_matmul_readvariableop_resource4while_lstm_cell_144_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`: : :::2X
*while/lstm_cell_144/BiasAdd/ReadVariableOp*while/lstm_cell_144/BiasAdd/ReadVariableOp2V
)while/lstm_cell_144/MatMul/ReadVariableOp)while/lstm_cell_144/MatMul/ReadVariableOp2Z
+while/lstm_cell_144/MatMul_1/ReadVariableOp+while/lstm_cell_144/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`:

_output_shapes
: :

_output_shapes
: 
	
ß
F__inference_dense_89_layer_call_and_return_conditional_losses_11939335

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_91_input:
serving_default_lstm_91_input:0ÿÿÿÿÿÿÿÿÿ<
dense_890
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¦ 
ì$
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
*@&call_and_return_all_conditional_losses
A_default_save_signature"Ó"
_tf_keras_sequential´"{"class_name": "Sequential", "name": "sequential_95", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_95", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_91_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "softplus", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "recurrent_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "bias_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_89", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 7]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 7]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_95", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_91_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "softplus", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "recurrent_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "bias_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_89", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "clipnorm": 1.0, "clipvalue": 0.5, "learning_rate": 0.0024999999441206455, "decay": 0.0, "momentum": 0.8999999761581421, "nesterov": false}}}}
ë
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
B__call__
*C&call_and_return_all_conditional_losses"Â
_tf_keras_rnn_layer¤{"class_name": "LSTM", "name": "lstm_91", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 96, "activation": "softplus", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "recurrent_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "bias_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 7]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 7]}}
ó

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
D__call__
*E&call_and_return_all_conditional_losses"Î
_tf_keras_layer´{"class_name": "Dense", "name": "dense_89", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_89", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96]}}

	decay
learning_rate
momentum
itermomentum:momentum;momentum<momentum=momentum>"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
metrics

layers
layer_regularization_losses
	variables
trainable_variables
non_trainable_variables
 layer_metrics
regularization_losses
?__call__
A_default_save_signature
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
,
Fserving_default"
signature_map
ä	

kernel
recurrent_kernel
bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
G__call__
*H&call_and_return_all_conditional_losses"©
_tf_keras_layer{"class_name": "LSTMCell", "name": "lstm_cell_144", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_144", "trainable": true, "dtype": "float32", "units": 96, "activation": "softplus", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "recurrent_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "bias_constraint": {"class_name": "MaxNorm", "config": {"max_value": 3, "axis": 0}}, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹
%metrics

&states

'layers
(layer_regularization_losses
	variables
trainable_variables
)non_trainable_variables
*layer_metrics
regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
!:`2dense_89/kernel
:2dense_89/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
+metrics
,layer_regularization_losses

-layers
	variables
trainable_variables
.non_trainable_variables
/layer_metrics
regularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
/:-	2lstm_91/lstm_cell_144/kernel
9:7	`2&lstm_91/lstm_cell_144/recurrent_kernel
):'2lstm_91/lstm_cell_144/bias
'
00"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
1metrics
2layer_regularization_losses

3layers
!	variables
"trainable_variables
4non_trainable_variables
5layer_metrics
#regularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
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
»
	6total
	7count
8	variables
9	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
:  (2total
:  (2count
.
60
71"
trackable_list_wrapper
-
8	variables"
_generic_user_object
,:*`2SGD/dense_89/kernel/momentum
&:$2SGD/dense_89/bias/momentum
::8	2)SGD/lstm_91/lstm_cell_144/kernel/momentum
D:B	`23SGD/lstm_91/lstm_cell_144/recurrent_kernel/momentum
4:22'SGD/lstm_91/lstm_cell_144/bias/momentum
2
0__inference_sequential_95_layer_call_fn_11938267
0__inference_sequential_95_layer_call_fn_11938669
0__inference_sequential_95_layer_call_fn_11938298
0__inference_sequential_95_layer_call_fn_11938654À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938480
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938219
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938639
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938235À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
#__inference__wrapped_model_11937243À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
2
*__inference_lstm_91_layer_call_fn_11939314
*__inference_lstm_91_layer_call_fn_11938997
*__inference_lstm_91_layer_call_fn_11939325
*__inference_lstm_91_layer_call_fn_11938986Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷2ô
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939150
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939303
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938822
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938975Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Õ2Ò
+__inference_dense_89_layer_call_fn_11939344¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_89_layer_call_and_return_conditional_losses_11939335¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÓBÐ
&__inference_signature_wrapper_11938321lstm_91_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥
0__inference_lstm_cell_144_layer_call_fn_11939444
0__inference_lstm_cell_144_layer_call_fn_11939427¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939410
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939377¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#__inference__wrapped_model_11937243x:¢7
0¢-
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_89"
dense_89ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_89_layer_call_and_return_conditional_losses_11939335\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ`
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_89_layer_call_fn_11939344O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ`
ª "ÿÿÿÿÿÿÿÿÿ¶
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938822m?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ`
 ¶
E__inference_lstm_91_layer_call_and_return_conditional_losses_11938975m?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ`
 Æ
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939150}O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ`
 Æ
E__inference_lstm_91_layer_call_and_return_conditional_losses_11939303}O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ`
 
*__inference_lstm_91_layer_call_fn_11938986`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ`
*__inference_lstm_91_layer_call_fn_11938997`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ`
*__inference_lstm_91_layer_call_fn_11939314pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ`
*__inference_lstm_91_layer_call_fn_11939325pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ`Í
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939377ý¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ`
"
states/1ÿÿÿÿÿÿÿÿÿ`
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ`
EB

0/1/0ÿÿÿÿÿÿÿÿÿ`

0/1/1ÿÿÿÿÿÿÿÿÿ`
 Í
K__inference_lstm_cell_144_layer_call_and_return_conditional_losses_11939410ý¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ`
"
states/1ÿÿÿÿÿÿÿÿÿ`
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ`
EB

0/1/0ÿÿÿÿÿÿÿÿÿ`

0/1/1ÿÿÿÿÿÿÿÿÿ`
 ¢
0__inference_lstm_cell_144_layer_call_fn_11939427í¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ`
"
states/1ÿÿÿÿÿÿÿÿÿ`
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ`
A>

1/0ÿÿÿÿÿÿÿÿÿ`

1/1ÿÿÿÿÿÿÿÿÿ`¢
0__inference_lstm_cell_144_layer_call_fn_11939444í¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ`
"
states/1ÿÿÿÿÿÿÿÿÿ`
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ`
A>

1/0ÿÿÿÿÿÿÿÿÿ`

1/1ÿÿÿÿÿÿÿÿÿ`Á
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938219rB¢?
8¢5
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938235rB¢?
8¢5
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938480k;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
K__inference_sequential_95_layer_call_and_return_conditional_losses_11938639k;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_sequential_95_layer_call_fn_11938267eB¢?
8¢5
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_95_layer_call_fn_11938298eB¢?
8¢5
+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_95_layer_call_fn_11938654^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_95_layer_call_fn_11938669^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ´
&__inference_signature_wrapper_11938321K¢H
¢ 
Aª>
<
lstm_91_input+(
lstm_91_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_89"
dense_89ÿÿÿÿÿÿÿÿÿ