       ЃK"	   *yзAbrain.Event:2еpћzж*      mWэ	Uњ*yзA"ЪU
^
SGD/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
r
SGD/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
К
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
use_locking(*
T0	*!
_class
loc:@SGD/iterations*
validate_shape(*
_output_shapes
: 
s
SGD/iterations/readIdentitySGD/iterations*
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
_output_shapes
: *
valueB
 *
з#<*
dtype0
j
SGD/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
use_locking(*
T0*
_class
loc:@SGD/lr*
validate_shape(*
_output_shapes
: 
[
SGD/lr/readIdentitySGD/lr*
T0*
_class
loc:@SGD/lr*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
В
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
T0*
_class
loc:@SGD/momentum*
validate_shape(*
_output_shapes
: *
use_locking(
m
SGD/momentum/readIdentitySGD/momentum*
T0*
_class
loc:@SGD/momentum*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
	SGD/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
І
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
use_locking(*
T0*
_class
loc:@SGD/decay*
validate_shape(*
_output_shapes
: 
d
SGD/decay/readIdentity	SGD/decay*
T0*
_class
loc:@SGD/decay*
_output_shapes
: 

images_inputPlaceholder*
dtype0*5
_output_shapes#
!:џџџџџџџџџ**
shape!:џџџџџџџџџ
U
lambda_to0/mul/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
lambda_to0/mulMulimages_inputlambda_to0/mul/y*
T0*5
_output_shapes#
!:џџџџџџџџџ

lambda_to0/PlaceholderPlaceholder*
dtype0*5
_output_shapes#
!:џџџџџџџџџ**
shape!:џџџџџџџџџ
W
lambda_to0/mul_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lambda_to0/mul_1Mullambda_to0/Placeholderlambda_to0/mul_1/y*5
_output_shapes#
!:џџџџџџџџџ*
T0
]
flatten_1/ShapeShapelambda_to0/mul*
_output_shapes
:*
T0*
out_type0
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
flatten_1/stack/0Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1/ReshapeReshapelambda_to0/mulflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *]ФЛ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *]Ф;*
dtype0*
_output_shapes
: 
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape* 
_output_shapes
:
*
seed2шам*
seedБџх)*
T0*
dtype0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1/kernel
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
shared_name *
dtype0
О
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel* 
_output_shapes
:
*
T0*!
_class
loc:@dense_1/kernel
Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Љ
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
a
lambda_toPREDICT_VALUE/add/yConst*
valueB
 *ц5*
dtype0*
_output_shapes
: 

lambda_toPREDICT_VALUE/addAdddense_1/BiasAddlambda_toPREDICT_VALUE/add/y*
T0*'
_output_shapes
:џџџџџџџџџ

lambda_toPREDICT_VALUE_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ

%lambda_toPREDICT_VALUE_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Ё
$loss/lambda_toPREDICT_VALUE_loss/subSublambda_toPREDICT_VALUE/addlambda_toPREDICT_VALUE_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

$loss/lambda_toPREDICT_VALUE_loss/AbsAbs$loss/lambda_toPREDICT_VALUE_loss/sub*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

7loss/lambda_toPREDICT_VALUE_loss/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
з
%loss/lambda_toPREDICT_VALUE_loss/MeanMean$loss/lambda_toPREDICT_VALUE_loss/Abs7loss/lambda_toPREDICT_VALUE_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
|
9loss/lambda_toPREDICT_VALUE_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
м
'loss/lambda_toPREDICT_VALUE_loss/Mean_1Mean%loss/lambda_toPREDICT_VALUE_loss/Mean9loss/lambda_toPREDICT_VALUE_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
Љ
$loss/lambda_toPREDICT_VALUE_loss/mulMul'loss/lambda_toPREDICT_VALUE_loss/Mean_1%lambda_toPREDICT_VALUE_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
p
+loss/lambda_toPREDICT_VALUE_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
З
)loss/lambda_toPREDICT_VALUE_loss/NotEqualNotEqual%lambda_toPREDICT_VALUE_sample_weights+loss/lambda_toPREDICT_VALUE_loss/NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0

%loss/lambda_toPREDICT_VALUE_loss/CastCast)loss/lambda_toPREDICT_VALUE_loss/NotEqual*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
p
&loss/lambda_toPREDICT_VALUE_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
'loss/lambda_toPREDICT_VALUE_loss/Mean_2Mean%loss/lambda_toPREDICT_VALUE_loss/Cast&loss/lambda_toPREDICT_VALUE_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
А
(loss/lambda_toPREDICT_VALUE_loss/truedivRealDiv$loss/lambda_toPREDICT_VALUE_loss/mul'loss/lambda_toPREDICT_VALUE_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
r
(loss/lambda_toPREDICT_VALUE_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
С
'loss/lambda_toPREDICT_VALUE_loss/Mean_3Mean(loss/lambda_toPREDICT_VALUE_loss/truediv(loss/lambda_toPREDICT_VALUE_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
loss/mulMul
loss/mul/x'loss/lambda_toPREDICT_VALUE_loss/Mean_3*
T0*
_output_shapes
: 
|
training/SGD/gradients/ShapeConst*
_output_shapes
: *
_class
loc:@loss/mul*
valueB *
dtype0

 training/SGD/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul*
valueB
 *  ?
Г
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
^
training/SGD/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ј
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*
use_locking( *
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: 
?
training/group_depsNoOp	^loss/mul^training/SGD/AssignAdd


group_depsNoOp	^loss/mul

IsVariableInitializedIsVariableInitializedSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
x
IsVariableInitialized_1IsVariableInitializedSGD/lr*
dtype0*
_output_shapes
: *
_class
loc:@SGD/lr

IsVariableInitialized_2IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
~
IsVariableInitialized_3IsVariableInitialized	SGD/decay*
dtype0*
_output_shapes
: *
_class
loc:@SGD/decay

IsVariableInitialized_4IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_1/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/bias

initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^dense_1/bias/Assign^dense_1/kernel/Assign"^EВ*8      eg"ў	єS	*yзAJp
њ
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
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
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
і
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.9.02v1.9.0-0-g25c197e023ЪU
^
SGD/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
r
SGD/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
К
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*!
_class
loc:@SGD/iterations
s
SGD/iterations/readIdentitySGD/iterations*
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
_output_shapes
: *
valueB
 *
з#<*
dtype0
j
SGD/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@SGD/lr*
validate_shape(
[
SGD/lr/readIdentitySGD/lr*
_output_shapes
: *
T0*
_class
loc:@SGD/lr
_
SGD/momentum/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
В
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@SGD/momentum
m
SGD/momentum/readIdentitySGD/momentum*
_output_shapes
: *
T0*
_class
loc:@SGD/momentum
\
SGD/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
	SGD/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
І
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
use_locking(*
T0*
_class
loc:@SGD/decay*
validate_shape(*
_output_shapes
: 
d
SGD/decay/readIdentity	SGD/decay*
T0*
_class
loc:@SGD/decay*
_output_shapes
: 

images_inputPlaceholder*
dtype0*5
_output_shapes#
!:џџџџџџџџџ**
shape!:џџџџџџџџџ
U
lambda_to0/mul/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
lambda_to0/mulMulimages_inputlambda_to0/mul/y*5
_output_shapes#
!:џџџџџџџџџ*
T0

lambda_to0/PlaceholderPlaceholder*
dtype0*5
_output_shapes#
!:џџџџџџџџџ**
shape!:џџџџџџџџџ
W
lambda_to0/mul_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

lambda_to0/mul_1Mullambda_to0/Placeholderlambda_to0/mul_1/y*
T0*5
_output_shapes#
!:џџџџџџџџџ
]
flatten_1/ShapeShapelambda_to0/mul*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
i
flatten_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
\
flatten_1/stack/0Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1/ReshapeReshapelambda_to0/mulflatten_1/stack*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *]ФЛ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *]Ф;*
dtype0*
_output_shapes
: 
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape* 
_output_shapes
:
*
seed2шам*
seedБџх)*
T0*
dtype0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
*
T0

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1/kernel
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
*
	container *
shape:

О
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform* 
_output_shapes
:
*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Љ
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
:*
T0

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
a
lambda_toPREDICT_VALUE/add/yConst*
valueB
 *ц5*
dtype0*
_output_shapes
: 

lambda_toPREDICT_VALUE/addAdddense_1/BiasAddlambda_toPREDICT_VALUE/add/y*
T0*'
_output_shapes
:џџџџџџџџџ

lambda_toPREDICT_VALUE_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ

%lambda_toPREDICT_VALUE_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Ё
$loss/lambda_toPREDICT_VALUE_loss/subSublambda_toPREDICT_VALUE/addlambda_toPREDICT_VALUE_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

$loss/lambda_toPREDICT_VALUE_loss/AbsAbs$loss/lambda_toPREDICT_VALUE_loss/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

7loss/lambda_toPREDICT_VALUE_loss/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
з
%loss/lambda_toPREDICT_VALUE_loss/MeanMean$loss/lambda_toPREDICT_VALUE_loss/Abs7loss/lambda_toPREDICT_VALUE_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
|
9loss/lambda_toPREDICT_VALUE_loss/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
м
'loss/lambda_toPREDICT_VALUE_loss/Mean_1Mean%loss/lambda_toPREDICT_VALUE_loss/Mean9loss/lambda_toPREDICT_VALUE_loss/Mean_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
Љ
$loss/lambda_toPREDICT_VALUE_loss/mulMul'loss/lambda_toPREDICT_VALUE_loss/Mean_1%lambda_toPREDICT_VALUE_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
p
+loss/lambda_toPREDICT_VALUE_loss/NotEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
З
)loss/lambda_toPREDICT_VALUE_loss/NotEqualNotEqual%lambda_toPREDICT_VALUE_sample_weights+loss/lambda_toPREDICT_VALUE_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ

%loss/lambda_toPREDICT_VALUE_loss/CastCast)loss/lambda_toPREDICT_VALUE_loss/NotEqual*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
p
&loss/lambda_toPREDICT_VALUE_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
М
'loss/lambda_toPREDICT_VALUE_loss/Mean_2Mean%loss/lambda_toPREDICT_VALUE_loss/Cast&loss/lambda_toPREDICT_VALUE_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
А
(loss/lambda_toPREDICT_VALUE_loss/truedivRealDiv$loss/lambda_toPREDICT_VALUE_loss/mul'loss/lambda_toPREDICT_VALUE_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ*
T0
r
(loss/lambda_toPREDICT_VALUE_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
С
'loss/lambda_toPREDICT_VALUE_loss/Mean_3Mean(loss/lambda_toPREDICT_VALUE_loss/truediv(loss/lambda_toPREDICT_VALUE_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
loss/mulMul
loss/mul/x'loss/lambda_toPREDICT_VALUE_loss/Mean_3*
T0*
_output_shapes
: 
|
training/SGD/gradients/ShapeConst*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul*
valueB 

 training/SGD/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Г
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
^
training/SGD/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ј
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0	*!
_class
loc:@SGD/iterations
?
training/group_depsNoOp	^loss/mul^training/SGD/AssignAdd


group_depsNoOp	^loss/mul

IsVariableInitializedIsVariableInitializedSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
x
IsVariableInitialized_1IsVariableInitializedSGD/lr*
dtype0*
_output_shapes
: *
_class
loc:@SGD/lr

IsVariableInitialized_2IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 
~
IsVariableInitialized_3IsVariableInitialized	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 

initNoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^dense_1/bias/Assign^dense_1/kernel/Assign""
trainable_variables
b
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:08
B
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:08
Z
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:08
N
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:08
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08"
	variables
b
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:08
B
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:08
Z
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:08
N
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:08
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08 ђ|Џ