       £K"	  	8SÖAbrain.Event:2RĖÄ¤      Q	,¾	8SÖA"·É

conv2d_1_inputPlaceholder*$
shape:’’’’’’’’’  *
dtype0*/
_output_shapes
:’’’’’’’’’  
v
conv2d_1/random_uniform/shapeConst*%
valueB"         @   *
_output_shapes
:*
dtype0
`
conv2d_1/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *¶hĻ½
`
conv2d_1/random_uniform/maxConst*
valueB
 *¶hĻ=*
_output_shapes
: *
dtype0
±
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*&
_output_shapes
:@*
seed2P*
T0*
seed±’å)*
dtype0
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
_output_shapes
: *
T0

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*&
_output_shapes
:@*
T0

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
:@

conv2d_1/kernel
VariableV2*
shared_name *
dtype0*
shape:@*&
_output_shapes
:@*
	container 
Č
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:@*
T0*
validate_shape(*
use_locking(

conv2d_1/kernel/readIdentityconv2d_1/kernel*&
_output_shapes
:@*"
_class
loc:@conv2d_1/kernel*
T0
p
conv2d_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_1/transpose	Transposeconv2d_1_inputconv2d_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’  
s
conv2d_1/convolution/ShapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
s
"conv2d_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ś
conv2d_1/convolutionConv2Dconv2d_1/transposeconv2d_1/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:’’’’’’’’’@
r
conv2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_1/transpose_1	Transposeconv2d_1/convolutionconv2d_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
g
activation_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@
v
conv2d_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
conv2d_2/random_uniform/minConst*
valueB
 *:Ķ½*
_output_shapes
: *
dtype0
`
conv2d_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Ķ=
²
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
dtype0*
seed±’å)*
T0*&
_output_shapes
:@@*
seed2½Įū
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
_output_shapes
: *
T0

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*
T0*&
_output_shapes
:@@

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*
T0*&
_output_shapes
:@@

conv2d_2/kernel
VariableV2*&
_output_shapes
:@@*
	container *
shape:@@*
dtype0*
shared_name 
Č
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel

conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel
p
conv2d_2/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2/transpose	Transposeactivation_1/Eluconv2d_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
s
conv2d_2/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ś
conv2d_2/convolutionConv2Dconv2d_2/transposeconv2d_2/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
T0*
use_cudnn_on_gpu(
r
conv2d_2/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2/transpose_1	Transposeconv2d_2/convolutionconv2d_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
g
activation_2/EluEluconv2d_2/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0
c
dropout_1/keras_learning_phasePlaceholder*
dtype0
*
shape:*
_output_shapes
:

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
:
e
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ē
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*#
_class
loc:@activation_2/Elu*
T0

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Č
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*/
_output_shapes
:’’’’’’’’’@*
seed2čÉ°
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ź
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
¼
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
¤
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0
{
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
Å
dropout_1/cond/Switch_1Switchactivation_2/Eludropout_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*#
_class
loc:@activation_2/Elu*
T0

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’@: 
v
conv2d_3/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
valueB
 *:Ķ½*
_output_shapes
: *
dtype0
`
conv2d_3/random_uniform/maxConst*
valueB
 *:Ķ=*
_output_shapes
: *
dtype0
²
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*&
_output_shapes
:@@*
seed2§Ķ*
dtype0*
T0*
seed±’å)
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
_output_shapes
: *
T0

conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*&
_output_shapes
:@@*
T0

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*
T0*&
_output_shapes
:@@

conv2d_3/kernel
VariableV2*&
_output_shapes
:@@*
	container *
dtype0*
shared_name *
shape:@@
Č
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@*
T0
p
conv2d_3/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_3/transpose	Transposedropout_1/cond/Mergeconv2d_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
s
conv2d_3/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
s
"conv2d_3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ś
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
T0*
use_cudnn_on_gpu(
r
conv2d_3/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3/transpose_1	Transposeconv2d_3/convolutionconv2d_3/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
g
activation_3/EluEluconv2d_3/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
:
e
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ē
dropout_2/cond/mul/SwitchSwitchactivation_3/Eludropout_2/cond/pred_id*
T0*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ē
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Ł«*
T0*
seed±’å)*
dtype0
§
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ź
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@
¼
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
¤
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0
{
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Å
dropout_2/cond/Switch_1Switchactivation_3/Eludropout_2/cond/pred_id*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’@: 
v
conv2d_4/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @       
`
conv2d_4/random_uniform/minConst*
valueB
 *«ŖŖ½*
dtype0*
_output_shapes
: 
`
conv2d_4/random_uniform/maxConst*
valueB
 *«ŖŖ=*
_output_shapes
: *
dtype0
²
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*&
_output_shapes
:@ *
seed2§×*
T0*
seed±’å)*
dtype0
}
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
T0*
_output_shapes
: 

conv2d_4/random_uniform/mulMul%conv2d_4/random_uniform/RandomUniformconv2d_4/random_uniform/sub*
T0*&
_output_shapes
:@ 

conv2d_4/random_uniformAddconv2d_4/random_uniform/mulconv2d_4/random_uniform/min*&
_output_shapes
:@ *
T0

conv2d_4/kernel
VariableV2*&
_output_shapes
:@ *
	container *
shape:@ *
dtype0*
shared_name 
Č
conv2d_4/kernel/AssignAssignconv2d_4/kernelconv2d_4/random_uniform*&
_output_shapes
:@ *
validate_shape(*"
_class
loc:@conv2d_4/kernel*
T0*
use_locking(

conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel
p
conv2d_4/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_4/transpose	Transposedropout_2/cond/Mergeconv2d_4/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
s
conv2d_4/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
s
"conv2d_4/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ś
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
T0*
use_cudnn_on_gpu(
r
conv2d_4/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4/transpose_1	Transposeconv2d_4/convolutionconv2d_4/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
g
activation_4/EluEluconv2d_4/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’ 
w
max_pooling2d_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

max_pooling2d_1/transpose	Transposeactivation_4/Elumax_pooling2d_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
Ź
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’ *
ksize

y
 max_pooling2d_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ŗ
max_pooling2d_1/transpose_1	Transposemax_pooling2d_1/MaxPool max_pooling2d_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0
*
_output_shapes
:
e
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Č
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’ *
seed2ņ®“*
T0*
seed±’å)*
dtype0
§
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ź
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’ 
¼
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’ 
¤
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’ 
{
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3/cond/dropout/divRealDivdropout_3/cond/mul dropout_3/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’ *
T0
Ū
dropout_3/cond/Switch_1Switchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’ : *
T0*
N
c
flatten_1/ShapeShapedropout_3/cond/Merge*
out_type0*
_output_shapes
:*
T0
g
flatten_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Æ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
_output_shapes
:*
end_mask*
Index0*
T0*
shrink_axis_mask *
new_axis_mask 
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
flatten_1/stack/0Const*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1/ReshapeReshapedropout_3/cond/Mergeflatten_1/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
T0
m
dense_1/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
_
dense_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7½
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *7=
Ŗ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed±’å)*
T0*
dtype0* 
_output_shapes
:
$*
seed2Ņą
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
$

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min* 
_output_shapes
:
$*
T0

dense_1/kernel
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
¾
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel*
T0

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
Z
activation_5/EluEludense_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
_output_shapes
:*
T0

e
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
¹
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_5/Elu

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ČšŅ*
dtype0*
T0*
seed±’å)
§
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/divRealDivdropout_4/cond/mul dropout_4/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
·
dropout_4/cond/Switch_1Switchactivation_5/Eludropout_4/cond/pred_id*#
_class
loc:@activation_5/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *óµ½*
_output_shapes
: *
dtype0
_
dense_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *óµ=
©
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
seed±’å)*
T0* 
_output_shapes
:
*
seed2ā:
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub* 
_output_shapes
:
*
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min* 
_output_shapes
:
*
T0

dense_2/kernel
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¾
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel
}
dense_2/kernel/readIdentitydense_2/kernel*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel

dense_2/MatMulMatMuldropout_4/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
Z
activation_6/EluEludense_2/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
T0
*
_output_shapes
:
e
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
¹
dropout_5/cond/mul/SwitchSwitchactivation_6/Eludropout_5/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_6/Elu*
T0

dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

 dropout_5/cond/dropout/keep_probConst^dropout_5/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*(
_output_shapes
:’’’’’’’’’*
seed2Śł
§
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/addAdd dropout_5/cond/dropout/keep_prob%dropout_5/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/divRealDivdropout_5/cond/mul dropout_5/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/divdropout_5/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
·
dropout_5/cond/Switch_1Switchactivation_6/Eludropout_5/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_6/Elu

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
m
dense_3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *   ¾
_
dense_3/random_uniform/maxConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Ŗ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
dtype0*
seed±’å)*
T0* 
_output_shapes
:
*
seed2¹
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 

dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub* 
_output_shapes
:
*
T0

dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0* 
_output_shapes
:


dense_3/kernel
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

¾
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
}
dense_3/kernel/readIdentitydense_3/kernel*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel

dense_3/MatMulMatMuldropout_5/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
Z
activation_7/EluEludense_3/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
T0
*
_output_shapes
:
e
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
¹
dropout_6/cond/mul/SwitchSwitchactivation_7/Eludropout_6/cond/pred_id*
T0*#
_class
loc:@activation_7/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

 dropout_6/cond/dropout/keep_probConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*(
_output_shapes
:’’’’’’’’’*
seed2¦ 
§
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/addAdd dropout_6/cond/dropout/keep_prob%dropout_6/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/divRealDivdropout_6/cond/mul dropout_6/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/divdropout_6/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
·
dropout_6/cond/Switch_1Switchactivation_7/Eludropout_6/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_7/Elu

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
m
dense_4/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
valueB
 *ĶU¾*
dtype0*
_output_shapes
: 
_
dense_4/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ĶU>
©
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
_output_shapes
:	
*
seed2¶ī*
T0*
seed±’å)*
dtype0
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
_output_shapes
: *
T0

dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
T0*
_output_shapes
:	


dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
T0*
_output_shapes
:	


dense_4/kernel
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
½
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*!
_class
loc:@dense_4/kernel*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
_output_shapes
:	
*
T0

dense_4/MatMulMatMuldropout_6/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
a
activation_8/SoftmaxSoftmaxdense_4/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

i
activation_1_1/EluEluconv2d_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0
r
conv2d_2_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2_1/transpose	Transposeactivation_1_1/Eluconv2d_2_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_2_1/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
u
$conv2d_2_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ž
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_2_1/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2_1/transpose_1	Transposeconv2d_2_1/convolutionconv2d_2_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_2_1/EluEluconv2d_2_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_1_1/cond/switch_fIdentitydropout_1_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_1_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_1_1/cond/mul/yConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_1_1/cond/mulMuldropout_1_1/cond/mul/Switch:1dropout_1_1/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_1_1/cond/dropout/keep_probConst^dropout_1_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_1_1/cond/dropout/ShapeShapedropout_1_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ė
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Ā*
dtype0*
T0*
seed±’å)
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_1_1/cond/dropout/random_uniformAdd+dropout_1_1/cond/dropout/random_uniform/mul+dropout_1_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_1_1/cond/dropout/addAdd"dropout_1_1/cond/dropout/keep_prob'dropout_1_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_1/cond/dropout/FloorFloordropout_1_1/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_1/cond/dropout/divRealDivdropout_1_1/cond/mul"dropout_1_1/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_1/Elu

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_3_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_3_1/transpose	Transposedropout_1_1/cond/Mergeconv2d_3_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_3_1/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_3_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’@
t
conv2d_3_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_1/transpose_1	Transposeconv2d_3_1/convolutionconv2d_3_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_3_1/EluEluconv2d_3_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_2_1/cond/switch_tIdentitydropout_2_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_2_1/cond/switch_fIdentitydropout_2_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_2_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_2_1/cond/mul/yConst^dropout_2_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2_1/cond/mulMuldropout_2_1/cond/mul/Switch:1dropout_2_1/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_2_1/cond/dropout/keep_probConst^dropout_2_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
r
dropout_2_1/cond/dropout/ShapeShapedropout_2_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_2_1/cond/dropout/random_uniform/minConst^dropout_2_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_2_1/cond/dropout/random_uniform/maxConst^dropout_2_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ģ
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*/
_output_shapes
:’’’’’’’’’@*
seed2ĮŽÜ
­
+dropout_2_1/cond/dropout/random_uniform/subSub+dropout_2_1/cond/dropout/random_uniform/max+dropout_2_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_2_1/cond/dropout/random_uniform/mulMul5dropout_2_1/cond/dropout/random_uniform/RandomUniform+dropout_2_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_1/cond/dropout/random_uniformAdd+dropout_2_1/cond/dropout/random_uniform/mul+dropout_2_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_2_1/cond/dropout/addAdd"dropout_2_1/cond/dropout/keep_prob'dropout_2_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_1/cond/dropout/FloorFloordropout_2_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_1/cond/dropout/divRealDivdropout_2_1/cond/mul"dropout_2_1/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_1/cond/dropout/mulMuldropout_2_1/cond/dropout/divdropout_2_1/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_2_1/cond/Switch_1Switchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_4_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_1/transpose	Transposedropout_2_1/cond/Mergeconv2d_4_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_4_1/convolution/ShapeConst*%
valueB"      @       *
dtype0*
_output_shapes
:
u
$conv2d_4_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ž
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_4_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4_1/transpose_1	Transposeconv2d_4_1/convolutionconv2d_4_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
k
activation_4_1/EluEluconv2d_4_1/transpose_1*/
_output_shapes
:’’’’’’’’’ *
T0
y
 max_pooling2d_1_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
„
max_pooling2d_1_1/transpose	Transposeactivation_4_1/Elu max_pooling2d_1_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
Ī
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
paddingVALID*
data_formatNHWC*
strides
*
T0*/
_output_shapes
:’’’’’’’’’ *
ksize

{
"max_pooling2d_1_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             
°
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_3_1/cond/switch_tIdentitydropout_3_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_3_1/cond/switch_fIdentitydropout_3_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_3_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_3_1/cond/mul/yConst^dropout_3_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
å
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*
T0

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

"dropout_3_1/cond/dropout/keep_probConst^dropout_3_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_3_1/cond/dropout/ShapeShapedropout_3_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_3_1/cond/dropout/random_uniform/minConst^dropout_3_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_3_1/cond/dropout/random_uniform/maxConst^dropout_3_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ģ
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*/
_output_shapes
:’’’’’’’’’ *
seed2×ż
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’ *
T0
Ŗ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_1/cond/dropout/FloorFloordropout_3_1/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_1/cond/dropout/divRealDivdropout_3_1/cond/mul"dropout_3_1/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_1/cond/dropout/mulMuldropout_3_1/cond/dropout/divdropout_3_1/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’ *
T0
ć
dropout_3_1/cond/Switch_1Switchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3_1/cond/MergeMergedropout_3_1/cond/Switch_1dropout_3_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’ : 
g
flatten_1_1/ShapeShapedropout_3_1/cond/Merge*
T0*
_output_shapes
:*
out_type0
i
flatten_1_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
k
!flatten_1_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¹
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
_output_shapes
:*
end_mask*
Index0*
T0*
shrink_axis_mask *
new_axis_mask 
[
flatten_1_1/ConstConst*
valueB: *
_output_shapes
:*
dtype0

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
flatten_1_1/stack/0Const*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_5_1/EluEludense_1_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_1/cond/switch_tIdentitydropout_4_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_4_1/cond/switch_fIdentitydropout_4_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_4_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_4_1/cond/mul/yConst^dropout_4_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
dropout_4_1/cond/mul/SwitchSwitchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_4_1/cond/mulMuldropout_4_1/cond/mul/Switch:1dropout_4_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_4_1/cond/dropout/keep_probConst^dropout_4_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Å
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2„Ś*
dtype0*
T0*
seed±’å)
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_1/cond/dropout/divRealDivdropout_4_1/cond/mul"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_1/cond/dropout/mulMuldropout_4_1/cond/dropout/divdropout_4_1/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
 
dense_2_1/MatMulMatMuldropout_4_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_6_1/EluEludense_2_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_5_1/cond/switch_tIdentitydropout_5_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_5_1/cond/switch_fIdentitydropout_5_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_5_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_5_1/cond/mul/yConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_5_1/cond/mul/SwitchSwitchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu

dropout_5_1/cond/mulMuldropout_5_1/cond/mul/Switch:1dropout_5_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_5_1/cond/dropout/keep_probConst^dropout_5_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
r
dropout_5_1/cond/dropout/ShapeShapedropout_5_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_5_1/cond/dropout/random_uniform/minConst^dropout_5_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_5_1/cond/dropout/random_uniform/maxConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Å
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2īµ­*
T0*
seed±’å)*
dtype0
­
+dropout_5_1/cond/dropout/random_uniform/subSub+dropout_5_1/cond/dropout/random_uniform/max+dropout_5_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_5_1/cond/dropout/random_uniform/mulMul5dropout_5_1/cond/dropout/random_uniform/RandomUniform+dropout_5_1/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_5_1/cond/dropout/random_uniformAdd+dropout_5_1/cond/dropout/random_uniform/mul+dropout_5_1/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_5_1/cond/dropout/addAdd"dropout_5_1/cond/dropout/keep_prob'dropout_5_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_5_1/cond/dropout/FloorFloordropout_5_1/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_1/cond/dropout/divRealDivdropout_5_1/cond/mul"dropout_5_1/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_1/cond/dropout/mulMuldropout_5_1/cond/dropout/divdropout_5_1/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu*
T0

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
 
dense_3_1/MatMulMatMuldropout_5_1/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_7_1/EluEludense_3_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_6_1/cond/switch_tIdentitydropout_6_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_6_1/cond/switch_fIdentitydropout_6_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_6_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_6_1/cond/mul/yConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
dropout_6_1/cond/mul/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_6_1/cond/mulMuldropout_6_1/cond/mul/Switch:1dropout_6_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_6_1/cond/dropout/keep_probConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_6_1/cond/dropout/ShapeShapedropout_6_1/cond/mul*
out_type0*
_output_shapes
:*
T0

+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Å
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ŃĀų*
T0*
seed±’å)*
dtype0
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_6_1/cond/dropout/random_uniformAdd+dropout_6_1/cond/dropout/random_uniform/mul+dropout_6_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_6_1/cond/dropout/addAdd"dropout_6_1/cond/dropout/keep_prob'dropout_6_1/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_6_1/cond/dropout/FloorFloordropout_6_1/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_1/cond/dropout/divRealDivdropout_6_1/cond/mul"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_1/cond/dropout/mulMuldropout_6_1/cond/dropout/divdropout_6_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_6_1/cond/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_6_1/cond/MergeMergedropout_6_1/cond/Switch_1dropout_6_1/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N

dense_4_1/MatMulMatMuldropout_6_1/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
e
activation_8_1/SoftmaxSoftmaxdense_4_1/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

U
lr/initial_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
lr
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

	lr/AssignAssignlrlr/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
	loc:@lr
O
lr/readIdentitylr*
_class
	loc:@lr*
_output_shapes
: *
T0
X
decay/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
i
decay
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 

decay/AssignAssigndecaydecay/initial_value*
use_locking(*
T0*
_class

loc:@decay*
validate_shape(*
_output_shapes
: 
X

decay/readIdentitydecay*
_output_shapes
: *
_class

loc:@decay*
T0
]
iterations/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

iterations
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
Ŗ
iterations/AssignAssign
iterationsiterations/initial_value*
_class
loc:@iterations*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
g
iterations/readIdentity
iterations*
T0*
_output_shapes
: *
_class
loc:@iterations
v
activation_8_sample_weightsPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

activation_8_targetPlaceholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
dtype0*%
shape:’’’’’’’’’’’’’’’’’’
W
Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

SumSumactivation_8_1/SoftmaxSum/reduction_indices*'
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims(
a
truedivRealDivactivation_8_1/SoftmaxSum*
T0*'
_output_shapes
:’’’’’’’’’

J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *æÖ3
J
sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
9
subSubsub/xConst*
T0*
_output_shapes
: 
`
clip_by_value/MinimumMinimumtruedivsub*'
_output_shapes
:’’’’’’’’’
*
T0
h
clip_by_valueMaximumclip_by_value/MinimumConst*'
_output_shapes
:’’’’’’’’’
*
T0
K
LogLogclip_by_value*
T0*'
_output_shapes
:’’’’’’’’’

V
mulMulactivation_8_targetLog*'
_output_shapes
:’’’’’’’’’
*
T0
Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
u
Sum_1SummulSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
?
NegNegSum_1*#
_output_shapes
:’’’’’’’’’*
T0
Y
Mean/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
t
MeanMeanNegMean/reduction_indices*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims( 
]
mul_1MulMeanactivation_8_sample_weights*#
_output_shapes
:’’’’’’’’’*
T0
O

NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
NotEqualNotEqualactivation_8_sample_weights
NotEqual/y*
T0*#
_output_shapes
:’’’’’’’’’
S
CastCastNotEqual*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
[
Mean_1MeanCastConst_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Q
	truediv_1RealDivmul_1Mean_1*
T0*#
_output_shapes
:’’’’’’’’’
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
`
Mean_2Mean	truediv_1Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
L
mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
>
mul_2Mulmul_2/xMean_2*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
q
ArgMaxArgMaxactivation_8_targetArgMax/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
x
ArgMax_1ArgMaxactivation_8_1/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:’’’’’’’’’
R
Cast_1CastEqual*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
Q
Const_3Const*
_output_shapes
:*
dtype0*
valueB: 
]
Mean_3MeanCast_1Const_3*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
l
PlaceholderPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
¬
AssignAssignconv2d_1/kernelPlaceholder*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@*"
_class
loc:@conv2d_1/kernel
n
Placeholder_1Placeholder*&
_output_shapes
:@@*
shape:@@*
dtype0
°
Assign_1Assignconv2d_2/kernelPlaceholder_1*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@*
T0*
validate_shape(*
use_locking( 
n
Placeholder_2Placeholder*&
_output_shapes
:@@*
dtype0*
shape:@@
°
Assign_2Assignconv2d_3/kernelPlaceholder_2*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
n
Placeholder_3Placeholder*
dtype0*
shape:@ *&
_output_shapes
:@ 
°
Assign_3Assignconv2d_4/kernelPlaceholder_3*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:@ *
T0*
validate_shape(*
use_locking( 
b
Placeholder_4Placeholder*
shape:
$*
dtype0* 
_output_shapes
:
$
Ø
Assign_4Assigndense_1/kernelPlaceholder_4*
use_locking( *
validate_shape(*
T0* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel
b
Placeholder_5Placeholder*
dtype0*
shape:
* 
_output_shapes
:

Ø
Assign_5Assigndense_2/kernelPlaceholder_5*
use_locking( *
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel
b
Placeholder_6Placeholder* 
_output_shapes
:
*
shape:
*
dtype0
Ø
Assign_6Assigndense_3/kernelPlaceholder_6*
use_locking( *
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:

`
Placeholder_7Placeholder*
_output_shapes
:	
*
shape:	
*
dtype0
§
Assign_7Assigndense_4/kernelPlaceholder_7*
use_locking( *
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
’
initNoOp^conv2d_1/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign
^lr/Assign^decay/Assign^iterations/Assign
W
lr_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
lr_1
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

lr_1/AssignAssignlr_1lr_1/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
	loc:@lr_1
U
	lr_1/readIdentitylr_1*
T0*
_class
	loc:@lr_1*
_output_shapes
: 
Z
decay_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
decay_1
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 

decay_1/AssignAssigndecay_1decay_1/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@decay_1
^
decay_1/readIdentitydecay_1*
T0*
_class
loc:@decay_1*
_output_shapes
: 
_
iterations_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
p
iterations_1
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
²
iterations_1/AssignAssigniterations_1iterations_1/initial_value*
_class
loc:@iterations_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
iterations_1/readIdentityiterations_1*
_output_shapes
: *
_class
loc:@iterations_1*
T0
x
activation_8_sample_weights_1Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0

activation_8_target_1Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Y
Sum_2/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

Sum_2Sumactivation_8_1/SoftmaxSum_2/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:’’’’’’’’’
e
	truediv_2RealDivactivation_8_1/SoftmaxSum_2*'
_output_shapes
:’’’’’’’’’
*
T0
L
Const_4Const*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
?
sub_1Subsub_1/xConst_4*
T0*
_output_shapes
: 
f
clip_by_value_1/MinimumMinimum	truediv_2sub_1*
T0*'
_output_shapes
:’’’’’’’’’

n
clip_by_value_1Maximumclip_by_value_1/MinimumConst_4*'
_output_shapes
:’’’’’’’’’
*
T0
O
Log_1Logclip_by_value_1*'
_output_shapes
:’’’’’’’’’
*
T0
\
mul_3Mulactivation_8_target_1Log_1*
T0*'
_output_shapes
:’’’’’’’’’

Y
Sum_3/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
w
Sum_3Summul_3Sum_3/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
A
Neg_1NegSum_3*#
_output_shapes
:’’’’’’’’’*
T0
[
Mean_4/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB 
z
Mean_4MeanNeg_1Mean_4/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
a
mul_4MulMean_4activation_8_sample_weights_1*#
_output_shapes
:’’’’’’’’’*
T0
Q
NotEqual_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
q

NotEqual_1NotEqualactivation_8_sample_weights_1NotEqual_1/y*
T0*#
_output_shapes
:’’’’’’’’’
W
Cast_2Cast
NotEqual_1*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

Q
Const_5Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_5MeanCast_2Const_5*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
Q
	truediv_3RealDivmul_4Mean_5*#
_output_shapes
:’’’’’’’’’*
T0
Q
Const_6Const*
valueB: *
dtype0*
_output_shapes
:
`
Mean_6Mean	truediv_3Const_6*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
>
mul_5Mulmul_5/xMean_6*
_output_shapes
: *
T0
T
ArgMax_2/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
T
ArgMax_3/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_3ArgMaxactivation_8_1/SoftmaxArgMax_3/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
R
Equal_1EqualArgMax_2ArgMax_3*
T0	*#
_output_shapes
:’’’’’’’’’
T
Cast_3CastEqual_1*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

Q
Const_7Const*
dtype0*
_output_shapes
:*
valueB: 
]
Mean_7MeanCast_3Const_7*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
#

group_depsNoOp^mul_5^Mean_7
l
gradients/ShapeConst*
valueB *
_class

loc:@mul_5*
_output_shapes
: *
dtype0
n
gradients/ConstConst*
valueB
 *  ?*
_class

loc:@mul_5*
_output_shapes
: *
dtype0
s
gradients/FillFillgradients/Shapegradients/Const*
T0*
_class

loc:@mul_5*
_output_shapes
: 
w
gradients/mul_5_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@mul_5
y
gradients/mul_5_grad/Shape_1Const*
valueB *
_class

loc:@mul_5*
_output_shapes
: *
dtype0
Ō
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
_class

loc:@mul_5*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
_output_shapes
: *
_class

loc:@mul_5*
T0
æ
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
_class

loc:@mul_5*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¦
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: *
T0
u
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Fill*
T0*
_output_shapes
: *
_class

loc:@mul_5
Å
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_5*
_output_shapes
:
¬
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class

loc:@mul_5

#gradients/Mean_6_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:*
_class
loc:@Mean_6
»
gradients/Mean_6_grad/ReshapeReshapegradients/mul_5_grad/Reshape_1#gradients/Mean_6_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_6

gradients/Mean_6_grad/ShapeShape	truediv_3*
T0*
out_type0*
_class
loc:@Mean_6*
_output_shapes
:
¹
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_6*#
_output_shapes
:’’’’’’’’’

gradients/Mean_6_grad/Shape_1Shape	truediv_3*
out_type0*
_class
loc:@Mean_6*
_output_shapes
:*
T0
{
gradients/Mean_6_grad/Shape_2Const*
valueB *
_class
loc:@Mean_6*
dtype0*
_output_shapes
: 

gradients/Mean_6_grad/ConstConst*
valueB: *
_class
loc:@Mean_6*
dtype0*
_output_shapes
:
·
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
_class
loc:@Mean_6*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

gradients/Mean_6_grad/Const_1Const*
valueB: *
_class
loc:@Mean_6*
dtype0*
_output_shapes
:
»
gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_6*
T0*
	keep_dims( *

Tidx0
|
gradients/Mean_6_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_6
£
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
_class
loc:@Mean_6*
_output_shapes
: *
T0
”
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
_class
loc:@Mean_6*
_output_shapes
: *
T0

gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*
_class
loc:@Mean_6*
_output_shapes
: *

DstT0*

SrcT0
©
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_6*
T0

gradients/truediv_3_grad/ShapeShapemul_4*
_output_shapes
:*
out_type0*
_class
loc:@truediv_3*
T0

 gradients/truediv_3_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@truediv_3
ä
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
_class
loc:@truediv_3*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_3*
T0
Ó
gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_3
Ć
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_3*
T0
v
gradients/truediv_3_grad/NegNegmul_4*
T0*
_class
loc:@truediv_3*#
_output_shapes
:’’’’’’’’’

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_3
„
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*
T0*
_class
loc:@truediv_3*#
_output_shapes
:’’’’’’’’’
²
gradients/truediv_3_grad/mulMulgradients/Mean_6_grad/truediv"gradients/truediv_3_grad/RealDiv_2*
T0*
_class
loc:@truediv_3*#
_output_shapes
:’’’’’’’’’
Ó
gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_3*
_output_shapes
:
¼
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_3
z
gradients/mul_4_grad/ShapeShapeMean_4*
T0*
_output_shapes
:*
out_type0*
_class

loc:@mul_4

gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
out_type0*
_class

loc:@mul_4*
_output_shapes
:*
T0
Ō
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
_class

loc:@mul_4*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ø
gradients/mul_4_grad/mulMul gradients/truediv_3_grad/Reshapeactivation_8_sample_weights_1*
_class

loc:@mul_4*#
_output_shapes
:’’’’’’’’’*
T0
æ
gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
_class

loc:@mul_4*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
³
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class

loc:@mul_4*
T0

gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*#
_output_shapes
:’’’’’’’’’*
_class

loc:@mul_4*
T0
Å
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
_class

loc:@mul_4*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¹
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
Tshape0*
_class

loc:@mul_4*#
_output_shapes
:’’’’’’’’’*
T0
{
gradients/Mean_4_grad/ShapeShapeNeg_1*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_4
w
gradients/Mean_4_grad/SizeConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 

gradients/Mean_4_grad/addAddMean_4/reduction_indicesgradients/Mean_4_grad/Size*
T0*
_output_shapes
: *
_class
loc:@Mean_4

gradients/Mean_4_grad/modFloorModgradients/Mean_4_grad/addgradients/Mean_4_grad/Size*
_output_shapes
: *
_class
loc:@Mean_4*
T0

gradients/Mean_4_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_4*
dtype0*
_output_shapes
:
~
!gradients/Mean_4_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
É
gradients/Mean_4_grad/rangeRange!gradients/Mean_4_grad/range/startgradients/Mean_4_grad/Size!gradients/Mean_4_grad/range/delta*
_class
loc:@Mean_4*
_output_shapes
:*

Tidx0
}
 gradients/Mean_4_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_4
”
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
T0*
_class
loc:@Mean_4*
_output_shapes
: 
÷
#gradients/Mean_4_grad/DynamicStitchDynamicStitchgradients/Mean_4_grad/rangegradients/Mean_4_grad/modgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Fill*
_class
loc:@Mean_4*#
_output_shapes
:’’’’’’’’’*
T0*
N
|
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_4*
_output_shapes
: *
dtype0
·
gradients/Mean_4_grad/MaximumMaximum#gradients/Mean_4_grad/DynamicStitchgradients/Mean_4_grad/Maximum/y*
_class
loc:@Mean_4*#
_output_shapes
:’’’’’’’’’*
T0
Æ
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Maximum*
T0*
_class
loc:@Mean_4*#
_output_shapes
:’’’’’’’’’
·
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_4
±
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:*
_class
loc:@Mean_4
}
gradients/Mean_4_grad/Shape_2ShapeNeg_1*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_4
~
gradients/Mean_4_grad/Shape_3ShapeMean_4*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:*
T0

gradients/Mean_4_grad/ConstConst*
valueB: *
_class
loc:@Mean_4*
_output_shapes
:*
dtype0
·
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const*
_class
loc:@Mean_4*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

gradients/Mean_4_grad/Const_1Const*
valueB: *
_class
loc:@Mean_4*
_output_shapes
:*
dtype0
»
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_3gradients/Mean_4_grad/Const_1*
_class
loc:@Mean_4*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
~
!gradients/Mean_4_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
§
gradients/Mean_4_grad/Maximum_1Maximumgradients/Mean_4_grad/Prod_1!gradients/Mean_4_grad/Maximum_1/y*
T0*
_class
loc:@Mean_4*
_output_shapes
: 
„
 gradients/Mean_4_grad/floordiv_1FloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum_1*
_output_shapes
: *
_class
loc:@Mean_4*
T0

gradients/Mean_4_grad/CastCast gradients/Mean_4_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0*
_class
loc:@Mean_4
©
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0*
_class
loc:@Mean_4*#
_output_shapes
:’’’’’’’’’

gradients/Neg_1_grad/NegNeggradients/Mean_4_grad/truediv*
T0*
_class

loc:@Neg_1*#
_output_shapes
:’’’’’’’’’
y
gradients/Sum_3_grad/ShapeShapemul_3*
out_type0*
_class

loc:@Sum_3*
_output_shapes
:*
T0
u
gradients/Sum_3_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_3

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
_class

loc:@Sum_3*
_output_shapes
: *
T0

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
_class

loc:@Sum_3*
_output_shapes
: *
T0
y
gradients/Sum_3_grad/Shape_1Const*
valueB *
_class

loc:@Sum_3*
_output_shapes
: *
dtype0
|
 gradients/Sum_3_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class

loc:@Sum_3
|
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_3*
_output_shapes
: *
dtype0
Ä
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*
_class

loc:@Sum_3*
_output_shapes
:
{
gradients/Sum_3_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_3*
_output_shapes
: *
dtype0

gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*
_output_shapes
: *
_class

loc:@Sum_3
ń
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
_class

loc:@Sum_3*#
_output_shapes
:’’’’’’’’’*
T0*
N
z
gradients/Sum_3_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3
³
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*
_class

loc:@Sum_3*#
_output_shapes
:’’’’’’’’’
¢
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
_output_shapes
:*
_class

loc:@Sum_3*
T0
°
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_3*
_output_shapes
:*
T0
¼
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_3

gradients/mul_3_grad/ShapeShapeactivation_8_target_1*
_output_shapes
:*
out_type0*
_class

loc:@mul_3*
T0
{
gradients/mul_3_grad/Shape_1ShapeLog_1*
T0*
out_type0*
_class

loc:@mul_3*
_output_shapes
:
Ō
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class

loc:@mul_3

gradients/mul_3_grad/mulMulgradients/Sum_3_grad/TileLog_1*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@mul_3*
T0
æ
gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class

loc:@mul_3
Ą
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0*
_class

loc:@mul_3*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

gradients/mul_3_grad/mul_1Mulactivation_8_target_1gradients/Sum_3_grad/Tile*
T0*
_class

loc:@mul_3*'
_output_shapes
:’’’’’’’’’

Å
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_3*
_output_shapes
:
½
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0*
_class

loc:@mul_3*'
_output_shapes
:’’’’’’’’’

«
gradients/Log_1_grad/Reciprocal
Reciprocalclip_by_value_1^gradients/mul_3_grad/Reshape_1*
T0*
_class

loc:@Log_1*'
_output_shapes
:’’’’’’’’’

¬
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*
T0*
_class

loc:@Log_1*'
_output_shapes
:’’’’’’’’’


$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0*"
_class
loc:@clip_by_value_1*
_output_shapes
:

&gradients/clip_by_value_1_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *"
_class
loc:@clip_by_value_1
¢
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
T0*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1

*gradients/clip_by_value_1_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@clip_by_value_1
Ö
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1*
T0
³
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*"
_class
loc:@clip_by_value_1*'
_output_shapes
:’’’’’’’’’
*
T0
ü
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0*"
_class
loc:@clip_by_value_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ņ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1
±
)gradients/clip_by_value_1_grad/LogicalNot
LogicalNot+gradients/clip_by_value_1_grad/GreaterEqual*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1
ņ
'gradients/clip_by_value_1_grad/Select_1Select)gradients/clip_by_value_1_grad/LogicalNotgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:’’’’’’’’’

ź
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
_output_shapes
:*"
_class
loc:@clip_by_value_1*
T0*
	keep_dims( *

Tidx0
ß
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:’’’’’’’’’

š
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*"
_class
loc:@clip_by_value_1
Ō
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
_output_shapes
: *
Tshape0*"
_class
loc:@clip_by_value_1*
T0
”
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_2*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:*
T0

.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB **
_class 
loc:@clip_by_value_1/Minimum*
dtype0*
_output_shapes
: 
Ą
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:*
T0
£
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    **
_class 
loc:@clip_by_value_1/Minimum
ö
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum*
T0
­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1**
_class 
loc:@clip_by_value_1/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
Ę
1gradients/clip_by_value_1/Minimum_grad/LogicalNot
LogicalNot0gradients/clip_by_value_1/Minimum_grad/LessEqual*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum
 
/gradients/clip_by_value_1/Minimum_grad/Select_1Select1gradients/clip_by_value_1/Minimum_grad/LogicalNot&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum

*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
’
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
T0

,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:**
_class 
loc:@clip_by_value_1/Minimum*
T0*
	keep_dims( *

Tidx0
ō
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
T0

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
_output_shapes
:*
out_type0*
_class
loc:@truediv_2*
T0

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_2
ä
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_2*
T0
²
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_2*
T0
Ó
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_2*
_output_shapes
:
Ē
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’


gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*
T0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’

¢
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_2
Ø
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’

Ē
gradients/truediv_2_grad/mulMul.gradients/clip_by_value_1/Minimum_grad/Reshape"gradients/truediv_2_grad/RealDiv_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_2*
T0
Ó
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@truediv_2*
T0*
	keep_dims( *

Tidx0
Ķ
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’

gradients/Sum_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
out_type0*
_class

loc:@Sum_2*
_output_shapes
:
u
gradients/Sum_2_grad/SizeConst*
value	B :*
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
_output_shapes
: *
_class

loc:@Sum_2*
T0

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*
_class

loc:@Sum_2*
_output_shapes
: 
y
gradients/Sum_2_grad/Shape_1Const*
valueB *
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 
|
 gradients/Sum_2_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class

loc:@Sum_2
|
 gradients/Sum_2_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_2
Ä
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_2*

Tidx0
{
gradients/Sum_2_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_2

gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
_class

loc:@Sum_2*
_output_shapes
: *
T0
ń
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
_class

loc:@Sum_2*#
_output_shapes
:’’’’’’’’’*
T0*
N
z
gradients/Sum_2_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_2*
_output_shapes
: *
dtype0
³
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_2
¢
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_2
ŗ
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_2*
_output_shapes
:*
T0
¼
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*
_class

loc:@Sum_2*'
_output_shapes
:’’’’’’’’’
*
T0*

Tmultiples0
¬
gradients/AddNAddN gradients/truediv_2_grad/Reshapegradients/Sum_2_grad/Tile*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’
*
T0*
N
µ
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_1/Softmax*
T0
°
;gradients/activation_8_1/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:*)
_class
loc:@activation_8_1/Softmax

)gradients/activation_8_1/Softmax_grad/SumSum)gradients/activation_8_1/Softmax_grad/mul;gradients/activation_8_1/Softmax_grad/Sum/reduction_indices*)
_class
loc:@activation_8_1/Softmax*#
_output_shapes
:’’’’’’’’’*
T0*
	keep_dims( *

Tidx0
Æ
3gradients/activation_8_1/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   *)
_class
loc:@activation_8_1/Softmax

-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0*)
_class
loc:@activation_8_1/Softmax
Ģ
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
Ņ
+gradients/activation_8_1/Softmax_grad/mul_1Mul)gradients/activation_8_1/Softmax_grad/subactivation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_1/Softmax*
T0
š
&gradients/dense_4_1/MatMul_grad/MatMulMatMul+gradients/activation_8_1/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_4_1/MatMul
ģ
(gradients/dense_4_1/MatMul_grad/MatMul_1MatMuldropout_6_1/cond/Merge+gradients/activation_8_1/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_4_1/MatMul*
_output_shapes
:	
*
transpose_a(
ē
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_4_1/MatMul*
T0
¶
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients/Shape_1Shapegradients/Switch:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_1/Elu*
T0

gradients/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_7_1/Elu

gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu
ā
2gradients/dropout_6_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_6_1/cond/Merge_grad/cond_gradgradients/zeros*%
_class
loc:@activation_7_1/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
¾
1gradients/dropout_6_1/cond/dropout/mul_grad/ShapeShapedropout_6_1/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
Ā
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:
°
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ķ
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0

/gradients/dropout_6_1/cond/dropout/mul_grad/SumSum/gradients/dropout_6_1/cond/dropout/mul_grad/mulAgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_6_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/mul_grad/Sum1gradients/dropout_6_1/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ķ
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
”
1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_6_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_13gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
¶
1gradients/dropout_6_1/cond/dropout/div_grad/ShapeShapedropout_6_1/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
§
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div
°
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ū
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

/gradients/dropout_6_1/cond/dropout/div_grad/SumSum3gradients/dropout_6_1/cond/dropout/div_grad/RealDivAgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_6_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/div_grad/Sum1gradients/dropout_6_1/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
°
/gradients/dropout_6_1/cond/dropout/div_grad/NegNegdropout_6_1/cond/mul*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ł
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_6_1/cond/dropout/div_grad/Neg"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
’
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

1gradients/dropout_6_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_6_1/cond/dropout/div_grad/mulCgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
Æ
)gradients/dropout_6_1/cond/mul_grad/ShapeShapedropout_6_1/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_1/cond/mul*
T0

+gradients/dropout_6_1/cond/mul_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *'
_class
loc:@dropout_6_1/cond/mul

9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_6_1/cond/mul
×
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*
T0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:’’’’’’’’’
ū
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ō
+gradients/dropout_6_1/cond/mul_grad/ReshapeReshape'gradients/dropout_6_1/cond/mul_grad/Sum)gradients/dropout_6_1/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:’’’’’’’’’
ą
)gradients/dropout_6_1/cond/mul_grad/mul_1Muldropout_6_1/cond/mul/Switch:13gradients/dropout_6_1/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

)gradients/dropout_6_1/cond/mul_grad/Sum_1Sum)gradients/dropout_6_1/cond/mul_grad/mul_1;gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:
č
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
T0
ø
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients/Shape_2Shapegradients/Switch_1*
out_type0*%
_class
loc:@activation_7_1/Elu*
_output_shapes
:*
T0

gradients/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu*
T0
ā
4gradients/dropout_6_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_6_1/cond/mul_grad/Reshapegradients/zeros_1*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_7_1/Elu
å
gradients/AddN_1AddN2gradients/dropout_6_1/cond/Switch_1_grad/cond_grad4gradients/dropout_6_1/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:’’’’’’’’’*
N*%
_class
loc:@activation_7_1/Elu*
T0
“
)gradients/activation_7_1/Elu_grad/EluGradEluGradgradients/AddN_1activation_7_1/Elu*
T0*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:’’’’’’’’’
ī
&gradients/dense_3_1/MatMul_grad/MatMulMatMul)gradients/activation_7_1/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_3_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
ė
(gradients/dense_3_1/MatMul_grad/MatMul_1MatMuldropout_5_1/cond/Merge)gradients/activation_7_1/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_3_1/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ē
/gradients/dropout_5_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_3_1/MatMul_grad/MatMuldropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_3_1/MatMul
ø
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients/Shape_3Shapegradients/Switch_2:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_1/Elu*
T0

gradients/zeros_2/ConstConst*
valueB
 *    *%
_class
loc:@activation_6_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ä
2gradients/dropout_5_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_5_1/cond/Merge_grad/cond_gradgradients/zeros_2*
T0*%
_class
loc:@activation_6_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
¾
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
Ā
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:*
T0
°
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
ķ
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’

/gradients/dropout_5_1/cond/dropout/mul_grad/SumSum/gradients/dropout_5_1/cond/dropout/mul_grad/mulAgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:

3gradients/dropout_5_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/mul_grad/Sum1gradients/dropout_5_1/cond/dropout/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
ķ
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
”
1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul

5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
¶
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:
§
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div
°
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
ū
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_1/cond/dropout/div

/gradients/dropout_5_1/cond/dropout/div_grad/SumSum3gradients/dropout_5_1/cond/dropout/div_grad/RealDivAgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_5_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/div_grad/Sum1gradients/dropout_5_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
°
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ł
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
’
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients/dropout_5_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_5_1/cond/dropout/div_grad/mulCgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:

5gradients/dropout_5_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/div_grad/Sum_13gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
: 
Æ
)gradients/dropout_5_1/cond/mul_grad/ShapeShapedropout_5_1/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:

+gradients/dropout_5_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_5_1/cond/mul*
dtype0*
_output_shapes
: 

9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_5_1/cond/mul_grad/Shape+gradients/dropout_5_1/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_5_1/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
×
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_1/cond/mul*
T0
ū
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:
ō
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:’’’’’’’’’
ą
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_1/cond/mul

)gradients/dropout_5_1/cond/mul_grad/Sum_1Sum)gradients/dropout_5_1/cond/mul_grad/mul_1;gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:
č
-gradients/dropout_5_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_5_1/cond/mul_grad/Sum_1+gradients/dropout_5_1/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
T0
ø
gradients/Switch_3Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients/Shape_4Shapegradients/Switch_3*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_1/Elu*
T0

gradients/zeros_3/ConstConst*
valueB
 *    *%
_class
loc:@activation_6_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’
ā
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3*
T0*%
_class
loc:@activation_6_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
å
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_6_1/Elu*
N*(
_output_shapes
:’’’’’’’’’
“
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ī
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_2_1/MatMul
ė
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_1/MatMul*
T0
ē
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*#
_class
loc:@dense_2_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ø
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients/Shape_5Shapegradients/Switch_4:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_1/Elu

gradients/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu*
T0
ä
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4*
T0*%
_class
loc:@activation_5_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
¾
1gradients/dropout_4_1/cond/dropout/mul_grad/ShapeShapedropout_4_1/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:*
T0
Ā
3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1Shapedropout_4_1/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
°
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ķ
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul

/gradients/dropout_4_1/cond/dropout/mul_grad/SumSum/gradients/dropout_4_1/cond/dropout/mul_grad/mulAgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:

3gradients/dropout_4_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/mul_grad/Sum1gradients/dropout_4_1/cond/dropout/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
ķ
1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Muldropout_4_1/cond/dropout/div1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
”
1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:

5gradients/dropout_4_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_13gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
¶
1gradients/dropout_4_1/cond/dropout/div_grad/ShapeShapedropout_4_1/cond/mul*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:*
T0
§
3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_1/cond/dropout/div
°
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
ū
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

/gradients/dropout_4_1/cond/dropout/div_grad/SumSum3gradients/dropout_4_1/cond/dropout/div_grad/RealDivAgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_4_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/div_grad/Sum1gradients/dropout_4_1/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
°
/gradients/dropout_4_1/cond/dropout/div_grad/NegNegdropout_4_1/cond/mul*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ł
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
’
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

1gradients/dropout_4_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_4_1/cond/dropout/div_grad/mulCgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

5gradients/dropout_4_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/div_grad/Sum_13gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
Æ
)gradients/dropout_4_1/cond/mul_grad/ShapeShapedropout_4_1/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_1/cond/mul*
T0

+gradients/dropout_4_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_1/cond/mul*
dtype0*
_output_shapes
: 

9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_4_1/cond/mul_grad/Shape+gradients/dropout_4_1/cond/mul_grad/Shape_1*'
_class
loc:@dropout_4_1/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
×
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_1/cond/mul*
T0
ū
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ō
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0
ą
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_1/cond/mul

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul*
T0*
	keep_dims( *

Tidx0
č
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
: *
T0
ø
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu*
T0

gradients/Shape_6Shapegradients/Switch_5*
out_type0*%
_class
loc:@activation_5_1/Elu*
_output_shapes
:*
T0

gradients/zeros_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_5_1/Elu

gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu*
T0
ā
4gradients/dropout_4_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_4_1/cond/mul_grad/Reshapegradients/zeros_5*%
_class
loc:@activation_5_1/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
å
gradients/AddN_3AddN2gradients/dropout_4_1/cond/Switch_1_grad/cond_grad4gradients/dropout_4_1/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
“
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu*
T0
ī
&gradients/dense_1_1/MatMul_grad/MatMulMatMul)gradients/activation_5_1/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’$*
transpose_a( *#
_class
loc:@dense_1_1/MatMul*
T0
č
(gradients/dense_1_1/MatMul_grad/MatMul_1MatMulflatten_1_1/Reshape)gradients/activation_5_1/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_1_1/MatMul* 
_output_shapes
:
$*
transpose_a(*
T0
`
Const_8Const*
dtype0* 
_output_shapes
:
$*
valueB
$*    

Variable
VariableV2*
shared_name *
dtype0*
shape:
$* 
_output_shapes
:
$*
	container 

Variable/AssignAssignVariableConst_8*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
$
k
Variable/readIdentityVariable*
_class
loc:@Variable* 
_output_shapes
:
$*
T0
`
Const_9Const*
valueB
*    * 
_output_shapes
:
*
dtype0


Variable_1
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
£
Variable_1/AssignAssign
Variable_1Const_9* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
q
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1* 
_output_shapes
:

a
Const_10Const*
dtype0* 
_output_shapes
:
*
valueB
*    


Variable_2
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
¤
Variable_2/AssignAssign
Variable_2Const_10*
_class
loc:@Variable_2* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
q
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2* 
_output_shapes
:
*
T0
_
Const_11Const*
valueB	
*    *
dtype0*
_output_shapes
:	



Variable_3
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
£
Variable_3/AssignAssign
Variable_3Const_11*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_3
p
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:	

a
Const_12Const* 
_output_shapes
:
$*
dtype0*
valueB
$*    


Variable_4
VariableV2* 
_output_shapes
:
$*
	container *
shape:
$*
dtype0*
shared_name 
¤
Variable_4/AssignAssign
Variable_4Const_12*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
$
q
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4* 
_output_shapes
:
$
a
Const_13Const* 
_output_shapes
:
*
dtype0*
valueB
*    


Variable_5
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¤
Variable_5/AssignAssign
Variable_5Const_13*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(* 
_output_shapes
:

q
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5* 
_output_shapes
:
*
T0
a
Const_14Const*
valueB
*    *
dtype0* 
_output_shapes
:



Variable_6
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
¤
Variable_6/AssignAssign
Variable_6Const_14*
_class
loc:@Variable_6* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
q
Variable_6/readIdentity
Variable_6* 
_output_shapes
:
*
_class
loc:@Variable_6*
T0
_
Const_15Const*
valueB	
*    *
dtype0*
_output_shapes
:	



Variable_7
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
£
Variable_7/AssignAssign
Variable_7Const_15*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_7
p
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
_output_shapes
:	
*
T0
L
mul_6/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
O
mul_6Mulmul_6/xVariable/read*
T0* 
_output_shapes
:
$
e
SquareSquare(gradients/dense_1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
L
mul_7/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
H
mul_7Mulmul_7/xSquare*
T0* 
_output_shapes
:
$
C
addAddmul_6mul_7*
T0* 
_output_shapes
:
$

Assign_8AssignVariableadd*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(* 
_output_shapes
:
$
L
add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
Q
add_1AddVariable_4/readadd_1/y*
T0* 
_output_shapes
:
$
M
Const_16Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_17Const*
_output_shapes
: *
dtype0*
valueB
 *  
^
clip_by_value_2/MinimumMinimumadd_1Const_17* 
_output_shapes
:
$*
T0
h
clip_by_value_2Maximumclip_by_value_2/MinimumConst_16* 
_output_shapes
:
$*
T0
H
SqrtSqrtclip_by_value_2*
T0* 
_output_shapes
:
$
g
mul_8Mul(gradients/dense_1_1/MatMul_grad/MatMul_1Sqrt*
T0* 
_output_shapes
:
$
L
add_2/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
E
add_2Addaddadd_2/y* 
_output_shapes
:
$*
T0
M
Const_18Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 
^
clip_by_value_3/MinimumMinimumadd_2Const_19* 
_output_shapes
:
$*
T0
h
clip_by_value_3Maximumclip_by_value_3/MinimumConst_18* 
_output_shapes
:
$*
T0
J
Sqrt_1Sqrtclip_by_value_3*
T0* 
_output_shapes
:
$
N
	truediv_4RealDivmul_8Sqrt_1*
T0* 
_output_shapes
:
$
M
mul_9Mul	lr_1/read	truediv_4*
T0* 
_output_shapes
:
$
S
sub_2Subdense_1/kernel/readmul_9* 
_output_shapes
:
$*
T0
 
Assign_9Assigndense_1/kernelsub_2*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
M
mul_10/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_10Mulmul_10/xVariable_4/read* 
_output_shapes
:
$*
T0
H
Square_1Square	truediv_4*
T0* 
_output_shapes
:
$
M
mul_11/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_11Mulmul_11/xSquare_1* 
_output_shapes
:
$*
T0
G
add_3Addmul_10mul_11*
T0* 
_output_shapes
:
$

	Assign_10Assign
Variable_4add_3* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_4*
T0*
use_locking(
M
mul_12/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_12Mulmul_12/xVariable_1/read* 
_output_shapes
:
*
T0
g
Square_2Square(gradients/dense_2_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_13/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_13Mulmul_13/xSquare_2*
T0* 
_output_shapes
:

G
add_4Addmul_12mul_13*
T0* 
_output_shapes
:


	Assign_11Assign
Variable_1add_4* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
L
add_5/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
Q
add_5AddVariable_5/readadd_5/y* 
_output_shapes
:
*
T0
M
Const_20Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_21Const*
_output_shapes
: *
dtype0*
valueB
 *  
^
clip_by_value_4/MinimumMinimumadd_5Const_21* 
_output_shapes
:
*
T0
h
clip_by_value_4Maximumclip_by_value_4/MinimumConst_20*
T0* 
_output_shapes
:

J
Sqrt_2Sqrtclip_by_value_4*
T0* 
_output_shapes
:

j
mul_14Mul(gradients/dense_2_1/MatMul_grad/MatMul_1Sqrt_2*
T0* 
_output_shapes
:

L
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
G
add_6Addadd_4add_6/y* 
_output_shapes
:
*
T0
M
Const_22Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_23Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_5/MinimumMinimumadd_6Const_23* 
_output_shapes
:
*
T0
h
clip_by_value_5Maximumclip_by_value_5/MinimumConst_22* 
_output_shapes
:
*
T0
J
Sqrt_3Sqrtclip_by_value_5* 
_output_shapes
:
*
T0
O
	truediv_5RealDivmul_14Sqrt_3* 
_output_shapes
:
*
T0
N
mul_15Mul	lr_1/read	truediv_5*
T0* 
_output_shapes
:

T
sub_3Subdense_2/kernel/readmul_15* 
_output_shapes
:
*
T0
”
	Assign_12Assigndense_2/kernelsub_3*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

M
mul_16/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_16Mulmul_16/xVariable_5/read*
T0* 
_output_shapes
:

H
Square_3Square	truediv_5* 
_output_shapes
:
*
T0
M
mul_17/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_17Mulmul_17/xSquare_3* 
_output_shapes
:
*
T0
G
add_7Addmul_16mul_17*
T0* 
_output_shapes
:


	Assign_13Assign
Variable_5add_7*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(* 
_output_shapes
:

M
mul_18/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_18Mulmul_18/xVariable_2/read*
T0* 
_output_shapes
:

g
Square_4Square(gradients/dense_3_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_19/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_19Mulmul_19/xSquare_4* 
_output_shapes
:
*
T0
G
add_8Addmul_18mul_19*
T0* 
_output_shapes
:


	Assign_14Assign
Variable_2add_8* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_2*
T0*
use_locking(
L
add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
Q
add_9AddVariable_6/readadd_9/y* 
_output_shapes
:
*
T0
M
Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_25Const*
dtype0*
_output_shapes
: *
valueB
 *  
^
clip_by_value_6/MinimumMinimumadd_9Const_25*
T0* 
_output_shapes
:

h
clip_by_value_6Maximumclip_by_value_6/MinimumConst_24*
T0* 
_output_shapes
:

J
Sqrt_4Sqrtclip_by_value_6*
T0* 
_output_shapes
:

j
mul_20Mul(gradients/dense_3_1/MatMul_grad/MatMul_1Sqrt_4* 
_output_shapes
:
*
T0
M
add_10/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
I
add_10Addadd_8add_10/y* 
_output_shapes
:
*
T0
M
Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_27Const*
valueB
 *  *
_output_shapes
: *
dtype0
_
clip_by_value_7/MinimumMinimumadd_10Const_27*
T0* 
_output_shapes
:

h
clip_by_value_7Maximumclip_by_value_7/MinimumConst_26*
T0* 
_output_shapes
:

J
Sqrt_5Sqrtclip_by_value_7* 
_output_shapes
:
*
T0
O
	truediv_6RealDivmul_20Sqrt_5* 
_output_shapes
:
*
T0
N
mul_21Mul	lr_1/read	truediv_6* 
_output_shapes
:
*
T0
T
sub_4Subdense_3/kernel/readmul_21* 
_output_shapes
:
*
T0
”
	Assign_15Assigndense_3/kernelsub_4*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_22/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
S
mul_22Mulmul_22/xVariable_6/read*
T0* 
_output_shapes
:

H
Square_5Square	truediv_6* 
_output_shapes
:
*
T0
M
mul_23/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_23Mulmul_23/xSquare_5* 
_output_shapes
:
*
T0
H
add_11Addmul_22mul_23*
T0* 
_output_shapes
:


	Assign_16Assign
Variable_6add_11*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(* 
_output_shapes
:

M
mul_24/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
R
mul_24Mulmul_24/xVariable_3/read*
T0*
_output_shapes
:	

f
Square_6Square(gradients/dense_4_1/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_25/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
K
mul_25Mulmul_25/xSquare_6*
T0*
_output_shapes
:	

G
add_12Addmul_24mul_25*
T0*
_output_shapes
:	


	Assign_17Assign
Variable_3add_12*
_class
loc:@Variable_3*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
M
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
R
add_13AddVariable_7/readadd_13/y*
_output_shapes
:	
*
T0
M
Const_28Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 
^
clip_by_value_8/MinimumMinimumadd_13Const_29*
T0*
_output_shapes
:	

g
clip_by_value_8Maximumclip_by_value_8/MinimumConst_28*
_output_shapes
:	
*
T0
I
Sqrt_6Sqrtclip_by_value_8*
T0*
_output_shapes
:	

i
mul_26Mul(gradients/dense_4_1/MatMul_grad/MatMul_1Sqrt_6*
T0*
_output_shapes
:	

M
add_14/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
I
add_14Addadd_12add_14/y*
T0*
_output_shapes
:	

M
Const_30Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_31Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_9/MinimumMinimumadd_14Const_31*
T0*
_output_shapes
:	

g
clip_by_value_9Maximumclip_by_value_9/MinimumConst_30*
_output_shapes
:	
*
T0
I
Sqrt_7Sqrtclip_by_value_9*
_output_shapes
:	
*
T0
N
	truediv_7RealDivmul_26Sqrt_7*
T0*
_output_shapes
:	

M
mul_27Mul	lr_1/read	truediv_7*
T0*
_output_shapes
:	

S
sub_5Subdense_4/kernel/readmul_27*
_output_shapes
:	
*
T0
 
	Assign_18Assigndense_4/kernelsub_5*!
_class
loc:@dense_4/kernel*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
M
mul_28/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
R
mul_28Mulmul_28/xVariable_7/read*
_output_shapes
:	
*
T0
G
Square_7Square	truediv_7*
T0*
_output_shapes
:	

M
mul_29/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
K
mul_29Mulmul_29/xSquare_7*
_output_shapes
:	
*
T0
G
add_15Addmul_28mul_29*
_output_shapes
:	
*
T0

	Assign_19Assign
Variable_7add_15*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:	

³
group_deps_1NoOp^mul_5^Mean_7	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
į
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign
i
activation_1_2/EluEluconv2d_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0
r
conv2d_2_2/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2_2/transpose	Transposeactivation_1_2/Eluconv2d_2_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_2_2/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
u
$conv2d_2_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_2_2/convolutionConv2Dconv2d_2_2/transposeconv2d_2/kernel/read*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_2_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_2/transpose_1	Transposeconv2d_2_2/convolutionconv2d_2_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_2_2/EluEluconv2d_2_2/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_1_2/cond/switch_tIdentitydropout_1_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_1_2/cond/switch_fIdentitydropout_1_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_1_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_1_2/cond/mul/yConst^dropout_1_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ļ
dropout_1_2/cond/mul/SwitchSwitchactivation_2_2/Eludropout_1_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_2/Elu*
T0

dropout_1_2/cond/mulMuldropout_1_2/cond/mul/Switch:1dropout_1_2/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’@

"dropout_1_2/cond/dropout/keep_probConst^dropout_1_2/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_1_2/cond/dropout/ShapeShapedropout_1_2/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_1_2/cond/dropout/random_uniform/minConst^dropout_1_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_1_2/cond/dropout/random_uniform/maxConst^dropout_1_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ė
5dropout_1_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2ČóY*
dtype0*
T0*
seed±’å)
­
+dropout_1_2/cond/dropout/random_uniform/subSub+dropout_1_2/cond/dropout/random_uniform/max+dropout_1_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_1_2/cond/dropout/random_uniform/mulMul5dropout_1_2/cond/dropout/random_uniform/RandomUniform+dropout_1_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_1_2/cond/dropout/random_uniformAdd+dropout_1_2/cond/dropout/random_uniform/mul+dropout_1_2/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_1_2/cond/dropout/addAdd"dropout_1_2/cond/dropout/keep_prob'dropout_1_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_2/cond/dropout/FloorFloordropout_1_2/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/dropout/divRealDivdropout_1_2/cond/mul"dropout_1_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/dropout/mulMuldropout_1_2/cond/dropout/divdropout_1_2/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_1_2/cond/Switch_1Switchactivation_2_2/Eludropout_1_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_2/Elu*
T0

dropout_1_2/cond/MergeMergedropout_1_2/cond/Switch_1dropout_1_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_3_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_2/transpose	Transposedropout_1_2/cond/Mergeconv2d_3_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_3_2/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_3_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_3_2/convolutionConv2Dconv2d_3_2/transposeconv2d_3/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:’’’’’’’’’@*
data_formatNHWC*
strides

t
conv2d_3_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3_2/transpose_1	Transposeconv2d_3_2/convolutionconv2d_3_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_3_2/EluEluconv2d_3_2/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_2_2/cond/switch_tIdentitydropout_2_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_2_2/cond/switch_fIdentitydropout_2_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_2_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_2_2/cond/mul/yConst^dropout_2_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_2_2/cond/mul/SwitchSwitchactivation_3_2/Eludropout_2_2/cond/pred_id*
T0*%
_class
loc:@activation_3_2/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2_2/cond/mulMuldropout_2_2/cond/mul/Switch:1dropout_2_2/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’@

"dropout_2_2/cond/dropout/keep_probConst^dropout_2_2/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_2_2/cond/dropout/ShapeShapedropout_2_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_2_2/cond/dropout/random_uniform/minConst^dropout_2_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_2_2/cond/dropout/random_uniform/maxConst^dropout_2_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ģ
5dropout_2_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Õų×*
T0*
seed±’å)*
dtype0
­
+dropout_2_2/cond/dropout/random_uniform/subSub+dropout_2_2/cond/dropout/random_uniform/max+dropout_2_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_2_2/cond/dropout/random_uniform/mulMul5dropout_2_2/cond/dropout/random_uniform/RandomUniform+dropout_2_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_2/cond/dropout/random_uniformAdd+dropout_2_2/cond/dropout/random_uniform/mul+dropout_2_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_2_2/cond/dropout/addAdd"dropout_2_2/cond/dropout/keep_prob'dropout_2_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_2/cond/dropout/FloorFloordropout_2_2/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/dropout/divRealDivdropout_2_2/cond/mul"dropout_2_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/dropout/mulMuldropout_2_2/cond/dropout/divdropout_2_2/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
Ķ
dropout_2_2/cond/Switch_1Switchactivation_3_2/Eludropout_2_2/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_3_2/Elu

dropout_2_2/cond/MergeMergedropout_2_2/cond/Switch_1dropout_2_2/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
T0*
N
r
conv2d_4_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4_2/transpose	Transposedropout_2_2/cond/Mergeconv2d_4_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_4_2/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
u
$conv2d_4_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_4_2/convolutionConv2Dconv2d_4_2/transposeconv2d_4/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:’’’’’’’’’ *
data_formatNHWC*
strides

t
conv2d_4_2/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_4_2/transpose_1	Transposeconv2d_4_2/convolutionconv2d_4_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
k
activation_4_2/EluEluconv2d_4_2/transpose_1*/
_output_shapes
:’’’’’’’’’ *
T0
y
 max_pooling2d_1_2/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
„
max_pooling2d_1_2/transpose	Transposeactivation_4_2/Elu max_pooling2d_1_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
Ī
max_pooling2d_1_2/MaxPoolMaxPoolmax_pooling2d_1_2/transpose*
ksize
*/
_output_shapes
:’’’’’’’’’ *
data_formatNHWC*
strides
*
T0*
paddingVALID
{
"max_pooling2d_1_2/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
°
max_pooling2d_1_2/transpose_1	Transposemax_pooling2d_1_2/MaxPool"max_pooling2d_1_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_3_2/cond/switch_tIdentitydropout_3_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_3_2/cond/switch_fIdentitydropout_3_2/cond/Switch*
_output_shapes
:*
T0

g
dropout_3_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_3_2/cond/mul/yConst^dropout_3_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
å
dropout_3_2/cond/mul/SwitchSwitchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*
T0*0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ 

dropout_3_2/cond/mulMuldropout_3_2/cond/mul/Switch:1dropout_3_2/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

"dropout_3_2/cond/dropout/keep_probConst^dropout_3_2/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_3_2/cond/dropout/ShapeShapedropout_3_2/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_3_2/cond/dropout/random_uniform/minConst^dropout_3_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_3_2/cond/dropout/random_uniform/maxConst^dropout_3_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ģ
5dropout_3_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’ *
seed2ųĄĒ*
dtype0*
T0*
seed±’å)
­
+dropout_3_2/cond/dropout/random_uniform/subSub+dropout_3_2/cond/dropout/random_uniform/max+dropout_3_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_3_2/cond/dropout/random_uniform/mulMul5dropout_3_2/cond/dropout/random_uniform/RandomUniform+dropout_3_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_2/cond/dropout/random_uniformAdd+dropout_3_2/cond/dropout/random_uniform/mul+dropout_3_2/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’ *
T0
Ŗ
dropout_3_2/cond/dropout/addAdd"dropout_3_2/cond/dropout/keep_prob'dropout_3_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_2/cond/dropout/FloorFloordropout_3_2/cond/dropout/add*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_2/cond/dropout/divRealDivdropout_3_2/cond/mul"dropout_3_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_2/cond/dropout/mulMuldropout_3_2/cond/dropout/divdropout_3_2/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
ć
dropout_3_2/cond/Switch_1Switchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*
T0

dropout_3_2/cond/MergeMergedropout_3_2/cond/Switch_1dropout_3_2/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’ : *
N*
T0
g
flatten_1_2/ShapeShapedropout_3_2/cond/Merge*
_output_shapes
:*
out_type0*
T0
i
flatten_1_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!flatten_1_2/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
k
!flatten_1_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¹
flatten_1_2/strided_sliceStridedSliceflatten_1_2/Shapeflatten_1_2/strided_slice/stack!flatten_1_2/strided_slice/stack_1!flatten_1_2/strided_slice/stack_2*
_output_shapes
:*
end_mask*
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask *
Index0*
T0
[
flatten_1_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

flatten_1_2/ProdProdflatten_1_2/strided_sliceflatten_1_2/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
^
flatten_1_2/stack/0Const*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
z
flatten_1_2/stackPackflatten_1_2/stack/0flatten_1_2/Prod*

axis *
_output_shapes
:*
T0*
N

flatten_1_2/ReshapeReshapedropout_3_2/cond/Mergeflatten_1_2/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
T0

dense_1_2/MatMulMatMulflatten_1_2/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_5_2/EluEludense_1_2/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_2/cond/switch_tIdentitydropout_4_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_4_2/cond/switch_fIdentitydropout_4_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_4_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_4_2/cond/mul/yConst^dropout_4_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_4_2/cond/mul/SwitchSwitchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu

dropout_4_2/cond/mulMuldropout_4_2/cond/mul/Switch:1dropout_4_2/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_4_2/cond/dropout/keep_probConst^dropout_4_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_4_2/cond/dropout/ShapeShapedropout_4_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_2/cond/dropout/random_uniform/minConst^dropout_4_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_4_2/cond/dropout/random_uniform/maxConst^dropout_4_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Å
5dropout_4_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_2/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ėĖ*
T0*
seed±’å)*
dtype0
­
+dropout_4_2/cond/dropout/random_uniform/subSub+dropout_4_2/cond/dropout/random_uniform/max+dropout_4_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_4_2/cond/dropout/random_uniform/mulMul5dropout_4_2/cond/dropout/random_uniform/RandomUniform+dropout_4_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_4_2/cond/dropout/random_uniformAdd+dropout_4_2/cond/dropout/random_uniform/mul+dropout_4_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_4_2/cond/dropout/addAdd"dropout_4_2/cond/dropout/keep_prob'dropout_4_2/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_4_2/cond/dropout/FloorFloordropout_4_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_2/cond/dropout/divRealDivdropout_4_2/cond/mul"dropout_4_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_2/cond/dropout/mulMuldropout_4_2/cond/dropout/divdropout_4_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_4_2/cond/Switch_1Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu

dropout_4_2/cond/MergeMergedropout_4_2/cond/Switch_1dropout_4_2/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
 
dense_2_2/MatMulMatMuldropout_4_2/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_6_2/EluEludense_2_2/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_5_2/cond/switch_tIdentitydropout_5_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_5_2/cond/switch_fIdentitydropout_5_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_5_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_5_2/cond/mul/yConst^dropout_5_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_5_2/cond/mul/SwitchSwitchactivation_6_2/Eludropout_5_2/cond/pred_id*%
_class
loc:@activation_6_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5_2/cond/mulMuldropout_5_2/cond/mul/Switch:1dropout_5_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_5_2/cond/dropout/keep_probConst^dropout_5_2/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_5_2/cond/dropout/ShapeShapedropout_5_2/cond/mul*
out_type0*
_output_shapes
:*
T0

+dropout_5_2/cond/dropout/random_uniform/minConst^dropout_5_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_5_2/cond/dropout/random_uniform/maxConst^dropout_5_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Å
5dropout_5_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_2/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2Ø
­
+dropout_5_2/cond/dropout/random_uniform/subSub+dropout_5_2/cond/dropout/random_uniform/max+dropout_5_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_5_2/cond/dropout/random_uniform/mulMul5dropout_5_2/cond/dropout/random_uniform/RandomUniform+dropout_5_2/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_5_2/cond/dropout/random_uniformAdd+dropout_5_2/cond/dropout/random_uniform/mul+dropout_5_2/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_5_2/cond/dropout/addAdd"dropout_5_2/cond/dropout/keep_prob'dropout_5_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_5_2/cond/dropout/FloorFloordropout_5_2/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_2/cond/dropout/divRealDivdropout_5_2/cond/mul"dropout_5_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_2/cond/dropout/mulMuldropout_5_2/cond/dropout/divdropout_5_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_5_2/cond/Switch_1Switchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu*
T0

dropout_5_2/cond/MergeMergedropout_5_2/cond/Switch_1dropout_5_2/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
 
dense_3_2/MatMulMatMuldropout_5_2/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_7_2/EluEludense_3_2/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_6_2/cond/switch_tIdentitydropout_6_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_6_2/cond/switch_fIdentitydropout_6_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_6_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_6_2/cond/mul/yConst^dropout_6_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Į
dropout_6_2/cond/mul/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu

dropout_6_2/cond/mulMuldropout_6_2/cond/mul/Switch:1dropout_6_2/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_6_2/cond/dropout/keep_probConst^dropout_6_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_6_2/cond/dropout/ShapeShapedropout_6_2/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_6_2/cond/dropout/random_uniform/minConst^dropout_6_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_6_2/cond/dropout/random_uniform/maxConst^dropout_6_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Å
5dropout_6_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_2/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2ä 
­
+dropout_6_2/cond/dropout/random_uniform/subSub+dropout_6_2/cond/dropout/random_uniform/max+dropout_6_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_6_2/cond/dropout/random_uniform/mulMul5dropout_6_2/cond/dropout/random_uniform/RandomUniform+dropout_6_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_6_2/cond/dropout/random_uniformAdd+dropout_6_2/cond/dropout/random_uniform/mul+dropout_6_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_6_2/cond/dropout/addAdd"dropout_6_2/cond/dropout/keep_prob'dropout_6_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_6_2/cond/dropout/FloorFloordropout_6_2/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_2/cond/dropout/divRealDivdropout_6_2/cond/mul"dropout_6_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_2/cond/dropout/mulMuldropout_6_2/cond/dropout/divdropout_6_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_6_2/cond/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu

dropout_6_2/cond/MergeMergedropout_6_2/cond/Switch_1dropout_6_2/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0

dense_4_2/MatMulMatMuldropout_6_2/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( 
e
activation_8_2/SoftmaxSoftmaxdense_4_2/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

W
lr_2/initial_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
lr_2
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

lr_2/AssignAssignlr_2lr_2/initial_value*
_output_shapes
: *
validate_shape(*
_class
	loc:@lr_2*
T0*
use_locking(
U
	lr_2/readIdentitylr_2*
T0*
_output_shapes
: *
_class
	loc:@lr_2
Z
decay_2/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
decay_2
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

decay_2/AssignAssigndecay_2decay_2/initial_value*
_class
loc:@decay_2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
^
decay_2/readIdentitydecay_2*
T0*
_class
loc:@decay_2*
_output_shapes
: 
_
iterations_2/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
iterations_2
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
²
iterations_2/AssignAssigniterations_2iterations_2/initial_value*
use_locking(*
T0*
_class
loc:@iterations_2*
validate_shape(*
_output_shapes
: 
m
iterations_2/readIdentityiterations_2*
T0*
_output_shapes
: *
_class
loc:@iterations_2
x
activation_8_sample_weights_2Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’

activation_8_target_2Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Y
Sum_4/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

Sum_4Sumactivation_8_2/SoftmaxSum_4/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:’’’’’’’’’
e
	truediv_8RealDivactivation_8_2/SoftmaxSum_4*'
_output_shapes
:’’’’’’’’’
*
T0
M
Const_32Const*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
L
sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
@
sub_6Subsub_6/xConst_32*
T0*
_output_shapes
: 
g
clip_by_value_10/MinimumMinimum	truediv_8sub_6*
T0*'
_output_shapes
:’’’’’’’’’

q
clip_by_value_10Maximumclip_by_value_10/MinimumConst_32*
T0*'
_output_shapes
:’’’’’’’’’

P
Log_2Logclip_by_value_10*
T0*'
_output_shapes
:’’’’’’’’’

]
mul_30Mulactivation_8_target_2Log_2*
T0*'
_output_shapes
:’’’’’’’’’

Y
Sum_5/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
x
Sum_5Summul_30Sum_5/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
A
Neg_2NegSum_5*
T0*#
_output_shapes
:’’’’’’’’’
[
Mean_8/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB 
z
Mean_8MeanNeg_2Mean_8/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
b
mul_31MulMean_8activation_8_sample_weights_2*
T0*#
_output_shapes
:’’’’’’’’’
Q
NotEqual_2/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
q

NotEqual_2NotEqualactivation_8_sample_weights_2NotEqual_2/y*#
_output_shapes
:’’’’’’’’’*
T0
W
Cast_4Cast
NotEqual_2*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_33Const*
valueB: *
_output_shapes
:*
dtype0
^
Mean_9MeanCast_4Const_33*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
	truediv_9RealDivmul_31Mean_9*#
_output_shapes
:’’’’’’’’’*
T0
R
Const_34Const*
dtype0*
_output_shapes
:*
valueB: 
b
Mean_10Mean	truediv_9Const_34*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_32/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
A
mul_32Mulmul_32/xMean_10*
T0*
_output_shapes
: 
T
ArgMax_4/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMax_4ArgMaxactivation_8_target_2ArgMax_4/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
T
ArgMax_5/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_5ArgMaxactivation_8_2/SoftmaxArgMax_5/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
R
Equal_2EqualArgMax_4ArgMax_5*#
_output_shapes
:’’’’’’’’’*
T0	
T
Cast_5CastEqual_2*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
R
Const_35Const*
dtype0*
_output_shapes
:*
valueB: 
_
Mean_11MeanCast_5Const_35*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
C
init_2NoOp^lr_2/Assign^decay_2/Assign^iterations_2/Assign
'
group_deps_2NoOp^mul_32^Mean_11
o
gradients_1/ShapeConst*
valueB *
_class
loc:@mul_32*
_output_shapes
: *
dtype0
q
gradients_1/ConstConst*
valueB
 *  ?*
_class
loc:@mul_32*
_output_shapes
: *
dtype0
z
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
T0*
_class
loc:@mul_32*
_output_shapes
: 
{
gradients_1/mul_32_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_32
}
gradients_1/mul_32_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_32
Ž
-gradients_1/mul_32_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_32_grad/Shapegradients_1/mul_32_grad/Shape_1*
T0*
_class
loc:@mul_32*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
y
gradients_1/mul_32_grad/mulMulgradients_1/FillMean_10*
T0*
_output_shapes
: *
_class
loc:@mul_32
É
gradients_1/mul_32_grad/SumSumgradients_1/mul_32_grad/mul-gradients_1/mul_32_grad/BroadcastGradientArgs*
_class
loc:@mul_32*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
°
gradients_1/mul_32_grad/ReshapeReshapegradients_1/mul_32_grad/Sumgradients_1/mul_32_grad/Shape*
T0*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: 
|
gradients_1/mul_32_grad/mul_1Mulmul_32/xgradients_1/Fill*
_output_shapes
: *
_class
loc:@mul_32*
T0
Ļ
gradients_1/mul_32_grad/Sum_1Sumgradients_1/mul_32_grad/mul_1/gradients_1/mul_32_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_32*
_output_shapes
:
¶
!gradients_1/mul_32_grad/Reshape_1Reshapegradients_1/mul_32_grad/Sum_1gradients_1/mul_32_grad/Shape_1*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: *
T0

&gradients_1/Mean_10_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:*
_class
loc:@Mean_10
Å
 gradients_1/Mean_10_grad/ReshapeReshape!gradients_1/mul_32_grad/Reshape_1&gradients_1/Mean_10_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_10*
_output_shapes
:

gradients_1/Mean_10_grad/ShapeShape	truediv_9*
T0*
out_type0*
_class
loc:@Mean_10*
_output_shapes
:
Ć
gradients_1/Mean_10_grad/TileTile gradients_1/Mean_10_grad/Reshapegradients_1/Mean_10_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_10*#
_output_shapes
:’’’’’’’’’

 gradients_1/Mean_10_grad/Shape_1Shape	truediv_9*
out_type0*
_class
loc:@Mean_10*
_output_shapes
:*
T0

 gradients_1/Mean_10_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@Mean_10

gradients_1/Mean_10_grad/ConstConst*
valueB: *
_class
loc:@Mean_10*
_output_shapes
:*
dtype0
Į
gradients_1/Mean_10_grad/ProdProd gradients_1/Mean_10_grad/Shape_1gradients_1/Mean_10_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_10

 gradients_1/Mean_10_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_10
Å
gradients_1/Mean_10_grad/Prod_1Prod gradients_1/Mean_10_grad/Shape_2 gradients_1/Mean_10_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_10*
T0*
	keep_dims( *

Tidx0

"gradients_1/Mean_10_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_10*
dtype0*
_output_shapes
: 
­
 gradients_1/Mean_10_grad/MaximumMaximumgradients_1/Mean_10_grad/Prod_1"gradients_1/Mean_10_grad/Maximum/y*
_output_shapes
: *
_class
loc:@Mean_10*
T0
«
!gradients_1/Mean_10_grad/floordivFloorDivgradients_1/Mean_10_grad/Prod gradients_1/Mean_10_grad/Maximum*
T0*
_class
loc:@Mean_10*
_output_shapes
: 

gradients_1/Mean_10_grad/CastCast!gradients_1/Mean_10_grad/floordiv*
_output_shapes
: *

DstT0*
_class
loc:@Mean_10*

SrcT0
³
 gradients_1/Mean_10_grad/truedivRealDivgradients_1/Mean_10_grad/Tilegradients_1/Mean_10_grad/Cast*
T0*
_class
loc:@Mean_10*#
_output_shapes
:’’’’’’’’’

 gradients_1/truediv_9_grad/ShapeShapemul_31*
out_type0*
_class
loc:@truediv_9*
_output_shapes
:*
T0

"gradients_1/truediv_9_grad/Shape_1Const*
valueB *
_class
loc:@truediv_9*
_output_shapes
: *
dtype0
ź
0gradients_1/truediv_9_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_9_grad/Shape"gradients_1/truediv_9_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_9*
T0
£
"gradients_1/truediv_9_grad/RealDivRealDiv gradients_1/Mean_10_grad/truedivMean_9*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9*
T0
Ł
gradients_1/truediv_9_grad/SumSum"gradients_1/truediv_9_grad/RealDiv0gradients_1/truediv_9_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_9*
_output_shapes
:
É
"gradients_1/truediv_9_grad/ReshapeReshapegradients_1/truediv_9_grad/Sum gradients_1/truediv_9_grad/Shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_9
y
gradients_1/truediv_9_grad/NegNegmul_31*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9
£
$gradients_1/truediv_9_grad/RealDiv_1RealDivgradients_1/truediv_9_grad/NegMean_9*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9
©
$gradients_1/truediv_9_grad/RealDiv_2RealDiv$gradients_1/truediv_9_grad/RealDiv_1Mean_9*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9*
T0
¹
gradients_1/truediv_9_grad/mulMul gradients_1/Mean_10_grad/truediv$gradients_1/truediv_9_grad/RealDiv_2*
_class
loc:@truediv_9*#
_output_shapes
:’’’’’’’’’*
T0
Ł
 gradients_1/truediv_9_grad/Sum_1Sumgradients_1/truediv_9_grad/mul2gradients_1/truediv_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_9*
_output_shapes
:
Ā
$gradients_1/truediv_9_grad/Reshape_1Reshape gradients_1/truediv_9_grad/Sum_1"gradients_1/truediv_9_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_9
~
gradients_1/mul_31_grad/ShapeShapeMean_8*
_output_shapes
:*
out_type0*
_class
loc:@mul_31*
T0

gradients_1/mul_31_grad/Shape_1Shapeactivation_8_sample_weights_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_31
Ž
-gradients_1/mul_31_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_31_grad/Shapegradients_1/mul_31_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_31*
T0
®
gradients_1/mul_31_grad/mulMul"gradients_1/truediv_9_grad/Reshapeactivation_8_sample_weights_2*
T0*
_class
loc:@mul_31*#
_output_shapes
:’’’’’’’’’
É
gradients_1/mul_31_grad/SumSumgradients_1/mul_31_grad/mul-gradients_1/mul_31_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_31
½
gradients_1/mul_31_grad/ReshapeReshapegradients_1/mul_31_grad/Sumgradients_1/mul_31_grad/Shape*
Tshape0*
_class
loc:@mul_31*#
_output_shapes
:’’’’’’’’’*
T0

gradients_1/mul_31_grad/mul_1MulMean_8"gradients_1/truediv_9_grad/Reshape*
T0*
_class
loc:@mul_31*#
_output_shapes
:’’’’’’’’’
Ļ
gradients_1/mul_31_grad/Sum_1Sumgradients_1/mul_31_grad/mul_1/gradients_1/mul_31_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_31
Ć
!gradients_1/mul_31_grad/Reshape_1Reshapegradients_1/mul_31_grad/Sum_1gradients_1/mul_31_grad/Shape_1*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@mul_31*
T0
}
gradients_1/Mean_8_grad/ShapeShapeNeg_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_8
y
gradients_1/Mean_8_grad/SizeConst*
value	B :*
_class
loc:@Mean_8*
dtype0*
_output_shapes
: 

gradients_1/Mean_8_grad/addAddMean_8/reduction_indicesgradients_1/Mean_8_grad/Size*
_class
loc:@Mean_8*
_output_shapes
: *
T0
 
gradients_1/Mean_8_grad/modFloorModgradients_1/Mean_8_grad/addgradients_1/Mean_8_grad/Size*
_class
loc:@Mean_8*
_output_shapes
: *
T0

gradients_1/Mean_8_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_8*
dtype0*
_output_shapes
:

#gradients_1/Mean_8_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class
loc:@Mean_8

#gradients_1/Mean_8_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8
Ń
gradients_1/Mean_8_grad/rangeRange#gradients_1/Mean_8_grad/range/startgradients_1/Mean_8_grad/Size#gradients_1/Mean_8_grad/range/delta*
_output_shapes
:*
_class
loc:@Mean_8*

Tidx0

"gradients_1/Mean_8_grad/Fill/valueConst*
value	B :*
_class
loc:@Mean_8*
_output_shapes
: *
dtype0
§
gradients_1/Mean_8_grad/FillFillgradients_1/Mean_8_grad/Shape_1"gradients_1/Mean_8_grad/Fill/value*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

%gradients_1/Mean_8_grad/DynamicStitchDynamicStitchgradients_1/Mean_8_grad/rangegradients_1/Mean_8_grad/modgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Fill*
N*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_8
~
!gradients_1/Mean_8_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8
½
gradients_1/Mean_8_grad/MaximumMaximum%gradients_1/Mean_8_grad/DynamicStitch!gradients_1/Mean_8_grad/Maximum/y*
_class
loc:@Mean_8*#
_output_shapes
:’’’’’’’’’*
T0
µ
 gradients_1/Mean_8_grad/floordivFloorDivgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Maximum*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_8*
T0
¾
gradients_1/Mean_8_grad/ReshapeReshapegradients_1/mul_31_grad/Reshape%gradients_1/Mean_8_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_8*
_output_shapes
:
·
gradients_1/Mean_8_grad/TileTilegradients_1/Mean_8_grad/Reshape gradients_1/Mean_8_grad/floordiv*
_output_shapes
:*
_class
loc:@Mean_8*
T0*

Tmultiples0

gradients_1/Mean_8_grad/Shape_2ShapeNeg_2*
out_type0*
_class
loc:@Mean_8*
_output_shapes
:*
T0

gradients_1/Mean_8_grad/Shape_3ShapeMean_8*
out_type0*
_class
loc:@Mean_8*
_output_shapes
:*
T0

gradients_1/Mean_8_grad/ConstConst*
valueB: *
_class
loc:@Mean_8*
dtype0*
_output_shapes
:
½
gradients_1/Mean_8_grad/ProdProdgradients_1/Mean_8_grad/Shape_2gradients_1/Mean_8_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

gradients_1/Mean_8_grad/Const_1Const*
valueB: *
_class
loc:@Mean_8*
_output_shapes
:*
dtype0
Į
gradients_1/Mean_8_grad/Prod_1Prodgradients_1/Mean_8_grad/Shape_3gradients_1/Mean_8_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_8

#gradients_1/Mean_8_grad/Maximum_1/yConst*
value	B :*
_class
loc:@Mean_8*
_output_shapes
: *
dtype0
­
!gradients_1/Mean_8_grad/Maximum_1Maximumgradients_1/Mean_8_grad/Prod_1#gradients_1/Mean_8_grad/Maximum_1/y*
_class
loc:@Mean_8*
_output_shapes
: *
T0
«
"gradients_1/Mean_8_grad/floordiv_1FloorDivgradients_1/Mean_8_grad/Prod!gradients_1/Mean_8_grad/Maximum_1*
T0*
_output_shapes
: *
_class
loc:@Mean_8

gradients_1/Mean_8_grad/CastCast"gradients_1/Mean_8_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0*
_class
loc:@Mean_8
Æ
gradients_1/Mean_8_grad/truedivRealDivgradients_1/Mean_8_grad/Tilegradients_1/Mean_8_grad/Cast*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_8*
T0

gradients_1/Neg_2_grad/NegNeggradients_1/Mean_8_grad/truediv*
T0*
_class

loc:@Neg_2*#
_output_shapes
:’’’’’’’’’
|
gradients_1/Sum_5_grad/ShapeShapemul_30*
T0*
_output_shapes
:*
out_type0*
_class

loc:@Sum_5
w
gradients_1/Sum_5_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_5

gradients_1/Sum_5_grad/addAddSum_5/reduction_indicesgradients_1/Sum_5_grad/Size*
T0*
_class

loc:@Sum_5*
_output_shapes
: 

gradients_1/Sum_5_grad/modFloorModgradients_1/Sum_5_grad/addgradients_1/Sum_5_grad/Size*
_output_shapes
: *
_class

loc:@Sum_5*
T0
{
gradients_1/Sum_5_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@Sum_5
~
"gradients_1/Sum_5_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class

loc:@Sum_5
~
"gradients_1/Sum_5_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_5*
dtype0*
_output_shapes
: 
Ģ
gradients_1/Sum_5_grad/rangeRange"gradients_1/Sum_5_grad/range/startgradients_1/Sum_5_grad/Size"gradients_1/Sum_5_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_5*

Tidx0
}
!gradients_1/Sum_5_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_5*
dtype0*
_output_shapes
: 
”
gradients_1/Sum_5_grad/FillFillgradients_1/Sum_5_grad/Shape_1!gradients_1/Sum_5_grad/Fill/value*
_class

loc:@Sum_5*
_output_shapes
: *
T0
ū
$gradients_1/Sum_5_grad/DynamicStitchDynamicStitchgradients_1/Sum_5_grad/rangegradients_1/Sum_5_grad/modgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Fill*
N*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_5
|
 gradients_1/Sum_5_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_5*
_output_shapes
: *
dtype0
¹
gradients_1/Sum_5_grad/MaximumMaximum$gradients_1/Sum_5_grad/DynamicStitch gradients_1/Sum_5_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_5
Ø
gradients_1/Sum_5_grad/floordivFloorDivgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_5
¶
gradients_1/Sum_5_grad/ReshapeReshapegradients_1/Neg_2_grad/Neg$gradients_1/Sum_5_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_5*
_output_shapes
:*
T0
Ā
gradients_1/Sum_5_grad/TileTilegradients_1/Sum_5_grad/Reshapegradients_1/Sum_5_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_5

gradients_1/mul_30_grad/ShapeShapeactivation_8_target_2*
_output_shapes
:*
out_type0*
_class
loc:@mul_30*
T0

gradients_1/mul_30_grad/Shape_1ShapeLog_2*
T0*
out_type0*
_class
loc:@mul_30*
_output_shapes
:
Ž
-gradients_1/mul_30_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_30_grad/Shapegradients_1/mul_30_grad/Shape_1*
T0*
_class
loc:@mul_30*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

gradients_1/mul_30_grad/mulMulgradients_1/Sum_5_grad/TileLog_2*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@mul_30
É
gradients_1/mul_30_grad/SumSumgradients_1/mul_30_grad/mul-gradients_1/mul_30_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_30*
_output_shapes
:
Ź
gradients_1/mul_30_grad/ReshapeReshapegradients_1/mul_30_grad/Sumgradients_1/mul_30_grad/Shape*
Tshape0*
_class
loc:@mul_30*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
„
gradients_1/mul_30_grad/mul_1Mulactivation_8_target_2gradients_1/Sum_5_grad/Tile*
T0*
_class
loc:@mul_30*'
_output_shapes
:’’’’’’’’’

Ļ
gradients_1/mul_30_grad/Sum_1Sumgradients_1/mul_30_grad/mul_1/gradients_1/mul_30_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_30
Ē
!gradients_1/mul_30_grad/Reshape_1Reshapegradients_1/mul_30_grad/Sum_1gradients_1/mul_30_grad/Shape_1*
Tshape0*
_class
loc:@mul_30*'
_output_shapes
:’’’’’’’’’
*
T0
±
!gradients_1/Log_2_grad/Reciprocal
Reciprocalclip_by_value_10"^gradients_1/mul_30_grad/Reshape_1*
_class

loc:@Log_2*'
_output_shapes
:’’’’’’’’’
*
T0
³
gradients_1/Log_2_grad/mulMul!gradients_1/mul_30_grad/Reshape_1!gradients_1/Log_2_grad/Reciprocal*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Log_2
¤
'gradients_1/clip_by_value_10_grad/ShapeShapeclip_by_value_10/Minimum*
out_type0*#
_class
loc:@clip_by_value_10*
_output_shapes
:*
T0

)gradients_1/clip_by_value_10_grad/Shape_1Const*
valueB *#
_class
loc:@clip_by_value_10*
dtype0*
_output_shapes
: 
Ø
)gradients_1/clip_by_value_10_grad/Shape_2Shapegradients_1/Log_2_grad/mul*
_output_shapes
:*
out_type0*#
_class
loc:@clip_by_value_10*
T0

-gradients_1/clip_by_value_10_grad/zeros/ConstConst*
valueB
 *    *#
_class
loc:@clip_by_value_10*
_output_shapes
: *
dtype0
ą
'gradients_1/clip_by_value_10_grad/zerosFill)gradients_1/clip_by_value_10_grad/Shape_2-gradients_1/clip_by_value_10_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_10*
T0
¹
.gradients_1/clip_by_value_10_grad/GreaterEqualGreaterEqualclip_by_value_10/MinimumConst_32*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_10*
T0

7gradients_1/clip_by_value_10_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_1/clip_by_value_10_grad/Shape)gradients_1/clip_by_value_10_grad/Shape_1*
T0*#
_class
loc:@clip_by_value_10*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ž
(gradients_1/clip_by_value_10_grad/SelectSelect.gradients_1/clip_by_value_10_grad/GreaterEqualgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_10
ø
,gradients_1/clip_by_value_10_grad/LogicalNot
LogicalNot.gradients_1/clip_by_value_10_grad/GreaterEqual*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’

ž
*gradients_1/clip_by_value_10_grad/Select_1Select,gradients_1/clip_by_value_10_grad/LogicalNotgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’
*
T0
ō
%gradients_1/clip_by_value_10_grad/SumSum(gradients_1/clip_by_value_10_grad/Select7gradients_1/clip_by_value_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*#
_class
loc:@clip_by_value_10
é
)gradients_1/clip_by_value_10_grad/ReshapeReshape%gradients_1/clip_by_value_10_grad/Sum'gradients_1/clip_by_value_10_grad/Shape*
Tshape0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’
*
T0
ś
'gradients_1/clip_by_value_10_grad/Sum_1Sum*gradients_1/clip_by_value_10_grad/Select_19gradients_1/clip_by_value_10_grad/BroadcastGradientArgs:1*#
_class
loc:@clip_by_value_10*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ž
+gradients_1/clip_by_value_10_grad/Reshape_1Reshape'gradients_1/clip_by_value_10_grad/Sum_1)gradients_1/clip_by_value_10_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*#
_class
loc:@clip_by_value_10
„
/gradients_1/clip_by_value_10/Minimum_grad/ShapeShape	truediv_8*
T0*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:
”
1gradients_1/clip_by_value_10/Minimum_grad/Shape_1Const*
valueB *+
_class!
loc:@clip_by_value_10/Minimum*
dtype0*
_output_shapes
: 
Ē
1gradients_1/clip_by_value_10/Minimum_grad/Shape_2Shape)gradients_1/clip_by_value_10_grad/Reshape*
T0*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:
§
5gradients_1/clip_by_value_10/Minimum_grad/zeros/ConstConst*
valueB
 *    *+
_class!
loc:@clip_by_value_10/Minimum*
dtype0*
_output_shapes
: 

/gradients_1/clip_by_value_10/Minimum_grad/zerosFill1gradients_1/clip_by_value_10/Minimum_grad/Shape_25gradients_1/clip_by_value_10/Minimum_grad/zeros/Const*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
±
3gradients_1/clip_by_value_10/Minimum_grad/LessEqual	LessEqual	truediv_8sub_6*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
¦
?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_1/clip_by_value_10/Minimum_grad/Shape1gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*+
_class!
loc:@clip_by_value_10/Minimum
Ŗ
0gradients_1/clip_by_value_10/Minimum_grad/SelectSelect3gradients_1/clip_by_value_10/Minimum_grad/LessEqual)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
Ķ
4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot
LogicalNot3gradients_1/clip_by_value_10/Minimum_grad/LessEqual*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:’’’’’’’’’

­
2gradients_1/clip_by_value_10/Minimum_grad/Select_1Select4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_10/Minimum

-gradients_1/clip_by_value_10/Minimum_grad/SumSum0gradients_1/clip_by_value_10/Minimum_grad/Select?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

1gradients_1/clip_by_value_10/Minimum_grad/ReshapeReshape-gradients_1/clip_by_value_10/Minimum_grad/Sum/gradients_1/clip_by_value_10/Minimum_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
T0

/gradients_1/clip_by_value_10/Minimum_grad/Sum_1Sum2gradients_1/clip_by_value_10/Minimum_grad/Select_1Agradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*+
_class!
loc:@clip_by_value_10/Minimum
ž
3gradients_1/clip_by_value_10/Minimum_grad/Reshape_1Reshape/gradients_1/clip_by_value_10/Minimum_grad/Sum_11gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
: *
T0

 gradients_1/truediv_8_grad/ShapeShapeactivation_8_2/Softmax*
_output_shapes
:*
out_type0*
_class
loc:@truediv_8*
T0

"gradients_1/truediv_8_grad/Shape_1ShapeSum_4*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_8
ź
0gradients_1/truediv_8_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_8_grad/Shape"gradients_1/truediv_8_grad/Shape_1*
_class
loc:@truediv_8*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
·
"gradients_1/truediv_8_grad/RealDivRealDiv1gradients_1/clip_by_value_10/Minimum_grad/ReshapeSum_4*
T0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’

Ł
gradients_1/truediv_8_grad/SumSum"gradients_1/truediv_8_grad/RealDiv0gradients_1/truediv_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_8*
_output_shapes
:
Ķ
"gradients_1/truediv_8_grad/ReshapeReshapegradients_1/truediv_8_grad/Sum gradients_1/truediv_8_grad/Shape*
Tshape0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’
*
T0

gradients_1/truediv_8_grad/NegNegactivation_8_2/Softmax*
T0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’

¦
$gradients_1/truediv_8_grad/RealDiv_1RealDivgradients_1/truediv_8_grad/NegSum_4*
T0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’

¬
$gradients_1/truediv_8_grad/RealDiv_2RealDiv$gradients_1/truediv_8_grad/RealDiv_1Sum_4*
T0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’

Ī
gradients_1/truediv_8_grad/mulMul1gradients_1/clip_by_value_10/Minimum_grad/Reshape$gradients_1/truediv_8_grad/RealDiv_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8*
T0
Ł
 gradients_1/truediv_8_grad/Sum_1Sumgradients_1/truediv_8_grad/mul2gradients_1/truediv_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_8
Ó
$gradients_1/truediv_8_grad/Reshape_1Reshape gradients_1/truediv_8_grad/Sum_1"gradients_1/truediv_8_grad/Shape_1*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_8

gradients_1/Sum_4_grad/ShapeShapeactivation_8_2/Softmax*
_output_shapes
:*
out_type0*
_class

loc:@Sum_4*
T0
w
gradients_1/Sum_4_grad/SizeConst*
value	B :*
_class

loc:@Sum_4*
_output_shapes
: *
dtype0

gradients_1/Sum_4_grad/addAddSum_4/reduction_indicesgradients_1/Sum_4_grad/Size*
_class

loc:@Sum_4*
_output_shapes
: *
T0

gradients_1/Sum_4_grad/modFloorModgradients_1/Sum_4_grad/addgradients_1/Sum_4_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_4
{
gradients_1/Sum_4_grad/Shape_1Const*
valueB *
_class

loc:@Sum_4*
_output_shapes
: *
dtype0
~
"gradients_1/Sum_4_grad/range/startConst*
value	B : *
_class

loc:@Sum_4*
dtype0*
_output_shapes
: 
~
"gradients_1/Sum_4_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_4*
_output_shapes
: *
dtype0
Ģ
gradients_1/Sum_4_grad/rangeRange"gradients_1/Sum_4_grad/range/startgradients_1/Sum_4_grad/Size"gradients_1/Sum_4_grad/range/delta*
_class

loc:@Sum_4*
_output_shapes
:*

Tidx0
}
!gradients_1/Sum_4_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_4*
_output_shapes
: *
dtype0
”
gradients_1/Sum_4_grad/FillFillgradients_1/Sum_4_grad/Shape_1!gradients_1/Sum_4_grad/Fill/value*
T0*
_output_shapes
: *
_class

loc:@Sum_4
ū
$gradients_1/Sum_4_grad/DynamicStitchDynamicStitchgradients_1/Sum_4_grad/rangegradients_1/Sum_4_grad/modgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Fill*
N*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_4
|
 gradients_1/Sum_4_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_4
¹
gradients_1/Sum_4_grad/MaximumMaximum$gradients_1/Sum_4_grad/DynamicStitch gradients_1/Sum_4_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_4
Ø
gradients_1/Sum_4_grad/floordivFloorDivgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_4
Ą
gradients_1/Sum_4_grad/ReshapeReshape$gradients_1/truediv_8_grad/Reshape_1$gradients_1/Sum_4_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_4
Ā
gradients_1/Sum_4_grad/TileTilegradients_1/Sum_4_grad/Reshapegradients_1/Sum_4_grad/floordiv*
_class

loc:@Sum_4*'
_output_shapes
:’’’’’’’’’
*
T0*

Tmultiples0
²
gradients_1/AddNAddN"gradients_1/truediv_8_grad/Reshapegradients_1/Sum_4_grad/Tile*
T0*
_class
loc:@truediv_8*
N*'
_output_shapes
:’’’’’’’’’

¹
+gradients_1/activation_8_2/Softmax_grad/mulMulgradients_1/AddNactivation_8_2/Softmax*
T0*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_2/Softmax
²
=gradients_1/activation_8_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*)
_class
loc:@activation_8_2/Softmax*
dtype0*
_output_shapes
:

+gradients_1/activation_8_2/Softmax_grad/SumSum+gradients_1/activation_8_2/Softmax_grad/mul=gradients_1/activation_8_2/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’*)
_class
loc:@activation_8_2/Softmax
±
5gradients_1/activation_8_2/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   *)
_class
loc:@activation_8_2/Softmax

/gradients_1/activation_8_2/Softmax_grad/ReshapeReshape+gradients_1/activation_8_2/Softmax_grad/Sum5gradients_1/activation_8_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
Ņ
+gradients_1/activation_8_2/Softmax_grad/subSubgradients_1/AddN/gradients_1/activation_8_2/Softmax_grad/Reshape*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
Ö
-gradients_1/activation_8_2/Softmax_grad/mul_1Mul+gradients_1/activation_8_2/Softmax_grad/subactivation_8_2/Softmax*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
ō
(gradients_1/dense_4_2/MatMul_grad/MatMulMatMul-gradients_1/activation_8_2/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_4_2/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
š
*gradients_1/dense_4_2/MatMul_grad/MatMul_1MatMuldropout_6_2/cond/Merge-gradients_1/activation_8_2/Softmax_grad/mul_1*
transpose_b( *
_output_shapes
:	
*
transpose_a(*#
_class
loc:@dense_4_2/MatMul*
T0
ė
1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_4_2/MatMul_grad/MatMuldropout_6_2/cond/pred_id*
T0*#
_class
loc:@dense_4_2/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
ø
gradients_1/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_1Shapegradients_1/Switch:1*
T0*
out_type0*%
_class
loc:@activation_7_2/Elu*
_output_shapes
:

gradients_1/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_7_2/Elu
”
gradients_1/zerosFillgradients_1/Shape_1gradients_1/zeros/Const*%
_class
loc:@activation_7_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0
č
4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradgradients_1/zeros*%
_class
loc:@activation_7_2/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
Ą
3gradients_1/dropout_6_2/cond/dropout/mul_grad/ShapeShapedropout_6_2/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:
Ä
5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1Shapedropout_6_2/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:
¶
Cgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ń
1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1dropout_6_2/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
”
1gradients_1/dropout_6_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulCgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul

5gradients_1/dropout_6_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
ń
3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Muldropout_6_2/cond/dropout/div3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
§
3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
 
7gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ø
3gradients_1/dropout_6_2/cond/dropout/div_grad/ShapeShapedropout_6_2/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
:
©
5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
: *
dtype0
¶
Cgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
’
5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape"dropout_6_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
1gradients_1/dropout_6_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_6_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/div_grad/Sum3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
²
1gradients_1/dropout_6_2/cond/dropout/div_grad/NegNegdropout_6_2/cond/mul*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
ż
7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_6_2/cond/dropout/div_grad/Neg"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0

7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0

1gradients_1/dropout_6_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div
„
3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_6_2/cond/dropout/div_grad/mulEgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/div

7gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
: *
T0
±
+gradients_1/dropout_6_2/cond/mul_grad/ShapeShapedropout_6_2/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_2/cond/mul*
T0

-gradients_1/dropout_6_2/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_6_2/cond/mul

;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_6_2/cond/mul_grad/Shape-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*'
_class
loc:@dropout_6_2/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ū
)gradients_1/dropout_6_2/cond/mul_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/div_grad/Reshapedropout_6_2/cond/mul/y*
T0*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:’’’’’’’’’

)gradients_1/dropout_6_2/cond/mul_grad/SumSum)gradients_1/dropout_6_2/cond/mul_grad/mul;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul*
T0*
	keep_dims( *

Tidx0
ś
-gradients_1/dropout_6_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_6_2/cond/mul_grad/Sum+gradients_1/dropout_6_2/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0
ä
+gradients_1/dropout_6_2/cond/mul_grad/mul_1Muldropout_6_2/cond/mul/Switch:15gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape*
T0*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:’’’’’’’’’

+gradients_1/dropout_6_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_6_2/cond/mul_grad/mul_1=gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_1/dropout_6_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_6_2/cond/mul_grad/Sum_1-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
: *
T0
ŗ
gradients_1/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_2Shapegradients_1/Switch_1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_2/Elu*
_output_shapes
: *
dtype0
„
gradients_1/zeros_1Fillgradients_1/Shape_2gradients_1/zeros_1/Const*
T0*%
_class
loc:@activation_7_2/Elu*(
_output_shapes
:’’’’’’’’’
č
6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_6_2/cond/mul_grad/Reshapegradients_1/zeros_1*%
_class
loc:@activation_7_2/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
ė
gradients_1/AddN_1AddN4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_2/Elu*
N*(
_output_shapes
:’’’’’’’’’
ø
+gradients_1/activation_7_2/Elu_grad/EluGradEluGradgradients_1/AddN_1activation_7_2/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu*
T0
ņ
(gradients_1/dense_3_2/MatMul_grad/MatMulMatMul+gradients_1/activation_7_2/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_3_2/MatMul*
T0
ļ
*gradients_1/dense_3_2/MatMul_grad/MatMul_1MatMuldropout_5_2/cond/Merge+gradients_1/activation_7_2/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_3_2/MatMul*
T0
ė
1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_3_2/MatMul_grad/MatMuldropout_5_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_3_2/MatMul*
T0
ŗ
gradients_1/Switch_2Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*%
_class
loc:@activation_6_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients_1/Shape_3Shapegradients_1/Switch_2:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu

gradients_1/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_2/Elu
„
gradients_1/zeros_2Fillgradients_1/Shape_3gradients_1/zeros_2/Const*
T0*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:’’’’’’’’’
ź
4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradgradients_1/zeros_2*%
_class
loc:@activation_6_2/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
Ą
3gradients_1/dropout_5_2/cond/dropout/mul_grad/ShapeShapedropout_5_2/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
Ä
5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1Shapedropout_5_2/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
¶
Cgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
ń
1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1dropout_5_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
”
1gradients_1/dropout_5_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulCgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:

5gradients_1/dropout_5_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ń
3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Muldropout_5_2/cond/dropout/div3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
§
3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
 
7gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ø
3gradients_1/dropout_5_2/cond/dropout/div_grad/ShapeShapedropout_5_2/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
©
5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
: *
dtype0
¶
Cgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
’
5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
„
1gradients_1/dropout_5_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:

5gradients_1/dropout_5_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/div_grad/Sum3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
²
1gradients_1/dropout_5_2/cond/dropout/div_grad/NegNegdropout_5_2/cond/mul*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
ż
7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_5_2/cond/dropout/div_grad/Neg"dropout_5_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0

1gradients_1/dropout_5_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
„
3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_5_2/cond/dropout/div_grad/mulEgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

7gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
: 
±
+gradients_1/dropout_5_2/cond/mul_grad/ShapeShapedropout_5_2/cond/mul/Switch:1*
out_type0*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:*
T0

-gradients_1/dropout_5_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_5_2/cond/mul*
dtype0*
_output_shapes
: 

;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_5_2/cond/mul_grad/Shape-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*'
_class
loc:@dropout_5_2/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ū
)gradients_1/dropout_5_2/cond/mul_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/div_grad/Reshapedropout_5_2/cond/mul/y*
T0*'
_class
loc:@dropout_5_2/cond/mul*(
_output_shapes
:’’’’’’’’’

)gradients_1/dropout_5_2/cond/mul_grad/SumSum)gradients_1/dropout_5_2/cond/mul_grad/mul;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_5_2/cond/mul*
T0*
	keep_dims( *

Tidx0
ś
-gradients_1/dropout_5_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_5_2/cond/mul_grad/Sum+gradients_1/dropout_5_2/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_5_2/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_1/dropout_5_2/cond/mul_grad/mul_1Muldropout_5_2/cond/mul/Switch:15gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_2/cond/mul*
T0

+gradients_1/dropout_5_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_5_2/cond/mul_grad/mul_1=gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_2/cond/mul
ī
/gradients_1/dropout_5_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_5_2/cond/mul_grad/Sum_1-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_2/cond/mul*
T0
ŗ
gradients_1/Switch_3Switchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/Shape_4Shapegradients_1/Switch_3*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu

gradients_1/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_2/Elu
„
gradients_1/zeros_3Fillgradients_1/Shape_4gradients_1/zeros_3/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu
č
6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_5_2/cond/mul_grad/Reshapegradients_1/zeros_3*
T0*%
_class
loc:@activation_6_2/Elu*
N**
_output_shapes
:’’’’’’’’’: 
ė
gradients_1/AddN_2AddN4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu
ø
+gradients_1/activation_6_2/Elu_grad/EluGradEluGradgradients_1/AddN_2activation_6_2/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu*
T0
ņ
(gradients_1/dense_2_2/MatMul_grad/MatMulMatMul+gradients_1/activation_6_2/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_2_2/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
ļ
*gradients_1/dense_2_2/MatMul_grad/MatMul_1MatMuldropout_4_2/cond/Merge+gradients_1/activation_6_2/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_2_2/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ė
1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_2_2/MatMul_grad/MatMuldropout_4_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_2_2/MatMul*
T0
ŗ
gradients_1/Switch_4Switchactivation_5_2/Eludropout_4_2/cond/pred_id*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_1/Shape_5Shapegradients_1/Switch_4:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_2/Elu*
T0

gradients_1/zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_5_2/Elu
„
gradients_1/zeros_4Fillgradients_1/Shape_5gradients_1/zeros_4/Const*
T0*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’
ź
4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradgradients_1/zeros_4*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_5_2/Elu
Ą
3gradients_1/dropout_4_2/cond/dropout/mul_grad/ShapeShapedropout_4_2/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
Ä
5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1Shapedropout_4_2/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul
¶
Cgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ń
1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1dropout_4_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
”
1gradients_1/dropout_4_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulCgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ń
3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Muldropout_4_2/cond/dropout/div3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
§
3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
 
7gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ø
3gradients_1/dropout_4_2/cond/dropout/div_grad/ShapeShapedropout_4_2/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0
©
5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
: *
dtype0
¶
Cgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
’
5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape"dropout_4_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
„
1gradients_1/dropout_4_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/div_grad/Sum3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
²
1gradients_1/dropout_4_2/cond/dropout/div_grad/NegNegdropout_4_2/cond/mul*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
ż
7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_4_2/cond/dropout/div_grad/Neg"dropout_4_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1"dropout_4_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients_1/dropout_4_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
„
3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_4_2/cond/dropout/div_grad/mulEgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

7gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
: 
±
+gradients_1/dropout_4_2/cond/mul_grad/ShapeShapedropout_4_2/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_2/cond/mul

-gradients_1/dropout_4_2/cond/mul_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *'
_class
loc:@dropout_4_2/cond/mul

;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_4_2/cond/mul_grad/Shape-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_4_2/cond/mul
Ū
)gradients_1/dropout_4_2/cond/mul_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/div_grad/Reshapedropout_4_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_2/cond/mul

)gradients_1/dropout_4_2/cond/mul_grad/SumSum)gradients_1/dropout_4_2/cond/mul_grad/mul;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
:
ś
-gradients_1/dropout_4_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_4_2/cond/mul_grad/Sum+gradients_1/dropout_4_2/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0
ä
+gradients_1/dropout_4_2/cond/mul_grad/mul_1Muldropout_4_2/cond/mul/Switch:15gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_2/cond/mul

+gradients_1/dropout_4_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_4_2/cond/mul_grad/mul_1=gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
:
ī
/gradients_1/dropout_4_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_4_2/cond/mul_grad/Sum_1-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_2/cond/mul
ŗ
gradients_1/Switch_5Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients_1/Shape_6Shapegradients_1/Switch_5*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_2/Elu

gradients_1/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_2/Elu*
_output_shapes
: *
dtype0
„
gradients_1/zeros_5Fillgradients_1/Shape_6gradients_1/zeros_5/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu*
T0
č
6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_4_2/cond/mul_grad/Reshapegradients_1/zeros_5*
T0*%
_class
loc:@activation_5_2/Elu*
N**
_output_shapes
:’’’’’’’’’: 
ė
gradients_1/AddN_3AddN4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_5_2/Elu*
N*(
_output_shapes
:’’’’’’’’’
ø
+gradients_1/activation_5_2/Elu_grad/EluGradEluGradgradients_1/AddN_3activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu*
T0
ņ
(gradients_1/dense_1_2/MatMul_grad/MatMulMatMul+gradients_1/activation_5_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’$*
transpose_a( *#
_class
loc:@dense_1_2/MatMul
ģ
*gradients_1/dense_1_2/MatMul_grad/MatMul_1MatMulflatten_1_2/Reshape+gradients_1/activation_5_2/Elu_grad/EluGrad*
transpose_b( *
T0*#
_class
loc:@dense_1_2/MatMul* 
_output_shapes
:
$*
transpose_a(
a
Const_36Const*
valueB
$*    *
dtype0* 
_output_shapes
:
$


Variable_8
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
¤
Variable_8/AssignAssign
Variable_8Const_36*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(* 
_output_shapes
:
$
q
Variable_8/readIdentity
Variable_8*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_8
a
Const_37Const*
valueB
*    * 
_output_shapes
:
*
dtype0


Variable_9
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¤
Variable_9/AssignAssign
Variable_9Const_37*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(* 
_output_shapes
:

q
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9* 
_output_shapes
:

a
Const_38Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_10
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
§
Variable_10/AssignAssignVariable_10Const_38*
_class
loc:@Variable_10* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
t
Variable_10/readIdentityVariable_10*
T0* 
_output_shapes
:
*
_class
loc:@Variable_10
_
Const_39Const*
valueB	
*    *
_output_shapes
:	
*
dtype0

Variable_11
VariableV2*
_output_shapes
:	
*
	container *
dtype0*
shared_name *
shape:	

¦
Variable_11/AssignAssignVariable_11Const_39*
_class
loc:@Variable_11*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
s
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11*
_output_shapes
:	

a
Const_40Const*
valueB
$*    * 
_output_shapes
:
$*
dtype0

Variable_12
VariableV2*
shared_name *
dtype0*
shape:
$* 
_output_shapes
:
$*
	container 
§
Variable_12/AssignAssignVariable_12Const_40*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(* 
_output_shapes
:
$
t
Variable_12/readIdentityVariable_12* 
_output_shapes
:
$*
_class
loc:@Variable_12*
T0
a
Const_41Const*
valueB
*    * 
_output_shapes
:
*
dtype0

Variable_13
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
§
Variable_13/AssignAssignVariable_13Const_41*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_13
t
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13* 
_output_shapes
:
*
T0
a
Const_42Const*
valueB
*    * 
_output_shapes
:
*
dtype0

Variable_14
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
§
Variable_14/AssignAssignVariable_14Const_42* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_14*
T0*
use_locking(
t
Variable_14/readIdentityVariable_14* 
_output_shapes
:
*
_class
loc:@Variable_14*
T0
_
Const_43Const*
_output_shapes
:	
*
dtype0*
valueB	
*    

Variable_15
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
¦
Variable_15/AssignAssignVariable_15Const_43*
_class
loc:@Variable_15*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
s
Variable_15/readIdentityVariable_15*
T0*
_output_shapes
:	
*
_class
loc:@Variable_15
M
mul_33/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_33Mulmul_33/xVariable_8/read*
T0* 
_output_shapes
:
$
i
Square_8Square*gradients_1/dense_1_2/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
M
mul_34/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_34Mulmul_34/xSquare_8*
T0* 
_output_shapes
:
$
H
add_16Addmul_33mul_34*
T0* 
_output_shapes
:
$

	Assign_20Assign
Variable_8add_16*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_8
M
add_17/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
T
add_17AddVariable_12/readadd_17/y*
T0* 
_output_shapes
:
$
M
Const_44Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_45Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_11/MinimumMinimumadd_17Const_45* 
_output_shapes
:
$*
T0
j
clip_by_value_11Maximumclip_by_value_11/MinimumConst_44*
T0* 
_output_shapes
:
$
K
Sqrt_8Sqrtclip_by_value_11*
T0* 
_output_shapes
:
$
l
mul_35Mul*gradients_1/dense_1_2/MatMul_grad/MatMul_1Sqrt_8* 
_output_shapes
:
$*
T0
M
add_18/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
J
add_18Addadd_16add_18/y* 
_output_shapes
:
$*
T0
M
Const_46Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_47Const*
dtype0*
_output_shapes
: *
valueB
 *  
`
clip_by_value_12/MinimumMinimumadd_18Const_47*
T0* 
_output_shapes
:
$
j
clip_by_value_12Maximumclip_by_value_12/MinimumConst_46*
T0* 
_output_shapes
:
$
K
Sqrt_9Sqrtclip_by_value_12* 
_output_shapes
:
$*
T0
P

truediv_10RealDivmul_35Sqrt_9* 
_output_shapes
:
$*
T0
O
mul_36Mul	lr_2/read
truediv_10*
T0* 
_output_shapes
:
$
T
sub_7Subdense_1/kernel/readmul_36* 
_output_shapes
:
$*
T0
”
	Assign_21Assigndense_1/kernelsub_7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
M
mul_37/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_37Mulmul_37/xVariable_12/read*
T0* 
_output_shapes
:
$
I
Square_9Square
truediv_10*
T0* 
_output_shapes
:
$
M
mul_38/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_38Mulmul_38/xSquare_9*
T0* 
_output_shapes
:
$
H
add_19Addmul_37mul_38* 
_output_shapes
:
$*
T0

	Assign_22AssignVariable_12add_19*
_class
loc:@Variable_12* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_39/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_39Mulmul_39/xVariable_9/read* 
_output_shapes
:
*
T0
j
	Square_10Square*gradients_1/dense_2_2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_40/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
M
mul_40Mulmul_40/x	Square_10* 
_output_shapes
:
*
T0
H
add_20Addmul_39mul_40*
T0* 
_output_shapes
:


	Assign_23Assign
Variable_9add_20*
_class
loc:@Variable_9* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
add_21/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_21AddVariable_13/readadd_21/y* 
_output_shapes
:
*
T0
M
Const_48Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_49Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_13/MinimumMinimumadd_21Const_49* 
_output_shapes
:
*
T0
j
clip_by_value_13Maximumclip_by_value_13/MinimumConst_48*
T0* 
_output_shapes
:

L
Sqrt_10Sqrtclip_by_value_13* 
_output_shapes
:
*
T0
m
mul_41Mul*gradients_1/dense_2_2/MatMul_grad/MatMul_1Sqrt_10* 
_output_shapes
:
*
T0
M
add_22/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
J
add_22Addadd_20add_22/y*
T0* 
_output_shapes
:

M
Const_50Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_51Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_14/MinimumMinimumadd_22Const_51* 
_output_shapes
:
*
T0
j
clip_by_value_14Maximumclip_by_value_14/MinimumConst_50*
T0* 
_output_shapes
:

L
Sqrt_11Sqrtclip_by_value_14* 
_output_shapes
:
*
T0
Q

truediv_11RealDivmul_41Sqrt_11*
T0* 
_output_shapes
:

O
mul_42Mul	lr_2/read
truediv_11* 
_output_shapes
:
*
T0
T
sub_8Subdense_2/kernel/readmul_42*
T0* 
_output_shapes
:

”
	Assign_24Assigndense_2/kernelsub_8*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel
M
mul_43/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_43Mulmul_43/xVariable_13/read* 
_output_shapes
:
*
T0
J
	Square_11Square
truediv_11* 
_output_shapes
:
*
T0
M
mul_44/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
M
mul_44Mulmul_44/x	Square_11* 
_output_shapes
:
*
T0
H
add_23Addmul_43mul_44* 
_output_shapes
:
*
T0

	Assign_25AssignVariable_13add_23*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_13
M
mul_45/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
T
mul_45Mulmul_45/xVariable_10/read* 
_output_shapes
:
*
T0
j
	Square_12Square*gradients_1/dense_3_2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_46/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
M
mul_46Mulmul_46/x	Square_12* 
_output_shapes
:
*
T0
H
add_24Addmul_45mul_46* 
_output_shapes
:
*
T0

	Assign_26AssignVariable_10add_24* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_10*
T0*
use_locking(
M
add_25/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_25AddVariable_14/readadd_25/y*
T0* 
_output_shapes
:

M
Const_52Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_53Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_15/MinimumMinimumadd_25Const_53* 
_output_shapes
:
*
T0
j
clip_by_value_15Maximumclip_by_value_15/MinimumConst_52*
T0* 
_output_shapes
:

L
Sqrt_12Sqrtclip_by_value_15* 
_output_shapes
:
*
T0
m
mul_47Mul*gradients_1/dense_3_2/MatMul_grad/MatMul_1Sqrt_12* 
_output_shapes
:
*
T0
M
add_26/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
J
add_26Addadd_24add_26/y*
T0* 
_output_shapes
:

M
Const_54Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_55Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_16/MinimumMinimumadd_26Const_55*
T0* 
_output_shapes
:

j
clip_by_value_16Maximumclip_by_value_16/MinimumConst_54* 
_output_shapes
:
*
T0
L
Sqrt_13Sqrtclip_by_value_16*
T0* 
_output_shapes
:

Q

truediv_12RealDivmul_47Sqrt_13* 
_output_shapes
:
*
T0
O
mul_48Mul	lr_2/read
truediv_12* 
_output_shapes
:
*
T0
T
sub_9Subdense_3/kernel/readmul_48*
T0* 
_output_shapes
:

”
	Assign_27Assigndense_3/kernelsub_9*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
M
mul_49/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_49Mulmul_49/xVariable_14/read* 
_output_shapes
:
*
T0
J
	Square_13Square
truediv_12*
T0* 
_output_shapes
:

M
mul_50/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_50Mulmul_50/x	Square_13* 
_output_shapes
:
*
T0
H
add_27Addmul_49mul_50*
T0* 
_output_shapes
:


	Assign_28AssignVariable_14add_27* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_14*
T0*
use_locking(
M
mul_51/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_51Mulmul_51/xVariable_11/read*
_output_shapes
:	
*
T0
i
	Square_14Square*gradients_1/dense_4_2/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_52/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_52Mulmul_52/x	Square_14*
_output_shapes
:	
*
T0
G
add_28Addmul_51mul_52*
T0*
_output_shapes
:	


	Assign_29AssignVariable_11add_28*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_11
M
add_29/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
S
add_29AddVariable_15/readadd_29/y*
T0*
_output_shapes
:	

M
Const_56Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_57Const*
valueB
 *  *
_output_shapes
: *
dtype0
_
clip_by_value_17/MinimumMinimumadd_29Const_57*
T0*
_output_shapes
:	

i
clip_by_value_17Maximumclip_by_value_17/MinimumConst_56*
_output_shapes
:	
*
T0
K
Sqrt_14Sqrtclip_by_value_17*
_output_shapes
:	
*
T0
l
mul_53Mul*gradients_1/dense_4_2/MatMul_grad/MatMul_1Sqrt_14*
T0*
_output_shapes
:	

M
add_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
I
add_30Addadd_28add_30/y*
T0*
_output_shapes
:	

M
Const_58Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_59Const*
valueB
 *  *
_output_shapes
: *
dtype0
_
clip_by_value_18/MinimumMinimumadd_30Const_59*
_output_shapes
:	
*
T0
i
clip_by_value_18Maximumclip_by_value_18/MinimumConst_58*
_output_shapes
:	
*
T0
K
Sqrt_15Sqrtclip_by_value_18*
T0*
_output_shapes
:	

P

truediv_13RealDivmul_53Sqrt_15*
T0*
_output_shapes
:	

N
mul_54Mul	lr_2/read
truediv_13*
_output_shapes
:	
*
T0
T
sub_10Subdense_4/kernel/readmul_54*
T0*
_output_shapes
:	

”
	Assign_30Assigndense_4/kernelsub_10*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	

M
mul_55/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_55Mulmul_55/xVariable_15/read*
_output_shapes
:	
*
T0
I
	Square_15Square
truediv_13*
_output_shapes
:	
*
T0
M
mul_56/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
L
mul_56Mulmul_56/x	Square_15*
T0*
_output_shapes
:	

G
add_31Addmul_55mul_56*
T0*
_output_shapes
:	


	Assign_31AssignVariable_15add_31*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_15
·
group_deps_3NoOp^mul_32^Mean_11
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
“
init_3NoOp^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign
i
activation_1_3/EluEluconv2d_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0
r
conv2d_2_3/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_2_3/transpose	Transposeactivation_1_3/Eluconv2d_2_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_2_3/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_2_3/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ž
conv2d_2_3/convolutionConv2Dconv2d_2_3/transposeconv2d_2/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
T0*
use_cudnn_on_gpu(
t
conv2d_2_3/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2_3/transpose_1	Transposeconv2d_2_3/convolutionconv2d_2_3/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
k
activation_2_3/EluEluconv2d_2_3/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_1_3/cond/switch_tIdentitydropout_1_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_1_3/cond/switch_fIdentitydropout_1_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_1_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_1_3/cond/mul/yConst^dropout_1_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_1_3/cond/mul/SwitchSwitchactivation_2_3/Eludropout_1_3/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_3/Elu*
T0

dropout_1_3/cond/mulMuldropout_1_3/cond/mul/Switch:1dropout_1_3/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_1_3/cond/dropout/keep_probConst^dropout_1_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_1_3/cond/dropout/ShapeShapedropout_1_3/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_1_3/cond/dropout/random_uniform/minConst^dropout_1_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_1_3/cond/dropout/random_uniform/maxConst^dropout_1_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ģ
5dropout_1_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_3/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*/
_output_shapes
:’’’’’’’’’@*
seed2Š
­
+dropout_1_3/cond/dropout/random_uniform/subSub+dropout_1_3/cond/dropout/random_uniform/max+dropout_1_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_1_3/cond/dropout/random_uniform/mulMul5dropout_1_3/cond/dropout/random_uniform/RandomUniform+dropout_1_3/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@
Ā
'dropout_1_3/cond/dropout/random_uniformAdd+dropout_1_3/cond/dropout/random_uniform/mul+dropout_1_3/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_1_3/cond/dropout/addAdd"dropout_1_3/cond/dropout/keep_prob'dropout_1_3/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_3/cond/dropout/FloorFloordropout_1_3/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_3/cond/dropout/divRealDivdropout_1_3/cond/mul"dropout_1_3/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_3/cond/dropout/mulMuldropout_1_3/cond/dropout/divdropout_1_3/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_1_3/cond/Switch_1Switchactivation_2_3/Eludropout_1_3/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_3/Elu

dropout_1_3/cond/MergeMergedropout_1_3/cond/Switch_1dropout_1_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
N*
T0
r
conv2d_3_3/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_3/transpose	Transposedropout_1_3/cond/Mergeconv2d_3_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_3_3/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
u
$conv2d_3_3/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ž
conv2d_3_3/convolutionConv2Dconv2d_3_3/transposeconv2d_3/kernel/read*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_3_3/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_3_3/transpose_1	Transposeconv2d_3_3/convolutionconv2d_3_3/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_3_3/EluEluconv2d_3_3/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_2_3/cond/switch_tIdentitydropout_2_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_2_3/cond/switch_fIdentitydropout_2_3/cond/Switch*
_output_shapes
:*
T0

g
dropout_2_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_2_3/cond/mul/yConst^dropout_2_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ļ
dropout_2_3/cond/mul/SwitchSwitchactivation_3_3/Eludropout_2_3/cond/pred_id*%
_class
loc:@activation_3_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_2_3/cond/mulMuldropout_2_3/cond/mul/Switch:1dropout_2_3/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_2_3/cond/dropout/keep_probConst^dropout_2_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_2_3/cond/dropout/ShapeShapedropout_2_3/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_2_3/cond/dropout/random_uniform/minConst^dropout_2_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_2_3/cond/dropout/random_uniform/maxConst^dropout_2_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ģ
5dropout_2_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_3/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Ųå*
dtype0*
T0*
seed±’å)
­
+dropout_2_3/cond/dropout/random_uniform/subSub+dropout_2_3/cond/dropout/random_uniform/max+dropout_2_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_2_3/cond/dropout/random_uniform/mulMul5dropout_2_3/cond/dropout/random_uniform/RandomUniform+dropout_2_3/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_3/cond/dropout/random_uniformAdd+dropout_2_3/cond/dropout/random_uniform/mul+dropout_2_3/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_2_3/cond/dropout/addAdd"dropout_2_3/cond/dropout/keep_prob'dropout_2_3/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_3/cond/dropout/FloorFloordropout_2_3/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_3/cond/dropout/divRealDivdropout_2_3/cond/mul"dropout_2_3/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_3/cond/dropout/mulMuldropout_2_3/cond/dropout/divdropout_2_3/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
Ķ
dropout_2_3/cond/Switch_1Switchactivation_3_3/Eludropout_2_3/cond/pred_id*%
_class
loc:@activation_3_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_2_3/cond/MergeMergedropout_2_3/cond/Switch_1dropout_2_3/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_4_3/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_3/transpose	Transposedropout_2_3/cond/Mergeconv2d_4_3/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_4_3/convolution/ShapeConst*%
valueB"      @       *
_output_shapes
:*
dtype0
u
$conv2d_4_3/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ž
conv2d_4_3/convolutionConv2Dconv2d_4_3/transposeconv2d_4/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:’’’’’’’’’ 
t
conv2d_4_3/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4_3/transpose_1	Transposeconv2d_4_3/convolutionconv2d_4_3/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
k
activation_4_3/EluEluconv2d_4_3/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’ 
y
 max_pooling2d_1_3/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
„
max_pooling2d_1_3/transpose	Transposeactivation_4_3/Elu max_pooling2d_1_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
Ī
max_pooling2d_1_3/MaxPoolMaxPoolmax_pooling2d_1_3/transpose*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
ksize
*
data_formatNHWC*
strides
*
T0
{
"max_pooling2d_1_3/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
°
max_pooling2d_1_3/transpose_1	Transposemax_pooling2d_1_3/MaxPool"max_pooling2d_1_3/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_3_3/cond/switch_tIdentitydropout_3_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_3_3/cond/switch_fIdentitydropout_3_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_3_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_3_3/cond/mul/yConst^dropout_3_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
å
dropout_3_3/cond/mul/SwitchSwitchmax_pooling2d_1_3/transpose_1dropout_3_3/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_3/transpose_1

dropout_3_3/cond/mulMuldropout_3_3/cond/mul/Switch:1dropout_3_3/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

"dropout_3_3/cond/dropout/keep_probConst^dropout_3_3/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_3_3/cond/dropout/ShapeShapedropout_3_3/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_3_3/cond/dropout/random_uniform/minConst^dropout_3_3/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_3_3/cond/dropout/random_uniform/maxConst^dropout_3_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ģ
5dropout_3_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_3/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*/
_output_shapes
:’’’’’’’’’ *
seed2ģųė
­
+dropout_3_3/cond/dropout/random_uniform/subSub+dropout_3_3/cond/dropout/random_uniform/max+dropout_3_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_3_3/cond/dropout/random_uniform/mulMul5dropout_3_3/cond/dropout/random_uniform/RandomUniform+dropout_3_3/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_3/cond/dropout/random_uniformAdd+dropout_3_3/cond/dropout/random_uniform/mul+dropout_3_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’ 
Ŗ
dropout_3_3/cond/dropout/addAdd"dropout_3_3/cond/dropout/keep_prob'dropout_3_3/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/dropout/FloorFloordropout_3_3/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_3/cond/dropout/divRealDivdropout_3_3/cond/mul"dropout_3_3/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/dropout/mulMuldropout_3_3/cond/dropout/divdropout_3_3/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
ć
dropout_3_3/cond/Switch_1Switchmax_pooling2d_1_3/transpose_1dropout_3_3/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_3/transpose_1*
T0

dropout_3_3/cond/MergeMergedropout_3_3/cond/Switch_1dropout_3_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’ : *
T0*
N
g
flatten_1_3/ShapeShapedropout_3_3/cond/Merge*
_output_shapes
:*
out_type0*
T0
i
flatten_1_3/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
k
!flatten_1_3/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
k
!flatten_1_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¹
flatten_1_3/strided_sliceStridedSliceflatten_1_3/Shapeflatten_1_3/strided_slice/stack!flatten_1_3/strided_slice/stack_1!flatten_1_3/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask *
Index0*
T0*
end_mask*
_output_shapes
:*
ellipsis_mask *

begin_mask 
[
flatten_1_3/ConstConst*
valueB: *
dtype0*
_output_shapes
:

flatten_1_3/ProdProdflatten_1_3/strided_sliceflatten_1_3/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
flatten_1_3/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
z
flatten_1_3/stackPackflatten_1_3/stack/0flatten_1_3/Prod*
_output_shapes
:*
N*

axis *
T0

flatten_1_3/ReshapeReshapedropout_3_3/cond/Mergeflatten_1_3/stack*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0

dense_1_3/MatMulMatMulflatten_1_3/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_5_3/EluEludense_1_3/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_3/cond/switch_tIdentitydropout_4_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_4_3/cond/switch_fIdentitydropout_4_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_4_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_4_3/cond/mul/yConst^dropout_4_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_4_3/cond/mul/SwitchSwitchactivation_5_3/Eludropout_4_3/cond/pred_id*%
_class
loc:@activation_5_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_4_3/cond/mulMuldropout_4_3/cond/mul/Switch:1dropout_4_3/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_4_3/cond/dropout/keep_probConst^dropout_4_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
r
dropout_4_3/cond/dropout/ShapeShapedropout_4_3/cond/mul*
out_type0*
_output_shapes
:*
T0

+dropout_4_3/cond/dropout/random_uniform/minConst^dropout_4_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_4_3/cond/dropout/random_uniform/maxConst^dropout_4_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Å
5dropout_4_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_3/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2æŁ
­
+dropout_4_3/cond/dropout/random_uniform/subSub+dropout_4_3/cond/dropout/random_uniform/max+dropout_4_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_4_3/cond/dropout/random_uniform/mulMul5dropout_4_3/cond/dropout/random_uniform/RandomUniform+dropout_4_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_4_3/cond/dropout/random_uniformAdd+dropout_4_3/cond/dropout/random_uniform/mul+dropout_4_3/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_4_3/cond/dropout/addAdd"dropout_4_3/cond/dropout/keep_prob'dropout_4_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_4_3/cond/dropout/FloorFloordropout_4_3/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_3/cond/dropout/divRealDivdropout_4_3/cond/mul"dropout_4_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_3/cond/dropout/mulMuldropout_4_3/cond/dropout/divdropout_4_3/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_4_3/cond/Switch_1Switchactivation_5_3/Eludropout_4_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu

dropout_4_3/cond/MergeMergedropout_4_3/cond/Switch_1dropout_4_3/cond/dropout/mul*
N*
T0**
_output_shapes
:’’’’’’’’’: 
 
dense_2_3/MatMulMatMuldropout_4_3/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_6_3/EluEludense_2_3/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_5_3/cond/switch_tIdentitydropout_5_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_5_3/cond/switch_fIdentitydropout_5_3/cond/Switch*
_output_shapes
:*
T0

g
dropout_5_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_5_3/cond/mul/yConst^dropout_5_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_5_3/cond/mul/SwitchSwitchactivation_6_3/Eludropout_5_3/cond/pred_id*
T0*%
_class
loc:@activation_6_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_5_3/cond/mulMuldropout_5_3/cond/mul/Switch:1dropout_5_3/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_5_3/cond/dropout/keep_probConst^dropout_5_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_5_3/cond/dropout/ShapeShapedropout_5_3/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_5_3/cond/dropout/random_uniform/minConst^dropout_5_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_5_3/cond/dropout/random_uniform/maxConst^dropout_5_3/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Å
5dropout_5_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_3/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*(
_output_shapes
:’’’’’’’’’*
seed2Į
­
+dropout_5_3/cond/dropout/random_uniform/subSub+dropout_5_3/cond/dropout/random_uniform/max+dropout_5_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_5_3/cond/dropout/random_uniform/mulMul5dropout_5_3/cond/dropout/random_uniform/RandomUniform+dropout_5_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_5_3/cond/dropout/random_uniformAdd+dropout_5_3/cond/dropout/random_uniform/mul+dropout_5_3/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_5_3/cond/dropout/addAdd"dropout_5_3/cond/dropout/keep_prob'dropout_5_3/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_5_3/cond/dropout/FloorFloordropout_5_3/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_3/cond/dropout/divRealDivdropout_5_3/cond/mul"dropout_5_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_3/cond/dropout/mulMuldropout_5_3/cond/dropout/divdropout_5_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_5_3/cond/Switch_1Switchactivation_6_3/Eludropout_5_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu*
T0

dropout_5_3/cond/MergeMergedropout_5_3/cond/Switch_1dropout_5_3/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
 
dense_3_3/MatMulMatMuldropout_5_3/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_7_3/EluEludense_3_3/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_6_3/cond/switch_tIdentitydropout_6_3/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_6_3/cond/switch_fIdentitydropout_6_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_6_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_6_3/cond/mul/yConst^dropout_6_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_6_3/cond/mul/SwitchSwitchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu

dropout_6_3/cond/mulMuldropout_6_3/cond/mul/Switch:1dropout_6_3/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_6_3/cond/dropout/keep_probConst^dropout_6_3/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_6_3/cond/dropout/ShapeShapedropout_6_3/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_6_3/cond/dropout/random_uniform/minConst^dropout_6_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_6_3/cond/dropout/random_uniform/maxConst^dropout_6_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ä
5dropout_6_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_3/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ų`*
dtype0*
T0*
seed±’å)
­
+dropout_6_3/cond/dropout/random_uniform/subSub+dropout_6_3/cond/dropout/random_uniform/max+dropout_6_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_6_3/cond/dropout/random_uniform/mulMul5dropout_6_3/cond/dropout/random_uniform/RandomUniform+dropout_6_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_6_3/cond/dropout/random_uniformAdd+dropout_6_3/cond/dropout/random_uniform/mul+dropout_6_3/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_6_3/cond/dropout/addAdd"dropout_6_3/cond/dropout/keep_prob'dropout_6_3/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_6_3/cond/dropout/FloorFloordropout_6_3/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_3/cond/dropout/divRealDivdropout_6_3/cond/mul"dropout_6_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_3/cond/dropout/mulMuldropout_6_3/cond/dropout/divdropout_6_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_6_3/cond/Switch_1Switchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*%
_class
loc:@activation_7_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6_3/cond/MergeMergedropout_6_3/cond/Switch_1dropout_6_3/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N

dense_4_3/MatMulMatMuldropout_6_3/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
e
activation_8_3/SoftmaxSoftmaxdense_4_3/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

W
lr_3/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
h
lr_3
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

lr_3/AssignAssignlr_3lr_3/initial_value*
use_locking(*
T0*
_class
	loc:@lr_3*
validate_shape(*
_output_shapes
: 
U
	lr_3/readIdentitylr_3*
_class
	loc:@lr_3*
_output_shapes
: *
T0
Z
decay_3/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
decay_3
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

decay_3/AssignAssigndecay_3decay_3/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@decay_3*
T0*
use_locking(
^
decay_3/readIdentitydecay_3*
T0*
_output_shapes
: *
_class
loc:@decay_3
_
iterations_3/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
p
iterations_3
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
²
iterations_3/AssignAssigniterations_3iterations_3/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@iterations_3*
T0*
use_locking(
m
iterations_3/readIdentityiterations_3*
_class
loc:@iterations_3*
_output_shapes
: *
T0
x
activation_8_sample_weights_3Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0

activation_8_target_3Placeholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
dtype0*%
shape:’’’’’’’’’’’’’’’’’’
Y
Sum_6/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

Sum_6Sumactivation_8_3/SoftmaxSum_6/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:’’’’’’’’’
f

truediv_14RealDivactivation_8_3/SoftmaxSum_6*
T0*'
_output_shapes
:’’’’’’’’’

M
Const_60Const*
valueB
 *æÖ3*
_output_shapes
: *
dtype0
M
sub_11/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
B
sub_11Subsub_11/xConst_60*
T0*
_output_shapes
: 
i
clip_by_value_19/MinimumMinimum
truediv_14sub_11*
T0*'
_output_shapes
:’’’’’’’’’

q
clip_by_value_19Maximumclip_by_value_19/MinimumConst_60*'
_output_shapes
:’’’’’’’’’
*
T0
P
Log_3Logclip_by_value_19*
T0*'
_output_shapes
:’’’’’’’’’

]
mul_57Mulactivation_8_target_3Log_3*
T0*'
_output_shapes
:’’’’’’’’’

Y
Sum_7/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
x
Sum_7Summul_57Sum_7/reduction_indices*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims( 
A
Neg_3NegSum_7*#
_output_shapes
:’’’’’’’’’*
T0
\
Mean_12/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
|
Mean_12MeanNeg_3Mean_12/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
c
mul_58MulMean_12activation_8_sample_weights_3*#
_output_shapes
:’’’’’’’’’*
T0
Q
NotEqual_3/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
q

NotEqual_3NotEqualactivation_8_sample_weights_3NotEqual_3/y*
T0*#
_output_shapes
:’’’’’’’’’
W
Cast_6Cast
NotEqual_3*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_61Const*
_output_shapes
:*
dtype0*
valueB: 
_
Mean_13MeanCast_6Const_61*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
T

truediv_15RealDivmul_58Mean_13*#
_output_shapes
:’’’’’’’’’*
T0
R
Const_62Const*
dtype0*
_output_shapes
:*
valueB: 
c
Mean_14Mean
truediv_15Const_62*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_59/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
A
mul_59Mulmul_59/xMean_14*
_output_shapes
: *
T0
T
ArgMax_6/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
w
ArgMax_6ArgMaxactivation_8_target_3ArgMax_6/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
T
ArgMax_7/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
x
ArgMax_7ArgMaxactivation_8_3/SoftmaxArgMax_7/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
R
Equal_3EqualArgMax_6ArgMax_7*
T0	*#
_output_shapes
:’’’’’’’’’
T
Cast_7CastEqual_3*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_63Const*
_output_shapes
:*
dtype0*
valueB: 
_
Mean_15MeanCast_7Const_63*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
C
init_4NoOp^lr_3/Assign^decay_3/Assign^iterations_3/Assign
'
group_deps_4NoOp^mul_59^Mean_15
o
gradients_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_59
q
gradients_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?*
_class
loc:@mul_59
z
gradients_2/FillFillgradients_2/Shapegradients_2/Const*
T0*
_class
loc:@mul_59*
_output_shapes
: 
{
gradients_2/mul_59_grad/ShapeConst*
valueB *
_class
loc:@mul_59*
_output_shapes
: *
dtype0
}
gradients_2/mul_59_grad/Shape_1Const*
valueB *
_class
loc:@mul_59*
dtype0*
_output_shapes
: 
Ž
-gradients_2/mul_59_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_59_grad/Shapegradients_2/mul_59_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_59
y
gradients_2/mul_59_grad/mulMulgradients_2/FillMean_14*
_output_shapes
: *
_class
loc:@mul_59*
T0
É
gradients_2/mul_59_grad/SumSumgradients_2/mul_59_grad/mul-gradients_2/mul_59_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_59*
_output_shapes
:
°
gradients_2/mul_59_grad/ReshapeReshapegradients_2/mul_59_grad/Sumgradients_2/mul_59_grad/Shape*
T0*
Tshape0*
_class
loc:@mul_59*
_output_shapes
: 
|
gradients_2/mul_59_grad/mul_1Mulmul_59/xgradients_2/Fill*
_class
loc:@mul_59*
_output_shapes
: *
T0
Ļ
gradients_2/mul_59_grad/Sum_1Sumgradients_2/mul_59_grad/mul_1/gradients_2/mul_59_grad/BroadcastGradientArgs:1*
_class
loc:@mul_59*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¶
!gradients_2/mul_59_grad/Reshape_1Reshapegradients_2/mul_59_grad/Sum_1gradients_2/mul_59_grad/Shape_1*
Tshape0*
_class
loc:@mul_59*
_output_shapes
: *
T0

&gradients_2/Mean_14_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@Mean_14
Å
 gradients_2/Mean_14_grad/ReshapeReshape!gradients_2/mul_59_grad/Reshape_1&gradients_2/Mean_14_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_14*
_output_shapes
:

gradients_2/Mean_14_grad/ShapeShape
truediv_15*
_output_shapes
:*
out_type0*
_class
loc:@Mean_14*
T0
Ć
gradients_2/Mean_14_grad/TileTile gradients_2/Mean_14_grad/Reshapegradients_2/Mean_14_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_14*#
_output_shapes
:’’’’’’’’’

 gradients_2/Mean_14_grad/Shape_1Shape
truediv_15*
_output_shapes
:*
out_type0*
_class
loc:@Mean_14*
T0

 gradients_2/Mean_14_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@Mean_14

gradients_2/Mean_14_grad/ConstConst*
valueB: *
_class
loc:@Mean_14*
_output_shapes
:*
dtype0
Į
gradients_2/Mean_14_grad/ProdProd gradients_2/Mean_14_grad/Shape_1gradients_2/Mean_14_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_14*
_output_shapes
: 

 gradients_2/Mean_14_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_14
Å
gradients_2/Mean_14_grad/Prod_1Prod gradients_2/Mean_14_grad/Shape_2 gradients_2/Mean_14_grad/Const_1*
_class
loc:@Mean_14*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

"gradients_2/Mean_14_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_14
­
 gradients_2/Mean_14_grad/MaximumMaximumgradients_2/Mean_14_grad/Prod_1"gradients_2/Mean_14_grad/Maximum/y*
T0*
_class
loc:@Mean_14*
_output_shapes
: 
«
!gradients_2/Mean_14_grad/floordivFloorDivgradients_2/Mean_14_grad/Prod gradients_2/Mean_14_grad/Maximum*
T0*
_class
loc:@Mean_14*
_output_shapes
: 

gradients_2/Mean_14_grad/CastCast!gradients_2/Mean_14_grad/floordiv*
_class
loc:@Mean_14*
_output_shapes
: *

DstT0*

SrcT0
³
 gradients_2/Mean_14_grad/truedivRealDivgradients_2/Mean_14_grad/Tilegradients_2/Mean_14_grad/Cast*
T0*
_class
loc:@Mean_14*#
_output_shapes
:’’’’’’’’’

!gradients_2/truediv_15_grad/ShapeShapemul_58*
_output_shapes
:*
out_type0*
_class
loc:@truediv_15*
T0

#gradients_2/truediv_15_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@truediv_15
ī
1gradients_2/truediv_15_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_2/truediv_15_grad/Shape#gradients_2/truediv_15_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_15*
T0
¦
#gradients_2/truediv_15_grad/RealDivRealDiv gradients_2/Mean_14_grad/truedivMean_13*
_class
loc:@truediv_15*#
_output_shapes
:’’’’’’’’’*
T0
Ż
gradients_2/truediv_15_grad/SumSum#gradients_2/truediv_15_grad/RealDiv1gradients_2/truediv_15_grad/BroadcastGradientArgs*
_class
loc:@truediv_15*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ķ
#gradients_2/truediv_15_grad/ReshapeReshapegradients_2/truediv_15_grad/Sum!gradients_2/truediv_15_grad/Shape*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_15*
T0
{
gradients_2/truediv_15_grad/NegNegmul_58*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15*
T0
§
%gradients_2/truediv_15_grad/RealDiv_1RealDivgradients_2/truediv_15_grad/NegMean_13*
_class
loc:@truediv_15*#
_output_shapes
:’’’’’’’’’*
T0
­
%gradients_2/truediv_15_grad/RealDiv_2RealDiv%gradients_2/truediv_15_grad/RealDiv_1Mean_13*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15
¼
gradients_2/truediv_15_grad/mulMul gradients_2/Mean_14_grad/truediv%gradients_2/truediv_15_grad/RealDiv_2*
_class
loc:@truediv_15*#
_output_shapes
:’’’’’’’’’*
T0
Ż
!gradients_2/truediv_15_grad/Sum_1Sumgradients_2/truediv_15_grad/mul3gradients_2/truediv_15_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_15*
_output_shapes
:
Ę
%gradients_2/truediv_15_grad/Reshape_1Reshape!gradients_2/truediv_15_grad/Sum_1#gradients_2/truediv_15_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_15*
_output_shapes
: 

gradients_2/mul_58_grad/ShapeShapeMean_12*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_58

gradients_2/mul_58_grad/Shape_1Shapeactivation_8_sample_weights_3*
_output_shapes
:*
out_type0*
_class
loc:@mul_58*
T0
Ž
-gradients_2/mul_58_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_58_grad/Shapegradients_2/mul_58_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_58
Æ
gradients_2/mul_58_grad/mulMul#gradients_2/truediv_15_grad/Reshapeactivation_8_sample_weights_3*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@mul_58
É
gradients_2/mul_58_grad/SumSumgradients_2/mul_58_grad/mul-gradients_2/mul_58_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@mul_58*
T0*
	keep_dims( *

Tidx0
½
gradients_2/mul_58_grad/ReshapeReshapegradients_2/mul_58_grad/Sumgradients_2/mul_58_grad/Shape*
Tshape0*
_class
loc:@mul_58*#
_output_shapes
:’’’’’’’’’*
T0

gradients_2/mul_58_grad/mul_1MulMean_12#gradients_2/truediv_15_grad/Reshape*#
_output_shapes
:’’’’’’’’’*
_class
loc:@mul_58*
T0
Ļ
gradients_2/mul_58_grad/Sum_1Sumgradients_2/mul_58_grad/mul_1/gradients_2/mul_58_grad/BroadcastGradientArgs:1*
_class
loc:@mul_58*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ć
!gradients_2/mul_58_grad/Reshape_1Reshapegradients_2/mul_58_grad/Sum_1gradients_2/mul_58_grad/Shape_1*
Tshape0*
_class
loc:@mul_58*#
_output_shapes
:’’’’’’’’’*
T0

gradients_2/Mean_12_grad/ShapeShapeNeg_3*
T0*
out_type0*
_class
loc:@Mean_12*
_output_shapes
:
{
gradients_2/Mean_12_grad/SizeConst*
value	B :*
_class
loc:@Mean_12*
_output_shapes
: *
dtype0

gradients_2/Mean_12_grad/addAddMean_12/reduction_indicesgradients_2/Mean_12_grad/Size*
_class
loc:@Mean_12*
_output_shapes
: *
T0
¤
gradients_2/Mean_12_grad/modFloorModgradients_2/Mean_12_grad/addgradients_2/Mean_12_grad/Size*
_class
loc:@Mean_12*
_output_shapes
: *
T0

 gradients_2/Mean_12_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_12*
_output_shapes
:*
dtype0

$gradients_2/Mean_12_grad/range/startConst*
value	B : *
_class
loc:@Mean_12*
dtype0*
_output_shapes
: 

$gradients_2/Mean_12_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_12
Ö
gradients_2/Mean_12_grad/rangeRange$gradients_2/Mean_12_grad/range/startgradients_2/Mean_12_grad/Size$gradients_2/Mean_12_grad/range/delta*

Tidx0*
_output_shapes
:*
_class
loc:@Mean_12

#gradients_2/Mean_12_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_12
«
gradients_2/Mean_12_grad/FillFill gradients_2/Mean_12_grad/Shape_1#gradients_2/Mean_12_grad/Fill/value*
_class
loc:@Mean_12*
_output_shapes
: *
T0

&gradients_2/Mean_12_grad/DynamicStitchDynamicStitchgradients_2/Mean_12_grad/rangegradients_2/Mean_12_grad/modgradients_2/Mean_12_grad/Shapegradients_2/Mean_12_grad/Fill*
N*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_12

"gradients_2/Mean_12_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_12*
_output_shapes
: *
dtype0
Į
 gradients_2/Mean_12_grad/MaximumMaximum&gradients_2/Mean_12_grad/DynamicStitch"gradients_2/Mean_12_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_12
¹
!gradients_2/Mean_12_grad/floordivFloorDivgradients_2/Mean_12_grad/Shape gradients_2/Mean_12_grad/Maximum*
_class
loc:@Mean_12*#
_output_shapes
:’’’’’’’’’*
T0
Į
 gradients_2/Mean_12_grad/ReshapeReshapegradients_2/mul_58_grad/Reshape&gradients_2/Mean_12_grad/DynamicStitch*
Tshape0*
_class
loc:@Mean_12*
_output_shapes
:*
T0
»
gradients_2/Mean_12_grad/TileTile gradients_2/Mean_12_grad/Reshape!gradients_2/Mean_12_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:*
_class
loc:@Mean_12

 gradients_2/Mean_12_grad/Shape_2ShapeNeg_3*
T0*
out_type0*
_class
loc:@Mean_12*
_output_shapes
:

 gradients_2/Mean_12_grad/Shape_3ShapeMean_12*
out_type0*
_class
loc:@Mean_12*
_output_shapes
:*
T0

gradients_2/Mean_12_grad/ConstConst*
valueB: *
_class
loc:@Mean_12*
dtype0*
_output_shapes
:
Į
gradients_2/Mean_12_grad/ProdProd gradients_2/Mean_12_grad/Shape_2gradients_2/Mean_12_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_12

 gradients_2/Mean_12_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_12
Å
gradients_2/Mean_12_grad/Prod_1Prod gradients_2/Mean_12_grad/Shape_3 gradients_2/Mean_12_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_12

$gradients_2/Mean_12_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_12
±
"gradients_2/Mean_12_grad/Maximum_1Maximumgradients_2/Mean_12_grad/Prod_1$gradients_2/Mean_12_grad/Maximum_1/y*
T0*
_class
loc:@Mean_12*
_output_shapes
: 
Æ
#gradients_2/Mean_12_grad/floordiv_1FloorDivgradients_2/Mean_12_grad/Prod"gradients_2/Mean_12_grad/Maximum_1*
T0*
_class
loc:@Mean_12*
_output_shapes
: 

gradients_2/Mean_12_grad/CastCast#gradients_2/Mean_12_grad/floordiv_1*
_output_shapes
: *

DstT0*
_class
loc:@Mean_12*

SrcT0
³
 gradients_2/Mean_12_grad/truedivRealDivgradients_2/Mean_12_grad/Tilegradients_2/Mean_12_grad/Cast*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_12*
T0

gradients_2/Neg_3_grad/NegNeg gradients_2/Mean_12_grad/truediv*
_class

loc:@Neg_3*#
_output_shapes
:’’’’’’’’’*
T0
|
gradients_2/Sum_7_grad/ShapeShapemul_57*
_output_shapes
:*
out_type0*
_class

loc:@Sum_7*
T0
w
gradients_2/Sum_7_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_7

gradients_2/Sum_7_grad/addAddSum_7/reduction_indicesgradients_2/Sum_7_grad/Size*
_output_shapes
: *
_class

loc:@Sum_7*
T0

gradients_2/Sum_7_grad/modFloorModgradients_2/Sum_7_grad/addgradients_2/Sum_7_grad/Size*
_class

loc:@Sum_7*
_output_shapes
: *
T0
{
gradients_2/Sum_7_grad/Shape_1Const*
valueB *
_class

loc:@Sum_7*
_output_shapes
: *
dtype0
~
"gradients_2/Sum_7_grad/range/startConst*
value	B : *
_class

loc:@Sum_7*
dtype0*
_output_shapes
: 
~
"gradients_2/Sum_7_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_7*
dtype0*
_output_shapes
: 
Ģ
gradients_2/Sum_7_grad/rangeRange"gradients_2/Sum_7_grad/range/startgradients_2/Sum_7_grad/Size"gradients_2/Sum_7_grad/range/delta*

Tidx0*
_output_shapes
:*
_class

loc:@Sum_7
}
!gradients_2/Sum_7_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_7
”
gradients_2/Sum_7_grad/FillFillgradients_2/Sum_7_grad/Shape_1!gradients_2/Sum_7_grad/Fill/value*
_output_shapes
: *
_class

loc:@Sum_7*
T0
ū
$gradients_2/Sum_7_grad/DynamicStitchDynamicStitchgradients_2/Sum_7_grad/rangegradients_2/Sum_7_grad/modgradients_2/Sum_7_grad/Shapegradients_2/Sum_7_grad/Fill*#
_output_shapes
:’’’’’’’’’*
N*
_class

loc:@Sum_7*
T0
|
 gradients_2/Sum_7_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_7*
_output_shapes
: *
dtype0
¹
gradients_2/Sum_7_grad/MaximumMaximum$gradients_2/Sum_7_grad/DynamicStitch gradients_2/Sum_7_grad/Maximum/y*
_class

loc:@Sum_7*#
_output_shapes
:’’’’’’’’’*
T0
Ø
gradients_2/Sum_7_grad/floordivFloorDivgradients_2/Sum_7_grad/Shapegradients_2/Sum_7_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_7
¶
gradients_2/Sum_7_grad/ReshapeReshapegradients_2/Neg_3_grad/Neg$gradients_2/Sum_7_grad/DynamicStitch*
T0*
Tshape0*
_class

loc:@Sum_7*
_output_shapes
:
Ā
gradients_2/Sum_7_grad/TileTilegradients_2/Sum_7_grad/Reshapegradients_2/Sum_7_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_7

gradients_2/mul_57_grad/ShapeShapeactivation_8_target_3*
_output_shapes
:*
out_type0*
_class
loc:@mul_57*
T0

gradients_2/mul_57_grad/Shape_1ShapeLog_3*
T0*
out_type0*
_class
loc:@mul_57*
_output_shapes
:
Ž
-gradients_2/mul_57_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_57_grad/Shapegradients_2/mul_57_grad/Shape_1*
T0*
_class
loc:@mul_57*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

gradients_2/mul_57_grad/mulMulgradients_2/Sum_7_grad/TileLog_3*
_class
loc:@mul_57*'
_output_shapes
:’’’’’’’’’
*
T0
É
gradients_2/mul_57_grad/SumSumgradients_2/mul_57_grad/mul-gradients_2/mul_57_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_57
Ź
gradients_2/mul_57_grad/ReshapeReshapegradients_2/mul_57_grad/Sumgradients_2/mul_57_grad/Shape*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
_class
loc:@mul_57*
T0
„
gradients_2/mul_57_grad/mul_1Mulactivation_8_target_3gradients_2/Sum_7_grad/Tile*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@mul_57*
T0
Ļ
gradients_2/mul_57_grad/Sum_1Sumgradients_2/mul_57_grad/mul_1/gradients_2/mul_57_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_57
Ē
!gradients_2/mul_57_grad/Reshape_1Reshapegradients_2/mul_57_grad/Sum_1gradients_2/mul_57_grad/Shape_1*
Tshape0*
_class
loc:@mul_57*'
_output_shapes
:’’’’’’’’’
*
T0
±
!gradients_2/Log_3_grad/Reciprocal
Reciprocalclip_by_value_19"^gradients_2/mul_57_grad/Reshape_1*
T0*
_class

loc:@Log_3*'
_output_shapes
:’’’’’’’’’

³
gradients_2/Log_3_grad/mulMul!gradients_2/mul_57_grad/Reshape_1!gradients_2/Log_3_grad/Reciprocal*
T0*
_class

loc:@Log_3*'
_output_shapes
:’’’’’’’’’

¤
'gradients_2/clip_by_value_19_grad/ShapeShapeclip_by_value_19/Minimum*
_output_shapes
:*
out_type0*#
_class
loc:@clip_by_value_19*
T0

)gradients_2/clip_by_value_19_grad/Shape_1Const*
valueB *#
_class
loc:@clip_by_value_19*
dtype0*
_output_shapes
: 
Ø
)gradients_2/clip_by_value_19_grad/Shape_2Shapegradients_2/Log_3_grad/mul*
T0*
_output_shapes
:*
out_type0*#
_class
loc:@clip_by_value_19

-gradients_2/clip_by_value_19_grad/zeros/ConstConst*
valueB
 *    *#
_class
loc:@clip_by_value_19*
dtype0*
_output_shapes
: 
ą
'gradients_2/clip_by_value_19_grad/zerosFill)gradients_2/clip_by_value_19_grad/Shape_2-gradients_2/clip_by_value_19_grad/zeros/Const*
T0*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

¹
.gradients_2/clip_by_value_19_grad/GreaterEqualGreaterEqualclip_by_value_19/MinimumConst_60*
T0*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’


7gradients_2/clip_by_value_19_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_2/clip_by_value_19_grad/Shape)gradients_2/clip_by_value_19_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@clip_by_value_19
ž
(gradients_2/clip_by_value_19_grad/SelectSelect.gradients_2/clip_by_value_19_grad/GreaterEqualgradients_2/Log_3_grad/mul'gradients_2/clip_by_value_19_grad/zeros*
T0*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

ø
,gradients_2/clip_by_value_19_grad/LogicalNot
LogicalNot.gradients_2/clip_by_value_19_grad/GreaterEqual*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

ž
*gradients_2/clip_by_value_19_grad/Select_1Select,gradients_2/clip_by_value_19_grad/LogicalNotgradients_2/Log_3_grad/mul'gradients_2/clip_by_value_19_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_19
ō
%gradients_2/clip_by_value_19_grad/SumSum(gradients_2/clip_by_value_19_grad/Select7gradients_2/clip_by_value_19_grad/BroadcastGradientArgs*#
_class
loc:@clip_by_value_19*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
é
)gradients_2/clip_by_value_19_grad/ReshapeReshape%gradients_2/clip_by_value_19_grad/Sum'gradients_2/clip_by_value_19_grad/Shape*
T0*
Tshape0*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

ś
'gradients_2/clip_by_value_19_grad/Sum_1Sum*gradients_2/clip_by_value_19_grad/Select_19gradients_2/clip_by_value_19_grad/BroadcastGradientArgs:1*#
_class
loc:@clip_by_value_19*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ž
+gradients_2/clip_by_value_19_grad/Reshape_1Reshape'gradients_2/clip_by_value_19_grad/Sum_1)gradients_2/clip_by_value_19_grad/Shape_1*
_output_shapes
: *
Tshape0*#
_class
loc:@clip_by_value_19*
T0
¦
/gradients_2/clip_by_value_19/Minimum_grad/ShapeShape
truediv_14*
T0*
out_type0*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:
”
1gradients_2/clip_by_value_19/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *+
_class!
loc:@clip_by_value_19/Minimum
Ē
1gradients_2/clip_by_value_19/Minimum_grad/Shape_2Shape)gradients_2/clip_by_value_19_grad/Reshape*
out_type0*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:*
T0
§
5gradients_2/clip_by_value_19/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *+
_class!
loc:@clip_by_value_19/Minimum

/gradients_2/clip_by_value_19/Minimum_grad/zerosFill1gradients_2/clip_by_value_19/Minimum_grad/Shape_25gradients_2/clip_by_value_19/Minimum_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum*
T0
³
3gradients_2/clip_by_value_19/Minimum_grad/LessEqual	LessEqual
truediv_14sub_11*
T0*+
_class!
loc:@clip_by_value_19/Minimum*'
_output_shapes
:’’’’’’’’’

¦
?gradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_2/clip_by_value_19/Minimum_grad/Shape1gradients_2/clip_by_value_19/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*+
_class!
loc:@clip_by_value_19/Minimum*
T0
Ŗ
0gradients_2/clip_by_value_19/Minimum_grad/SelectSelect3gradients_2/clip_by_value_19/Minimum_grad/LessEqual)gradients_2/clip_by_value_19_grad/Reshape/gradients_2/clip_by_value_19/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum*
T0
Ķ
4gradients_2/clip_by_value_19/Minimum_grad/LogicalNot
LogicalNot3gradients_2/clip_by_value_19/Minimum_grad/LessEqual*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum
­
2gradients_2/clip_by_value_19/Minimum_grad/Select_1Select4gradients_2/clip_by_value_19/Minimum_grad/LogicalNot)gradients_2/clip_by_value_19_grad/Reshape/gradients_2/clip_by_value_19/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum*
T0

-gradients_2/clip_by_value_19/Minimum_grad/SumSum0gradients_2/clip_by_value_19/Minimum_grad/Select?gradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:

1gradients_2/clip_by_value_19/Minimum_grad/ReshapeReshape-gradients_2/clip_by_value_19/Minimum_grad/Sum/gradients_2/clip_by_value_19/Minimum_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*+
_class!
loc:@clip_by_value_19/Minimum

/gradients_2/clip_by_value_19/Minimum_grad/Sum_1Sum2gradients_2/clip_by_value_19/Minimum_grad/Select_1Agradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:
ž
3gradients_2/clip_by_value_19/Minimum_grad/Reshape_1Reshape/gradients_2/clip_by_value_19/Minimum_grad/Sum_11gradients_2/clip_by_value_19/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*+
_class!
loc:@clip_by_value_19/Minimum

!gradients_2/truediv_14_grad/ShapeShapeactivation_8_3/Softmax*
out_type0*
_class
loc:@truediv_14*
_output_shapes
:*
T0

#gradients_2/truediv_14_grad/Shape_1ShapeSum_6*
T0*
out_type0*
_class
loc:@truediv_14*
_output_shapes
:
ī
1gradients_2/truediv_14_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_2/truediv_14_grad/Shape#gradients_2/truediv_14_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_14
¹
#gradients_2/truediv_14_grad/RealDivRealDiv1gradients_2/clip_by_value_19/Minimum_grad/ReshapeSum_6*
T0*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’

Ż
gradients_2/truediv_14_grad/SumSum#gradients_2/truediv_14_grad/RealDiv1gradients_2/truediv_14_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_14*
T0*
	keep_dims( *

Tidx0
Ń
#gradients_2/truediv_14_grad/ReshapeReshapegradients_2/truediv_14_grad/Sum!gradients_2/truediv_14_grad/Shape*
T0*
Tshape0*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’


gradients_2/truediv_14_grad/NegNegactivation_8_3/Softmax*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’
*
T0
©
%gradients_2/truediv_14_grad/RealDiv_1RealDivgradients_2/truediv_14_grad/NegSum_6*
T0*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’

Æ
%gradients_2/truediv_14_grad/RealDiv_2RealDiv%gradients_2/truediv_14_grad/RealDiv_1Sum_6*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14*
T0
Ń
gradients_2/truediv_14_grad/mulMul1gradients_2/clip_by_value_19/Minimum_grad/Reshape%gradients_2/truediv_14_grad/RealDiv_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14*
T0
Ż
!gradients_2/truediv_14_grad/Sum_1Sumgradients_2/truediv_14_grad/mul3gradients_2/truediv_14_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_14*
_output_shapes
:
×
%gradients_2/truediv_14_grad/Reshape_1Reshape!gradients_2/truediv_14_grad/Sum_1#gradients_2/truediv_14_grad/Shape_1*'
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_14*
T0

gradients_2/Sum_6_grad/ShapeShapeactivation_8_3/Softmax*
_output_shapes
:*
out_type0*
_class

loc:@Sum_6*
T0
w
gradients_2/Sum_6_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_6

gradients_2/Sum_6_grad/addAddSum_6/reduction_indicesgradients_2/Sum_6_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_6

gradients_2/Sum_6_grad/modFloorModgradients_2/Sum_6_grad/addgradients_2/Sum_6_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_6
{
gradients_2/Sum_6_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@Sum_6
~
"gradients_2/Sum_6_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class

loc:@Sum_6
~
"gradients_2/Sum_6_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_6
Ģ
gradients_2/Sum_6_grad/rangeRange"gradients_2/Sum_6_grad/range/startgradients_2/Sum_6_grad/Size"gradients_2/Sum_6_grad/range/delta*
_class

loc:@Sum_6*
_output_shapes
:*

Tidx0
}
!gradients_2/Sum_6_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_6
”
gradients_2/Sum_6_grad/FillFillgradients_2/Sum_6_grad/Shape_1!gradients_2/Sum_6_grad/Fill/value*
T0*
_class

loc:@Sum_6*
_output_shapes
: 
ū
$gradients_2/Sum_6_grad/DynamicStitchDynamicStitchgradients_2/Sum_6_grad/rangegradients_2/Sum_6_grad/modgradients_2/Sum_6_grad/Shapegradients_2/Sum_6_grad/Fill*
_class

loc:@Sum_6*#
_output_shapes
:’’’’’’’’’*
T0*
N
|
 gradients_2/Sum_6_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_6*
dtype0*
_output_shapes
: 
¹
gradients_2/Sum_6_grad/MaximumMaximum$gradients_2/Sum_6_grad/DynamicStitch gradients_2/Sum_6_grad/Maximum/y*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_6*
T0
Ø
gradients_2/Sum_6_grad/floordivFloorDivgradients_2/Sum_6_grad/Shapegradients_2/Sum_6_grad/Maximum*
_class

loc:@Sum_6*
_output_shapes
:*
T0
Į
gradients_2/Sum_6_grad/ReshapeReshape%gradients_2/truediv_14_grad/Reshape_1$gradients_2/Sum_6_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_6*
_output_shapes
:*
T0
Ā
gradients_2/Sum_6_grad/TileTilegradients_2/Sum_6_grad/Reshapegradients_2/Sum_6_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_6
“
gradients_2/AddNAddN#gradients_2/truediv_14_grad/Reshapegradients_2/Sum_6_grad/Tile*
N*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14
¹
+gradients_2/activation_8_3/Softmax_grad/mulMulgradients_2/AddNactivation_8_3/Softmax*
T0*)
_class
loc:@activation_8_3/Softmax*'
_output_shapes
:’’’’’’’’’

²
=gradients_2/activation_8_3/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:*)
_class
loc:@activation_8_3/Softmax

+gradients_2/activation_8_3/Softmax_grad/SumSum+gradients_2/activation_8_3/Softmax_grad/mul=gradients_2/activation_8_3/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’*)
_class
loc:@activation_8_3/Softmax
±
5gradients_2/activation_8_3/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *)
_class
loc:@activation_8_3/Softmax*
_output_shapes
:*
dtype0

/gradients_2/activation_8_3/Softmax_grad/ReshapeReshape+gradients_2/activation_8_3/Softmax_grad/Sum5gradients_2/activation_8_3/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’*
Tshape0*)
_class
loc:@activation_8_3/Softmax
Ņ
+gradients_2/activation_8_3/Softmax_grad/subSubgradients_2/AddN/gradients_2/activation_8_3/Softmax_grad/Reshape*)
_class
loc:@activation_8_3/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
Ö
-gradients_2/activation_8_3/Softmax_grad/mul_1Mul+gradients_2/activation_8_3/Softmax_grad/subactivation_8_3/Softmax*)
_class
loc:@activation_8_3/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
ō
(gradients_2/dense_4_3/MatMul_grad/MatMulMatMul-gradients_2/activation_8_3/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_4_3/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
š
*gradients_2/dense_4_3/MatMul_grad/MatMul_1MatMuldropout_6_3/cond/Merge-gradients_2/activation_8_3/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_4_3/MatMul*
_output_shapes
:	
*
transpose_a(
ė
1gradients_2/dropout_6_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_4_3/MatMul_grad/MatMuldropout_6_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_4_3/MatMul
ø
gradients_2/SwitchSwitchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu

gradients_2/Shape_1Shapegradients_2/Switch:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_3/Elu

gradients_2/zeros/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_3/Elu*
dtype0*
_output_shapes
: 
”
gradients_2/zerosFillgradients_2/Shape_1gradients_2/zeros/Const*
T0*%
_class
loc:@activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’
č
4gradients_2/dropout_6_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_6_3/cond/Merge_grad/cond_gradgradients_2/zeros**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_7_3/Elu*
T0
Ą
3gradients_2/dropout_6_3/cond/dropout/mul_grad/ShapeShapedropout_6_3/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul
Ä
5gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1Shapedropout_6_3/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:
¶
Cgradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ń
1gradients_2/dropout_6_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_6_3/cond/Merge_grad/cond_grad:1dropout_6_3/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
”
1gradients_2/dropout_6_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_6_3/cond/dropout/mul_grad/mulCgradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_6_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul
ń
3gradients_2/dropout_6_3/cond/dropout/mul_grad/mul_1Muldropout_6_3/cond/dropout/div3gradients_2/dropout_6_3/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
T0
§
3gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_6_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:
 
7gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ø
3gradients_2/dropout_6_3/cond/dropout/div_grad/ShapeShapedropout_6_3/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
T0
©
5gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_6_3/cond/dropout/div
¶
Cgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_6_3/cond/dropout/div_grad/Shape5gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
’
5gradients_2/dropout_6_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape"dropout_6_3/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
„
1gradients_2/dropout_6_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_6_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_3/cond/dropout/div

5gradients_2/dropout_6_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_6_3/cond/dropout/div_grad/Sum3gradients_2/dropout_6_3/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
T0
²
1gradients_2/dropout_6_3/cond/dropout/div_grad/NegNegdropout_6_3/cond/mul*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/div
ż
7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_6_3/cond/dropout/div_grad/Neg"dropout_6_3/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_1"dropout_6_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients_2/dropout_6_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
3gradients_2/dropout_6_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_6_3/cond/dropout/div_grad/mulEgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

7gradients_2/dropout_6_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_6_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
T0
±
+gradients_2/dropout_6_3/cond/mul_grad/ShapeShapedropout_6_3/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_3/cond/mul

-gradients_2/dropout_6_3/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_6_3/cond/mul*
dtype0*
_output_shapes
: 

;gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_6_3/cond/mul_grad/Shape-gradients_2/dropout_6_3/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_6_3/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
)gradients_2/dropout_6_3/cond/mul_grad/mulMul5gradients_2/dropout_6_3/cond/dropout/div_grad/Reshapedropout_6_3/cond/mul/y*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_6_3/cond/mul*
T0

)gradients_2/dropout_6_3/cond/mul_grad/SumSum)gradients_2/dropout_6_3/cond/mul_grad/mul;gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_6_3/cond/mul*
T0*
	keep_dims( *

Tidx0
ś
-gradients_2/dropout_6_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_6_3/cond/mul_grad/Sum+gradients_2/dropout_6_3/cond/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_6_3/cond/mul
ä
+gradients_2/dropout_6_3/cond/mul_grad/mul_1Muldropout_6_3/cond/mul/Switch:15gradients_2/dropout_6_3/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_3/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

+gradients_2/dropout_6_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_6_3/cond/mul_grad/mul_1=gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_6_3/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_2/dropout_6_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_6_3/cond/mul_grad/Sum_1-gradients_2/dropout_6_3/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_3/cond/mul*
_output_shapes
: *
T0
ŗ
gradients_2/Switch_1Switchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu

gradients_2/Shape_2Shapegradients_2/Switch_1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_3/Elu*
T0

gradients_2/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_3/Elu*
dtype0*
_output_shapes
: 
„
gradients_2/zeros_1Fillgradients_2/Shape_2gradients_2/zeros_1/Const*%
_class
loc:@activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
č
6gradients_2/dropout_6_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_6_3/cond/mul_grad/Reshapegradients_2/zeros_1**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_7_3/Elu*
T0
ė
gradients_2/AddN_1AddN4gradients_2/dropout_6_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_6_3/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu
ø
+gradients_2/activation_7_3/Elu_grad/EluGradEluGradgradients_2/AddN_1activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu*
T0
ņ
(gradients_2/dense_3_3/MatMul_grad/MatMulMatMul+gradients_2/activation_7_3/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_3_3/MatMul*
T0
ļ
*gradients_2/dense_3_3/MatMul_grad/MatMul_1MatMuldropout_5_3/cond/Merge+gradients_2/activation_7_3/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_3_3/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ė
1gradients_2/dropout_5_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_3_3/MatMul_grad/MatMuldropout_5_3/cond/pred_id*
T0*#
_class
loc:@dense_3_3/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
ŗ
gradients_2/Switch_2Switchactivation_6_3/Eludropout_5_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu

gradients_2/Shape_3Shapegradients_2/Switch_2:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_3/Elu*
T0

gradients_2/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_3/Elu
„
gradients_2/zeros_2Fillgradients_2/Shape_3gradients_2/zeros_2/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu
ź
4gradients_2/dropout_5_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_5_3/cond/Merge_grad/cond_gradgradients_2/zeros_2*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_6_3/Elu
Ą
3gradients_2/dropout_5_3/cond/dropout/mul_grad/ShapeShapedropout_5_3/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
Ä
5gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1Shapedropout_5_3/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
¶
Cgradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
ń
1gradients_2/dropout_5_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_5_3/cond/Merge_grad/cond_grad:1dropout_5_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul
”
1gradients_2/dropout_5_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_5_3/cond/dropout/mul_grad/mulCgradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_5_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ń
3gradients_2/dropout_5_3/cond/dropout/mul_grad/mul_1Muldropout_5_3/cond/dropout/div3gradients_2/dropout_5_3/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul
§
3gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_5_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
 
7gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ø
3gradients_2/dropout_5_3/cond/dropout/div_grad/ShapeShapedropout_5_3/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
©
5gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_3/cond/dropout/div
¶
Cgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_5_3/cond/dropout/div_grad/Shape5gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
’
5gradients_2/dropout_5_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape"dropout_5_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
„
1gradients_2/dropout_5_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_5_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_3/cond/dropout/div

5gradients_2/dropout_5_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_5_3/cond/dropout/div_grad/Sum3gradients_2/dropout_5_3/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
²
1gradients_2/dropout_5_3/cond/dropout/div_grad/NegNegdropout_5_3/cond/mul*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
ż
7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_5_3/cond/dropout/div_grad/Neg"dropout_5_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div

7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_1"dropout_5_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients_2/dropout_5_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
3gradients_2/dropout_5_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_5_3/cond/dropout/div_grad/mulEgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

7gradients_2/dropout_5_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_5_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
: 
±
+gradients_2/dropout_5_3/cond/mul_grad/ShapeShapedropout_5_3/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_3/cond/mul*
T0

-gradients_2/dropout_5_3/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_5_3/cond/mul*
dtype0*
_output_shapes
: 

;gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_5_3/cond/mul_grad/Shape-gradients_2/dropout_5_3/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_5_3/cond/mul
Ū
)gradients_2/dropout_5_3/cond/mul_grad/mulMul5gradients_2/dropout_5_3/cond/dropout/div_grad/Reshapedropout_5_3/cond/mul/y*
T0*'
_class
loc:@dropout_5_3/cond/mul*(
_output_shapes
:’’’’’’’’’

)gradients_2/dropout_5_3/cond/mul_grad/SumSum)gradients_2/dropout_5_3/cond/mul_grad/mul;gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_3/cond/mul
ś
-gradients_2/dropout_5_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_5_3/cond/mul_grad/Sum+gradients_2/dropout_5_3/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_5_3/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_2/dropout_5_3/cond/mul_grad/mul_1Muldropout_5_3/cond/mul/Switch:15gradients_2/dropout_5_3/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_3/cond/mul

+gradients_2/dropout_5_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_5_3/cond/mul_grad/mul_1=gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_5_3/cond/mul*
T0*
	keep_dims( *

Tidx0
ī
/gradients_2/dropout_5_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_5_3/cond/mul_grad/Sum_1-gradients_2/dropout_5_3/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_3/cond/mul*
T0
ŗ
gradients_2/Switch_3Switchactivation_6_3/Eludropout_5_3/cond/pred_id*%
_class
loc:@activation_6_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_2/Shape_4Shapegradients_2/Switch_3*
out_type0*%
_class
loc:@activation_6_3/Elu*
_output_shapes
:*
T0

gradients_2/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_3/Elu
„
gradients_2/zeros_3Fillgradients_2/Shape_4gradients_2/zeros_3/Const*%
_class
loc:@activation_6_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
č
6gradients_2/dropout_5_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_5_3/cond/mul_grad/Reshapegradients_2/zeros_3**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_6_3/Elu*
T0
ė
gradients_2/AddN_2AddN4gradients_2/dropout_5_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_5_3/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_6_3/Elu*
N*(
_output_shapes
:’’’’’’’’’
ø
+gradients_2/activation_6_3/Elu_grad/EluGradEluGradgradients_2/AddN_2activation_6_3/Elu*
T0*%
_class
loc:@activation_6_3/Elu*(
_output_shapes
:’’’’’’’’’
ņ
(gradients_2/dense_2_3/MatMul_grad/MatMulMatMul+gradients_2/activation_6_3/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*#
_class
loc:@dense_2_3/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
ļ
*gradients_2/dense_2_3/MatMul_grad/MatMul_1MatMuldropout_4_3/cond/Merge+gradients_2/activation_6_3/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_3/MatMul
ė
1gradients_2/dropout_4_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_2_3/MatMul_grad/MatMuldropout_4_3/cond/pred_id*#
_class
loc:@dense_2_3/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ŗ
gradients_2/Switch_4Switchactivation_5_3/Eludropout_4_3/cond/pred_id*
T0*%
_class
loc:@activation_5_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients_2/Shape_5Shapegradients_2/Switch_4:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_3/Elu*
T0

gradients_2/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_3/Elu*
_output_shapes
: *
dtype0
„
gradients_2/zeros_4Fillgradients_2/Shape_5gradients_2/zeros_4/Const*
T0*%
_class
loc:@activation_5_3/Elu*(
_output_shapes
:’’’’’’’’’
ź
4gradients_2/dropout_4_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_4_3/cond/Merge_grad/cond_gradgradients_2/zeros_4*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_5_3/Elu
Ą
3gradients_2/dropout_4_3/cond/dropout/mul_grad/ShapeShapedropout_4_3/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
Ä
5gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1Shapedropout_4_3/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
¶
Cgradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
ń
1gradients_2/dropout_4_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_4_3/cond/Merge_grad/cond_grad:1dropout_4_3/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
”
1gradients_2/dropout_4_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_4_3/cond/dropout/mul_grad/mulCgradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
_output_shapes
:

5gradients_2/dropout_4_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ń
3gradients_2/dropout_4_3/cond/dropout/mul_grad/mul_1Muldropout_4_3/cond/dropout/div3gradients_2/dropout_4_3/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
T0
§
3gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_4_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
_output_shapes
:
 
7gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
ø
3gradients_2/dropout_4_3/cond/dropout/div_grad/ShapeShapedropout_4_3/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div
©
5gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_4_3/cond/dropout/div*
dtype0*
_output_shapes
: 
¶
Cgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_4_3/cond/dropout/div_grad/Shape5gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
T0
’
5gradients_2/dropout_4_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape"dropout_4_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
T0
„
1gradients_2/dropout_4_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_4_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_4_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_4_3/cond/dropout/div_grad/Sum3gradients_2/dropout_4_3/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
²
1gradients_2/dropout_4_3/cond/dropout/div_grad/NegNegdropout_4_3/cond/mul*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ż
7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_4_3/cond/dropout/div_grad/Neg"dropout_4_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_1"dropout_4_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients_2/dropout_4_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
3gradients_2/dropout_4_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_4_3/cond/dropout/div_grad/mulEgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_3/cond/dropout/div

7gradients_2/dropout_4_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_4_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
_output_shapes
: 
±
+gradients_2/dropout_4_3/cond/mul_grad/ShapeShapedropout_4_3/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
:

-gradients_2/dropout_4_3/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
: *
dtype0

;gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_4_3/cond/mul_grad/Shape-gradients_2/dropout_4_3/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_4_3/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
)gradients_2/dropout_4_3/cond/mul_grad/mulMul5gradients_2/dropout_4_3/cond/dropout/div_grad/Reshapedropout_4_3/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_3/cond/mul

)gradients_2/dropout_4_3/cond/mul_grad/SumSum)gradients_2/dropout_4_3/cond/mul_grad/mul;gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_4_3/cond/mul*
T0*
	keep_dims( *

Tidx0
ś
-gradients_2/dropout_4_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_4_3/cond/mul_grad/Sum+gradients_2/dropout_4_3/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_4_3/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_2/dropout_4_3/cond/mul_grad/mul_1Muldropout_4_3/cond/mul/Switch:15gradients_2/dropout_4_3/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_4_3/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

+gradients_2/dropout_4_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_4_3/cond/mul_grad/mul_1=gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
:
ī
/gradients_2/dropout_4_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_4_3/cond/mul_grad/Sum_1-gradients_2/dropout_4_3/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_3/cond/mul
ŗ
gradients_2/Switch_5Switchactivation_5_3/Eludropout_4_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu*
T0

gradients_2/Shape_6Shapegradients_2/Switch_5*
T0*
out_type0*%
_class
loc:@activation_5_3/Elu*
_output_shapes
:

gradients_2/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_3/Elu*
_output_shapes
: *
dtype0
„
gradients_2/zeros_5Fillgradients_2/Shape_6gradients_2/zeros_5/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu
č
6gradients_2/dropout_4_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_4_3/cond/mul_grad/Reshapegradients_2/zeros_5**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_5_3/Elu*
T0
ė
gradients_2/AddN_3AddN4gradients_2/dropout_4_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_4_3/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_5_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
ø
+gradients_2/activation_5_3/Elu_grad/EluGradEluGradgradients_2/AddN_3activation_5_3/Elu*
T0*%
_class
loc:@activation_5_3/Elu*(
_output_shapes
:’’’’’’’’’
ņ
(gradients_2/dense_1_3/MatMul_grad/MatMulMatMul+gradients_2/activation_5_3/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_1_3/MatMul*(
_output_shapes
:’’’’’’’’’$*
transpose_a( 
ģ
*gradients_2/dense_1_3/MatMul_grad/MatMul_1MatMulflatten_1_3/Reshape+gradients_2/activation_5_3/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
$*
transpose_a(*#
_class
loc:@dense_1_3/MatMul
a
Const_64Const* 
_output_shapes
:
$*
dtype0*
valueB
$*    

Variable_16
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
§
Variable_16/AssignAssignVariable_16Const_64* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_16*
T0*
use_locking(
t
Variable_16/readIdentityVariable_16* 
_output_shapes
:
$*
_class
loc:@Variable_16*
T0
a
Const_65Const* 
_output_shapes
:
*
dtype0*
valueB
*    

Variable_17
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
§
Variable_17/AssignAssignVariable_17Const_65* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_17*
T0*
use_locking(
t
Variable_17/readIdentityVariable_17* 
_output_shapes
:
*
_class
loc:@Variable_17*
T0
a
Const_66Const* 
_output_shapes
:
*
dtype0*
valueB
*    

Variable_18
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
§
Variable_18/AssignAssignVariable_18Const_66*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_18
t
Variable_18/readIdentityVariable_18*
T0*
_class
loc:@Variable_18* 
_output_shapes
:

_
Const_67Const*
dtype0*
_output_shapes
:	
*
valueB	
*    

Variable_19
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
¦
Variable_19/AssignAssignVariable_19Const_67*
use_locking(*
T0*
_class
loc:@Variable_19*
validate_shape(*
_output_shapes
:	

s
Variable_19/readIdentityVariable_19*
T0*
_output_shapes
:	
*
_class
loc:@Variable_19
a
Const_68Const*
valueB
$*    *
dtype0* 
_output_shapes
:
$

Variable_20
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
§
Variable_20/AssignAssignVariable_20Const_68*
_class
loc:@Variable_20* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
t
Variable_20/readIdentityVariable_20*
_class
loc:@Variable_20* 
_output_shapes
:
$*
T0
a
Const_69Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_21
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
§
Variable_21/AssignAssignVariable_21Const_69* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_21*
T0*
use_locking(
t
Variable_21/readIdentityVariable_21*
T0*
_class
loc:@Variable_21* 
_output_shapes
:

a
Const_70Const*
valueB
*    * 
_output_shapes
:
*
dtype0

Variable_22
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
§
Variable_22/AssignAssignVariable_22Const_70*
_class
loc:@Variable_22* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
t
Variable_22/readIdentityVariable_22*
T0*
_class
loc:@Variable_22* 
_output_shapes
:

_
Const_71Const*
valueB	
*    *
_output_shapes
:	
*
dtype0

Variable_23
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
¦
Variable_23/AssignAssignVariable_23Const_71*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_23
s
Variable_23/readIdentityVariable_23*
T0*
_output_shapes
:	
*
_class
loc:@Variable_23
M
mul_60/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_60Mulmul_60/xVariable_16/read*
T0* 
_output_shapes
:
$
j
	Square_16Square*gradients_2/dense_1_3/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
M
mul_61/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_61Mulmul_61/x	Square_16*
T0* 
_output_shapes
:
$
H
add_32Addmul_60mul_61*
T0* 
_output_shapes
:
$

	Assign_32AssignVariable_16add_32*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_16
M
add_33/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_33AddVariable_20/readadd_33/y*
T0* 
_output_shapes
:
$
M
Const_72Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_73Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_20/MinimumMinimumadd_33Const_73*
T0* 
_output_shapes
:
$
j
clip_by_value_20Maximumclip_by_value_20/MinimumConst_72*
T0* 
_output_shapes
:
$
L
Sqrt_16Sqrtclip_by_value_20*
T0* 
_output_shapes
:
$
m
mul_62Mul*gradients_2/dense_1_3/MatMul_grad/MatMul_1Sqrt_16* 
_output_shapes
:
$*
T0
M
add_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
J
add_34Addadd_32add_34/y*
T0* 
_output_shapes
:
$
M
Const_74Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_75Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_21/MinimumMinimumadd_34Const_75* 
_output_shapes
:
$*
T0
j
clip_by_value_21Maximumclip_by_value_21/MinimumConst_74*
T0* 
_output_shapes
:
$
L
Sqrt_17Sqrtclip_by_value_21*
T0* 
_output_shapes
:
$
Q

truediv_16RealDivmul_62Sqrt_17* 
_output_shapes
:
$*
T0
O
mul_63Mul	lr_3/read
truediv_16* 
_output_shapes
:
$*
T0
U
sub_12Subdense_1/kernel/readmul_63*
T0* 
_output_shapes
:
$
¢
	Assign_33Assigndense_1/kernelsub_12*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_64/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_64Mulmul_64/xVariable_20/read*
T0* 
_output_shapes
:
$
J
	Square_17Square
truediv_16* 
_output_shapes
:
$*
T0
M
mul_65/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
M
mul_65Mulmul_65/x	Square_17* 
_output_shapes
:
$*
T0
H
add_35Addmul_64mul_65* 
_output_shapes
:
$*
T0

	Assign_34AssignVariable_20add_35*
_class
loc:@Variable_20* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_66/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_66Mulmul_66/xVariable_17/read*
T0* 
_output_shapes
:

j
	Square_18Square*gradients_2/dense_2_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_67/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
M
mul_67Mulmul_67/x	Square_18* 
_output_shapes
:
*
T0
H
add_36Addmul_66mul_67*
T0* 
_output_shapes
:


	Assign_35AssignVariable_17add_36*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_17
M
add_37/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
T
add_37AddVariable_21/readadd_37/y* 
_output_shapes
:
*
T0
M
Const_76Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_77Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_22/MinimumMinimumadd_37Const_77*
T0* 
_output_shapes
:

j
clip_by_value_22Maximumclip_by_value_22/MinimumConst_76* 
_output_shapes
:
*
T0
L
Sqrt_18Sqrtclip_by_value_22* 
_output_shapes
:
*
T0
m
mul_68Mul*gradients_2/dense_2_3/MatMul_grad/MatMul_1Sqrt_18*
T0* 
_output_shapes
:

M
add_38/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
J
add_38Addadd_36add_38/y* 
_output_shapes
:
*
T0
M
Const_78Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_79Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_23/MinimumMinimumadd_38Const_79*
T0* 
_output_shapes
:

j
clip_by_value_23Maximumclip_by_value_23/MinimumConst_78*
T0* 
_output_shapes
:

L
Sqrt_19Sqrtclip_by_value_23* 
_output_shapes
:
*
T0
Q

truediv_17RealDivmul_68Sqrt_19* 
_output_shapes
:
*
T0
O
mul_69Mul	lr_3/read
truediv_17*
T0* 
_output_shapes
:

U
sub_13Subdense_2/kernel/readmul_69*
T0* 
_output_shapes
:

¢
	Assign_36Assigndense_2/kernelsub_13*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_70/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_70Mulmul_70/xVariable_21/read*
T0* 
_output_shapes
:

J
	Square_19Square
truediv_17*
T0* 
_output_shapes
:

M
mul_71/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_71Mulmul_71/x	Square_19*
T0* 
_output_shapes
:

H
add_39Addmul_70mul_71*
T0* 
_output_shapes
:


	Assign_37AssignVariable_21add_39*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_21
M
mul_72/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
T
mul_72Mulmul_72/xVariable_18/read* 
_output_shapes
:
*
T0
j
	Square_20Square*gradients_2/dense_3_3/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_73/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
M
mul_73Mulmul_73/x	Square_20* 
_output_shapes
:
*
T0
H
add_40Addmul_72mul_73* 
_output_shapes
:
*
T0

	Assign_38AssignVariable_18add_40*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(* 
_output_shapes
:

M
add_41/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
T
add_41AddVariable_22/readadd_41/y* 
_output_shapes
:
*
T0
M
Const_80Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_81Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_24/MinimumMinimumadd_41Const_81*
T0* 
_output_shapes
:

j
clip_by_value_24Maximumclip_by_value_24/MinimumConst_80* 
_output_shapes
:
*
T0
L
Sqrt_20Sqrtclip_by_value_24*
T0* 
_output_shapes
:

m
mul_74Mul*gradients_2/dense_3_3/MatMul_grad/MatMul_1Sqrt_20* 
_output_shapes
:
*
T0
M
add_42/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
J
add_42Addadd_40add_42/y* 
_output_shapes
:
*
T0
M
Const_82Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_83Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_25/MinimumMinimumadd_42Const_83* 
_output_shapes
:
*
T0
j
clip_by_value_25Maximumclip_by_value_25/MinimumConst_82* 
_output_shapes
:
*
T0
L
Sqrt_21Sqrtclip_by_value_25* 
_output_shapes
:
*
T0
Q

truediv_18RealDivmul_74Sqrt_21*
T0* 
_output_shapes
:

O
mul_75Mul	lr_3/read
truediv_18* 
_output_shapes
:
*
T0
U
sub_14Subdense_3/kernel/readmul_75*
T0* 
_output_shapes
:

¢
	Assign_39Assigndense_3/kernelsub_14*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
M
mul_76/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
T
mul_76Mulmul_76/xVariable_22/read* 
_output_shapes
:
*
T0
J
	Square_21Square
truediv_18*
T0* 
_output_shapes
:

M
mul_77/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
M
mul_77Mulmul_77/x	Square_21*
T0* 
_output_shapes
:

H
add_43Addmul_76mul_77* 
_output_shapes
:
*
T0

	Assign_40AssignVariable_22add_43*
_class
loc:@Variable_22* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_78/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_78Mulmul_78/xVariable_19/read*
_output_shapes
:	
*
T0
i
	Square_22Square*gradients_2/dense_4_3/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_79/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_79Mulmul_79/x	Square_22*
_output_shapes
:	
*
T0
G
add_44Addmul_78mul_79*
T0*
_output_shapes
:	


	Assign_41AssignVariable_19add_44*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_19
M
add_45/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
S
add_45AddVariable_23/readadd_45/y*
T0*
_output_shapes
:	

M
Const_84Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_85Const*
dtype0*
_output_shapes
: *
valueB
 *  
_
clip_by_value_26/MinimumMinimumadd_45Const_85*
T0*
_output_shapes
:	

i
clip_by_value_26Maximumclip_by_value_26/MinimumConst_84*
T0*
_output_shapes
:	

K
Sqrt_22Sqrtclip_by_value_26*
_output_shapes
:	
*
T0
l
mul_80Mul*gradients_2/dense_4_3/MatMul_grad/MatMul_1Sqrt_22*
_output_shapes
:	
*
T0
M
add_46/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
I
add_46Addadd_44add_46/y*
T0*
_output_shapes
:	

M
Const_86Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_87Const*
valueB
 *  *
dtype0*
_output_shapes
: 
_
clip_by_value_27/MinimumMinimumadd_46Const_87*
_output_shapes
:	
*
T0
i
clip_by_value_27Maximumclip_by_value_27/MinimumConst_86*
_output_shapes
:	
*
T0
K
Sqrt_23Sqrtclip_by_value_27*
_output_shapes
:	
*
T0
P

truediv_19RealDivmul_80Sqrt_23*
T0*
_output_shapes
:	

N
mul_81Mul	lr_3/read
truediv_19*
_output_shapes
:	
*
T0
T
sub_15Subdense_4/kernel/readmul_81*
T0*
_output_shapes
:	

”
	Assign_42Assigndense_4/kernelsub_15*
_output_shapes
:	
*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
M
mul_82/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_82Mulmul_82/xVariable_23/read*
T0*
_output_shapes
:	

I
	Square_23Square
truediv_19*
T0*
_output_shapes
:	

M
mul_83/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
L
mul_83Mulmul_83/x	Square_23*
T0*
_output_shapes
:	

G
add_47Addmul_82mul_83*
_output_shapes
:	
*
T0

	Assign_43AssignVariable_23add_47*
use_locking(*
T0*
_class
loc:@Variable_23*
validate_shape(*
_output_shapes
:	

·
group_deps_5NoOp^mul_59^Mean_15
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
¶
init_5NoOp^Variable_16/Assign^Variable_17/Assign^Variable_18/Assign^Variable_19/Assign^Variable_20/Assign^Variable_21/Assign^Variable_22/Assign^Variable_23/Assign"!L-     ŗ
U.	±ś¤	8SÖAJŚ
£!!
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
Č
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
:
Elu
features"T
activations"T"
Ttype:
2
K
EluGrad
	gradients"T
outputs"T
	backprops"T"
Ttype:
2
A
Equal
x"T
y"T
z
"
Ttype:
2	

4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Å
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.2.02v1.2.0-rc2-21-g12f033d·É

conv2d_1_inputPlaceholder*/
_output_shapes
:’’’’’’’’’  *
dtype0*$
shape:’’’’’’’’’  
v
conv2d_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         @   
`
conv2d_1/random_uniform/minConst*
valueB
 *¶hĻ½*
_output_shapes
: *
dtype0
`
conv2d_1/random_uniform/maxConst*
valueB
 *¶hĻ=*
_output_shapes
: *
dtype0
±
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
seed±’å)*
T0*
dtype0*&
_output_shapes
:@*
seed2P
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
_output_shapes
: *
T0

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*&
_output_shapes
:@*
T0

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*&
_output_shapes
:@*
T0

conv2d_1/kernel
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
Č
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:@

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:@*
T0
p
conv2d_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_1/transpose	Transposeconv2d_1_inputconv2d_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’  
s
conv2d_1/convolution/ShapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
s
"conv2d_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ś
conv2d_1/convolutionConv2Dconv2d_1/transposeconv2d_1/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:’’’’’’’’’@*
data_formatNHWC*
strides
*
T0*
paddingVALID
r
conv2d_1/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_1/transpose_1	Transposeconv2d_1/convolutionconv2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
g
activation_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@
v
conv2d_2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
`
conv2d_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:Ķ½
`
conv2d_2/random_uniform/maxConst*
valueB
 *:Ķ=*
_output_shapes
: *
dtype0
²
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
dtype0*
seed±’å)*
T0*&
_output_shapes
:@@*
seed2½Įū
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*&
_output_shapes
:@@*
T0

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*&
_output_shapes
:@@*
T0

conv2d_2/kernel
VariableV2*&
_output_shapes
:@@*
	container *
shape:@@*
dtype0*
shared_name 
Č
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:@@

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@*
T0
p
conv2d_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2/transpose	Transposeactivation_1/Eluconv2d_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
s
conv2d_2/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ś
conv2d_2/convolutionConv2Dconv2d_2/transposeconv2d_2/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:’’’’’’’’’@
r
conv2d_2/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2/transpose_1	Transposeconv2d_2/convolutionconv2d_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
g
activation_2/EluEluconv2d_2/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@
c
dropout_1/keras_learning_phasePlaceholder*
shape:*
dtype0
*
_output_shapes
:

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
:
e
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ē
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*#
_class
loc:@activation_2/Elu

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’@

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Č
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*/
_output_shapes
:’’’’’’’’’@*
seed2čÉ°
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ź
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@
¼
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
¤
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@
{
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Å
dropout_1/cond/Switch_1Switchactivation_2/Eludropout_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*#
_class
loc:@activation_2/Elu*
T0

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
T0*
N
v
conv2d_3/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
valueB
 *:Ķ½*
_output_shapes
: *
dtype0
`
conv2d_3/random_uniform/maxConst*
valueB
 *:Ķ=*
_output_shapes
: *
dtype0
²
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
dtype0*
seed±’å)*
T0*&
_output_shapes
:@@*
seed2§Ķ
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
_output_shapes
: *
T0

conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*
T0*&
_output_shapes
:@@

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*
T0*&
_output_shapes
:@@

conv2d_3/kernel
VariableV2*&
_output_shapes
:@@*
	container *
dtype0*
shared_name *
shape:@@
Č
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@*
T0
p
conv2d_3/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_3/transpose	Transposedropout_1/cond/Mergeconv2d_3/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
s
conv2d_3/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
s
"conv2d_3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ś
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’@
r
conv2d_3/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3/transpose_1	Transposeconv2d_3/convolutionconv2d_3/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
g
activation_3/EluEluconv2d_3/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
_output_shapes
:*
T0

]
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
_output_shapes
:*
T0

e
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ē
dropout_2/cond/mul/SwitchSwitchactivation_3/Eludropout_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*#
_class
loc:@activation_3/Elu*
T0

dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’@

 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ē
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Ł«*
T0*
seed±’å)*
dtype0
§
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ź
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@
¼
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
¤
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0
{
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Å
dropout_2/cond/Switch_1Switchactivation_3/Eludropout_2/cond/pred_id*
T0*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
T0*
N
v
conv2d_4/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @       
`
conv2d_4/random_uniform/minConst*
valueB
 *«ŖŖ½*
_output_shapes
: *
dtype0
`
conv2d_4/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *«ŖŖ=
²
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*&
_output_shapes
:@ *
seed2§×*
dtype0*
T0*
seed±’å)
}
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
_output_shapes
: *
T0

conv2d_4/random_uniform/mulMul%conv2d_4/random_uniform/RandomUniformconv2d_4/random_uniform/sub*&
_output_shapes
:@ *
T0

conv2d_4/random_uniformAddconv2d_4/random_uniform/mulconv2d_4/random_uniform/min*
T0*&
_output_shapes
:@ 

conv2d_4/kernel
VariableV2*
shared_name *
dtype0*
shape:@ *&
_output_shapes
:@ *
	container 
Č
conv2d_4/kernel/AssignAssignconv2d_4/kernelconv2d_4/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel

conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel
p
conv2d_4/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4/transpose	Transposedropout_2/cond/Mergeconv2d_4/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
s
conv2d_4/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @       
s
"conv2d_4/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ś
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
r
conv2d_4/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_4/transpose_1	Transposeconv2d_4/convolutionconv2d_4/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
g
activation_4/EluEluconv2d_4/transpose_1*/
_output_shapes
:’’’’’’’’’ *
T0
w
max_pooling2d_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

max_pooling2d_1/transpose	Transposeactivation_4/Elumax_pooling2d_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
Ź
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
ksize
*
data_formatNHWC*
strides
*
T0
y
 max_pooling2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             
Ŗ
max_pooling2d_1/transpose_1	Transposemax_pooling2d_1/MaxPool max_pooling2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
_output_shapes
:*
T0

e
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ż
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *.
_class$
" loc:@max_pooling2d_1/transpose_1*
T0

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Č
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*/
_output_shapes
:’’’’’’’’’ *
seed2ņ®“
§
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ź
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
¼
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’ *
T0
¤
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0
{
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3/cond/dropout/divRealDivdropout_3/cond/mul dropout_3/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
Ū
dropout_3/cond/Switch_1Switchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’ : *
T0*
N
c
flatten_1/ShapeShapedropout_3/cond/Merge*
out_type0*
_output_shapes
:*
T0
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Æ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
flatten_1/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1/ReshapeReshapedropout_3/cond/Mergeflatten_1/stack*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_1/random_uniform/minConst*
valueB
 *7½*
_output_shapes
: *
dtype0
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *7=
Ŗ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed±’å)*
T0*
dtype0* 
_output_shapes
:
$*
seed2Ņą
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
$

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
$

dense_1/kernel
VariableV2*
shape:
$*
shared_name *
dtype0* 
_output_shapes
:
$*
	container 
¾
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel*
T0* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
Z
activation_5/EluEludense_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
_output_shapes
:*
T0

]
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
_output_shapes
:*
T0

e
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
¹
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_5/Elu

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Į
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2ČšŅ
§
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/divRealDivdropout_4/cond/mul dropout_4/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
·
dropout_4/cond/Switch_1Switchactivation_5/Eludropout_4/cond/pred_id*
T0*#
_class
loc:@activation_5/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
m
dense_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
_
dense_2/random_uniform/minConst*
valueB
 *óµ½*
_output_shapes
: *
dtype0
_
dense_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *óµ=
©
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape* 
_output_shapes
:
*
seed2ā:*
T0*
seed±’å)*
dtype0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0* 
_output_shapes
:


dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0* 
_output_shapes
:


dense_2/kernel
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¾
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel

dense_2/MatMulMatMuldropout_4/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
Z
activation_6/EluEludense_2/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
_output_shapes
:*
T0

]
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
T0
*
_output_shapes
:
e
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
¹
dropout_5/cond/mul/SwitchSwitchactivation_6/Eludropout_5/cond/pred_id*#
_class
loc:@activation_6/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

 dropout_5/cond/dropout/keep_probConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2Śł
§
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/addAdd dropout_5/cond/dropout/keep_prob%dropout_5/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/divRealDivdropout_5/cond/mul dropout_5/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/divdropout_5/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
·
dropout_5/cond/Switch_1Switchactivation_6/Eludropout_5/cond/pred_id*
T0*#
_class
loc:@activation_6/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
N*
T0**
_output_shapes
:’’’’’’’’’: 
m
dense_3/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *   ¾
_
dense_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *   >
Ŗ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape* 
_output_shapes
:
*
seed2¹*
dtype0*
T0*
seed±’å)
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
_output_shapes
: *
T0

dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0* 
_output_shapes
:


dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0* 
_output_shapes
:


dense_3/kernel
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¾
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_3/kernel*
T0*
use_locking(
}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
*
T0

dense_3/MatMulMatMuldropout_5/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
Z
activation_7/EluEludense_3/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
T0
*
_output_shapes
:
]
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
_output_shapes
:*
T0

e
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
¹
dropout_6/cond/mul/SwitchSwitchactivation_7/Eludropout_6/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@activation_7/Elu*
T0

dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

 dropout_6/cond/dropout/keep_probConst^dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Į
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2¦ *
dtype0*
T0*
seed±’å)
§
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
µ
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/dropout/addAdd dropout_6/cond/dropout/keep_prob%dropout_6/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/divRealDivdropout_6/cond/mul dropout_6/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/divdropout_6/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
·
dropout_6/cond/Switch_1Switchactivation_7/Eludropout_6/cond/pred_id*
T0*#
_class
loc:@activation_7/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul*
N*
T0**
_output_shapes
:’’’’’’’’’: 
m
dense_4/random_uniform/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
_
dense_4/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ĶU¾
_
dense_4/random_uniform/maxConst*
valueB
 *ĶU>*
_output_shapes
: *
dtype0
©
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
seed±’å)*
T0*
dtype0*
_output_shapes
:	
*
seed2¶ī
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
_output_shapes
: *
T0

dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
_output_shapes
:	
*
T0

dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
_output_shapes
:	
*
T0

dense_4/kernel
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
½
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
|
dense_4/kernel/readIdentitydense_4/kernel*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel*
T0

dense_4/MatMulMatMuldropout_6/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( 
a
activation_8/SoftmaxSoftmaxdense_4/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

i
activation_1_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@
r
conv2d_2_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_1/transpose	Transposeactivation_1_1/Eluconv2d_2_1/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_2_1/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_2_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ž
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:’’’’’’’’’@*
data_formatNHWC*
strides
*
T0*
paddingVALID
t
conv2d_2_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2_1/transpose_1	Transposeconv2d_2_1/convolutionconv2d_2_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_2_1/EluEluconv2d_2_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_1_1/cond/switch_fIdentitydropout_1_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_1_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_1_1/cond/mul/yConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_1/Elu

dropout_1_1/cond/mulMuldropout_1_1/cond/mul/Switch:1dropout_1_1/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’@

"dropout_1_1/cond/dropout/keep_probConst^dropout_1_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_1_1/cond/dropout/ShapeShapedropout_1_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ė
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*/
_output_shapes
:’’’’’’’’’@*
seed2Ā
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_1_1/cond/dropout/random_uniformAdd+dropout_1_1/cond/dropout/random_uniform/mul+dropout_1_1/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_1_1/cond/dropout/addAdd"dropout_1_1/cond/dropout/keep_prob'dropout_1_1/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_1/cond/dropout/FloorFloordropout_1_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_1/cond/dropout/divRealDivdropout_1_1/cond/mul"dropout_1_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
Ķ
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
N*
T0
r
conv2d_3_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3_1/transpose	Transposedropout_1_1/cond/Mergeconv2d_3_1/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_3_1/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_3_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_3_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3_1/transpose_1	Transposeconv2d_3_1/convolutionconv2d_3_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
k
activation_3_1/EluEluconv2d_3_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_2_1/cond/switch_tIdentitydropout_2_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_2_1/cond/switch_fIdentitydropout_2_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_2_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_2_1/cond/mul/yConst^dropout_2_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ļ
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2_1/cond/mulMuldropout_2_1/cond/mul/Switch:1dropout_2_1/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_2_1/cond/dropout/keep_probConst^dropout_2_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_2_1/cond/dropout/ShapeShapedropout_2_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_2_1/cond/dropout/random_uniform/minConst^dropout_2_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_2_1/cond/dropout/random_uniform/maxConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ģ
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2ĮŽÜ*
T0*
seed±’å)*
dtype0
­
+dropout_2_1/cond/dropout/random_uniform/subSub+dropout_2_1/cond/dropout/random_uniform/max+dropout_2_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_2_1/cond/dropout/random_uniform/mulMul5dropout_2_1/cond/dropout/random_uniform/RandomUniform+dropout_2_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_1/cond/dropout/random_uniformAdd+dropout_2_1/cond/dropout/random_uniform/mul+dropout_2_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_2_1/cond/dropout/addAdd"dropout_2_1/cond/dropout/keep_prob'dropout_2_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_1/cond/dropout/FloorFloordropout_2_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_1/cond/dropout/divRealDivdropout_2_1/cond/mul"dropout_2_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_1/cond/dropout/mulMuldropout_2_1/cond/dropout/divdropout_2_1/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_2_1/cond/Switch_1Switchactivation_3_1/Eludropout_2_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_3_1/Elu*
T0

dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
N*
T0
r
conv2d_4_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_4_1/transpose	Transposedropout_2_1/cond/Mergeconv2d_4_1/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_4_1/convolution/ShapeConst*%
valueB"      @       *
dtype0*
_output_shapes
:
u
$conv2d_4_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’ 
t
conv2d_4_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4_1/transpose_1	Transposeconv2d_4_1/convolutionconv2d_4_1/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
k
activation_4_1/EluEluconv2d_4_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’ 
y
 max_pooling2d_1_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
„
max_pooling2d_1_1/transpose	Transposeactivation_4_1/Elu max_pooling2d_1_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
Ī
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’ *
ksize

{
"max_pooling2d_1_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
°
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_3_1/cond/switch_tIdentitydropout_3_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_3_1/cond/switch_fIdentitydropout_3_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_3_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_3_1/cond/mul/yConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
å
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*
T0

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*
T0*/
_output_shapes
:’’’’’’’’’ 

"dropout_3_1/cond/dropout/keep_probConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_3_1/cond/dropout/ShapeShapedropout_3_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_3_1/cond/dropout/random_uniform/minConst^dropout_3_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_3_1/cond/dropout/random_uniform/maxConst^dropout_3_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ģ
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’ *
seed2×ż*
T0*
seed±’å)*
dtype0
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’ *
T0
Ŗ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_1/cond/dropout/FloorFloordropout_3_1/cond/dropout/add*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_1/cond/dropout/divRealDivdropout_3_1/cond/mul"dropout_3_1/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_1/cond/dropout/mulMuldropout_3_1/cond/dropout/divdropout_3_1/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
ć
dropout_3_1/cond/Switch_1Switchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3_1/cond/MergeMergedropout_3_1/cond/Switch_1dropout_3_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’ : 
g
flatten_1_1/ShapeShapedropout_3_1/cond/Merge*
_output_shapes
:*
out_type0*
T0
i
flatten_1_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
k
!flatten_1_1/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
k
!flatten_1_1/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
¹
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
Index0*
T0*
_output_shapes
:*
shrink_axis_mask 
[
flatten_1_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
^
flatten_1_1/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
T0

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_5_1/EluEludense_1_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_1/cond/switch_tIdentitydropout_4_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_4_1/cond/switch_fIdentitydropout_4_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_4_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_4_1/cond/mul/yConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_4_1/cond/mul/SwitchSwitchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_4_1/cond/mulMuldropout_4_1/cond/mul/Switch:1dropout_4_1/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_4_1/cond/dropout/keep_probConst^dropout_4_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Å
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*
seed±’å)*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2„Ś
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4_1/cond/dropout/divRealDivdropout_4_1/cond/mul"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_1/cond/dropout/mulMuldropout_4_1/cond/dropout/divdropout_4_1/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
 
dense_2_1/MatMulMatMuldropout_4_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_6_1/EluEludense_2_1/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_5_1/cond/switch_tIdentitydropout_5_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_5_1/cond/switch_fIdentitydropout_5_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_5_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_5_1/cond/mul/yConst^dropout_5_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_5_1/cond/mul/SwitchSwitchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu

dropout_5_1/cond/mulMuldropout_5_1/cond/mul/Switch:1dropout_5_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_5_1/cond/dropout/keep_probConst^dropout_5_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_5_1/cond/dropout/ShapeShapedropout_5_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_5_1/cond/dropout/random_uniform/minConst^dropout_5_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_5_1/cond/dropout/random_uniform/maxConst^dropout_5_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Å
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2īµ­*
dtype0*
T0*
seed±’å)
­
+dropout_5_1/cond/dropout/random_uniform/subSub+dropout_5_1/cond/dropout/random_uniform/max+dropout_5_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_5_1/cond/dropout/random_uniform/mulMul5dropout_5_1/cond/dropout/random_uniform/RandomUniform+dropout_5_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_5_1/cond/dropout/random_uniformAdd+dropout_5_1/cond/dropout/random_uniform/mul+dropout_5_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_5_1/cond/dropout/addAdd"dropout_5_1/cond/dropout/keep_prob'dropout_5_1/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_5_1/cond/dropout/FloorFloordropout_5_1/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_1/cond/dropout/divRealDivdropout_5_1/cond/mul"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_1/cond/dropout/mulMuldropout_5_1/cond/dropout/divdropout_5_1/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
 
dense_3_1/MatMulMatMuldropout_5_1/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_7_1/EluEludense_3_1/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_6_1/cond/switch_tIdentitydropout_6_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_6_1/cond/switch_fIdentitydropout_6_1/cond/Switch*
T0
*
_output_shapes
:
g
dropout_6_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_6_1/cond/mul/yConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
dropout_6_1/cond/mul/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*
T0*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6_1/cond/mulMuldropout_6_1/cond/mul/Switch:1dropout_6_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_6_1/cond/dropout/keep_probConst^dropout_6_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_6_1/cond/dropout/ShapeShapedropout_6_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Å
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ŃĀų*
T0*
seed±’å)*
dtype0
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_6_1/cond/dropout/random_uniformAdd+dropout_6_1/cond/dropout/random_uniform/mul+dropout_6_1/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_6_1/cond/dropout/addAdd"dropout_6_1/cond/dropout/keep_prob'dropout_6_1/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_6_1/cond/dropout/FloorFloordropout_6_1/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_1/cond/dropout/divRealDivdropout_6_1/cond/mul"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_1/cond/dropout/mulMuldropout_6_1/cond/dropout/divdropout_6_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_6_1/cond/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu*
T0

dropout_6_1/cond/MergeMergedropout_6_1/cond/Switch_1dropout_6_1/cond/dropout/mul*
N*
T0**
_output_shapes
:’’’’’’’’’: 

dense_4_1/MatMulMatMuldropout_6_1/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
e
activation_8_1/SoftmaxSoftmaxdense_4_1/MatMul*'
_output_shapes
:’’’’’’’’’
*
T0
U
lr/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
f
lr
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

	lr/AssignAssignlrlr/initial_value*
_output_shapes
: *
validate_shape(*
_class
	loc:@lr*
T0*
use_locking(
O
lr/readIdentitylr*
_output_shapes
: *
_class
	loc:@lr*
T0
X
decay/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
i
decay
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

decay/AssignAssigndecaydecay/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class

loc:@decay
X

decay/readIdentitydecay*
T0*
_class

loc:@decay*
_output_shapes
: 
]
iterations/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

iterations
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Ŗ
iterations/AssignAssign
iterationsiterations/initial_value*
_class
loc:@iterations*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
g
iterations/readIdentity
iterations*
_class
loc:@iterations*
_output_shapes
: *
T0
v
activation_8_sample_weightsPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

activation_8_targetPlaceholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
W
Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

SumSumactivation_8_1/SoftmaxSum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:’’’’’’’’’
a
truedivRealDivactivation_8_1/SoftmaxSum*
T0*'
_output_shapes
:’’’’’’’’’

J
ConstConst*
valueB
 *æÖ3*
_output_shapes
: *
dtype0
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
9
subSubsub/xConst*
T0*
_output_shapes
: 
`
clip_by_value/MinimumMinimumtruedivsub*
T0*'
_output_shapes
:’’’’’’’’’

h
clip_by_valueMaximumclip_by_value/MinimumConst*
T0*'
_output_shapes
:’’’’’’’’’

K
LogLogclip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0
V
mulMulactivation_8_targetLog*
T0*'
_output_shapes
:’’’’’’’’’

Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
u
Sum_1SummulSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
?
NegNegSum_1*
T0*#
_output_shapes
:’’’’’’’’’
Y
Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
t
MeanMeanNegMean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
]
mul_1MulMeanactivation_8_sample_weights*
T0*#
_output_shapes
:’’’’’’’’’
O

NotEqual/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
NotEqualNotEqualactivation_8_sample_weights
NotEqual/y*#
_output_shapes
:’’’’’’’’’*
T0
S
CastCastNotEqual*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
[
Mean_1MeanCastConst_1*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
Q
	truediv_1RealDivmul_1Mean_1*#
_output_shapes
:’’’’’’’’’*
T0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
`
Mean_2Mean	truediv_1Const_2*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
>
mul_2Mulmul_2/xMean_2*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
q
ArgMaxArgMaxactivation_8_targetArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
T
ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
x
ArgMax_1ArgMaxactivation_8_1/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:’’’’’’’’’*
T0	
R
Cast_1CastEqual*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

Q
Const_3Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_3MeanCast_1Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
l
PlaceholderPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
¬
AssignAssignconv2d_1/kernelPlaceholder*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:@*
T0*
validate_shape(*
use_locking( 
n
Placeholder_1Placeholder*
dtype0*
shape:@@*&
_output_shapes
:@@
°
Assign_1Assignconv2d_2/kernelPlaceholder_1*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel
n
Placeholder_2Placeholder*&
_output_shapes
:@@*
dtype0*
shape:@@
°
Assign_2Assignconv2d_3/kernelPlaceholder_2*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
n
Placeholder_3Placeholder*
shape:@ *
dtype0*&
_output_shapes
:@ 
°
Assign_3Assignconv2d_4/kernelPlaceholder_3*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@ 
b
Placeholder_4Placeholder* 
_output_shapes
:
$*
dtype0*
shape:
$
Ø
Assign_4Assigndense_1/kernelPlaceholder_4*
use_locking( *
validate_shape(*
T0* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel
b
Placeholder_5Placeholder*
shape:
*
dtype0* 
_output_shapes
:

Ø
Assign_5Assigndense_2/kernelPlaceholder_5*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking( 
b
Placeholder_6Placeholder* 
_output_shapes
:
*
dtype0*
shape:

Ø
Assign_6Assigndense_3/kernelPlaceholder_6*
use_locking( *
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
`
Placeholder_7Placeholder*
shape:	
*
dtype0*
_output_shapes
:	

§
Assign_7Assigndense_4/kernelPlaceholder_7*
use_locking( *
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
’
initNoOp^conv2d_1/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign
^lr/Assign^decay/Assign^iterations/Assign
W
lr_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
lr_1
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

lr_1/AssignAssignlr_1lr_1/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
	loc:@lr_1
U
	lr_1/readIdentitylr_1*
_output_shapes
: *
_class
	loc:@lr_1*
T0
Z
decay_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
decay_1
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

decay_1/AssignAssigndecay_1decay_1/initial_value*
use_locking(*
T0*
_class
loc:@decay_1*
validate_shape(*
_output_shapes
: 
^
decay_1/readIdentitydecay_1*
T0*
_output_shapes
: *
_class
loc:@decay_1
_
iterations_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
p
iterations_1
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
²
iterations_1/AssignAssigniterations_1iterations_1/initial_value*
_class
loc:@iterations_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
iterations_1/readIdentityiterations_1*
T0*
_class
loc:@iterations_1*
_output_shapes
: 
x
activation_8_sample_weights_1Placeholder*
dtype0*
shape:’’’’’’’’’*#
_output_shapes
:’’’’’’’’’

activation_8_target_1Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Y
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

Sum_2Sumactivation_8_1/SoftmaxSum_2/reduction_indices*'
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims(
e
	truediv_2RealDivactivation_8_1/SoftmaxSum_2*
T0*'
_output_shapes
:’’’’’’’’’

L
Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
L
sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
?
sub_1Subsub_1/xConst_4*
_output_shapes
: *
T0
f
clip_by_value_1/MinimumMinimum	truediv_2sub_1*
T0*'
_output_shapes
:’’’’’’’’’

n
clip_by_value_1Maximumclip_by_value_1/MinimumConst_4*
T0*'
_output_shapes
:’’’’’’’’’

O
Log_1Logclip_by_value_1*
T0*'
_output_shapes
:’’’’’’’’’

\
mul_3Mulactivation_8_target_1Log_1*
T0*'
_output_shapes
:’’’’’’’’’

Y
Sum_3/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
w
Sum_3Summul_3Sum_3/reduction_indices*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims( 
A
Neg_1NegSum_3*
T0*#
_output_shapes
:’’’’’’’’’
[
Mean_4/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
z
Mean_4MeanNeg_1Mean_4/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
a
mul_4MulMean_4activation_8_sample_weights_1*
T0*#
_output_shapes
:’’’’’’’’’
Q
NotEqual_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q

NotEqual_1NotEqualactivation_8_sample_weights_1NotEqual_1/y*
T0*#
_output_shapes
:’’’’’’’’’
W
Cast_2Cast
NotEqual_1*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

Q
Const_5Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_5MeanCast_2Const_5*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Q
	truediv_3RealDivmul_4Mean_5*#
_output_shapes
:’’’’’’’’’*
T0
Q
Const_6Const*
valueB: *
dtype0*
_output_shapes
:
`
Mean_6Mean	truediv_3Const_6*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
L
mul_5/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
>
mul_5Mulmul_5/xMean_6*
T0*
_output_shapes
: 
T
ArgMax_2/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
T
ArgMax_3/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
x
ArgMax_3ArgMaxactivation_8_1/SoftmaxArgMax_3/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
R
Equal_1EqualArgMax_2ArgMax_3*
T0	*#
_output_shapes
:’’’’’’’’’
T
Cast_3CastEqual_1*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
Q
Const_7Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_7MeanCast_3Const_7*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
#

group_depsNoOp^mul_5^Mean_7
l
gradients/ShapeConst*
valueB *
_class

loc:@mul_5*
dtype0*
_output_shapes
: 
n
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class

loc:@mul_5
s
gradients/FillFillgradients/Shapegradients/Const*
_class

loc:@mul_5*
_output_shapes
: *
T0
w
gradients/mul_5_grad/ShapeConst*
valueB *
_class

loc:@mul_5*
dtype0*
_output_shapes
: 
y
gradients/mul_5_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@mul_5
Ō
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class

loc:@mul_5
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
_output_shapes
: *
_class

loc:@mul_5*
T0
æ
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_5*
_output_shapes
:
¦
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
_output_shapes
: *
Tshape0*
_class

loc:@mul_5
u
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Fill*
_class

loc:@mul_5*
_output_shapes
: *
T0
Å
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
_class

loc:@mul_5*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¬
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: *
T0

#gradients/Mean_6_grad/Reshape/shapeConst*
valueB:*
_class
loc:@Mean_6*
_output_shapes
:*
dtype0
»
gradients/Mean_6_grad/ReshapeReshapegradients/mul_5_grad/Reshape_1#gradients/Mean_6_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_6

gradients/Mean_6_grad/ShapeShape	truediv_3*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6
¹
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_6

gradients/Mean_6_grad/Shape_1Shape	truediv_3*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6
{
gradients/Mean_6_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@Mean_6

gradients/Mean_6_grad/ConstConst*
valueB: *
_class
loc:@Mean_6*
_output_shapes
:*
dtype0
·
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_6

gradients/Mean_6_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_6
»
gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_6*
T0*
	keep_dims( *

Tidx0
|
gradients/Mean_6_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_6*
dtype0*
_output_shapes
: 
£
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
_output_shapes
: *
_class
loc:@Mean_6*
T0
”
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
_output_shapes
: *
_class
loc:@Mean_6*
T0

gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*
_output_shapes
: *

DstT0*
_class
loc:@Mean_6*

SrcT0
©
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*
T0*
_class
loc:@Mean_6*#
_output_shapes
:’’’’’’’’’

gradients/truediv_3_grad/ShapeShapemul_4*
_output_shapes
:*
out_type0*
_class
loc:@truediv_3*
T0

 gradients/truediv_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@truediv_3
ä
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_3*
T0

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_3
Ó
gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
_class
loc:@truediv_3*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ć
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_3*
T0
v
gradients/truediv_3_grad/NegNegmul_4*
_class
loc:@truediv_3*#
_output_shapes
:’’’’’’’’’*
T0

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_3
„
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*
T0*
_class
loc:@truediv_3*#
_output_shapes
:’’’’’’’’’
²
gradients/truediv_3_grad/mulMulgradients/Mean_6_grad/truediv"gradients/truediv_3_grad/RealDiv_2*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_3*
T0
Ó
gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_3
¼
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_3
z
gradients/mul_4_grad/ShapeShapeMean_4*
out_type0*
_class

loc:@mul_4*
_output_shapes
:*
T0

gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
_output_shapes
:*
out_type0*
_class

loc:@mul_4*
T0
Ō
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0*
_class

loc:@mul_4*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ø
gradients/mul_4_grad/mulMul gradients/truediv_3_grad/Reshapeactivation_8_sample_weights_1*
_class

loc:@mul_4*#
_output_shapes
:’’’’’’’’’*
T0
æ
gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_4*
T0*
	keep_dims( *

Tidx0
³
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0*
_class

loc:@mul_4*#
_output_shapes
:’’’’’’’’’

gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*#
_output_shapes
:’’’’’’’’’*
_class

loc:@mul_4*
T0
Å
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_4*
_output_shapes
:
¹
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class

loc:@mul_4*
T0
{
gradients/Mean_4_grad/ShapeShapeNeg_1*
_output_shapes
:*
out_type0*
_class
loc:@Mean_4*
T0
w
gradients/Mean_4_grad/SizeConst*
value	B :*
_class
loc:@Mean_4*
_output_shapes
: *
dtype0

gradients/Mean_4_grad/addAddMean_4/reduction_indicesgradients/Mean_4_grad/Size*
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/modFloorModgradients/Mean_4_grad/addgradients/Mean_4_grad/Size*
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/range/deltaConst*
value	B :*
_class
loc:@Mean_4*
_output_shapes
: *
dtype0
É
gradients/Mean_4_grad/rangeRange!gradients/Mean_4_grad/range/startgradients/Mean_4_grad/Size!gradients/Mean_4_grad/range/delta*
_class
loc:@Mean_4*
_output_shapes
:*

Tidx0
}
 gradients/Mean_4_grad/Fill/valueConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
”
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
_class
loc:@Mean_4*
_output_shapes
: *
T0
÷
#gradients/Mean_4_grad/DynamicStitchDynamicStitchgradients/Mean_4_grad/rangegradients/Mean_4_grad/modgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Fill*
_class
loc:@Mean_4*#
_output_shapes
:’’’’’’’’’*
T0*
N
|
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
·
gradients/Mean_4_grad/MaximumMaximum#gradients/Mean_4_grad/DynamicStitchgradients/Mean_4_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_4
Æ
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Maximum*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_4*
T0
·
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
Tshape0*
_class
loc:@Mean_4*
_output_shapes
:*
T0
±
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/floordiv*
_output_shapes
:*
_class
loc:@Mean_4*
T0*

Tmultiples0
}
gradients/Mean_4_grad/Shape_2ShapeNeg_1*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_4
~
gradients/Mean_4_grad/Shape_3ShapeMean_4*
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:

gradients/Mean_4_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_4
·
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const*
_output_shapes
: *
_class
loc:@Mean_4*
T0*
	keep_dims( *

Tidx0

gradients/Mean_4_grad/Const_1Const*
valueB: *
_class
loc:@Mean_4*
dtype0*
_output_shapes
:
»
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_3gradients/Mean_4_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_4*
T0*
	keep_dims( *

Tidx0
~
!gradients/Mean_4_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_4
§
gradients/Mean_4_grad/Maximum_1Maximumgradients/Mean_4_grad/Prod_1!gradients/Mean_4_grad/Maximum_1/y*
_output_shapes
: *
_class
loc:@Mean_4*
T0
„
 gradients/Mean_4_grad/floordiv_1FloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum_1*
_output_shapes
: *
_class
loc:@Mean_4*
T0

gradients/Mean_4_grad/CastCast gradients/Mean_4_grad/floordiv_1*
_output_shapes
: *

DstT0*
_class
loc:@Mean_4*

SrcT0
©
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_4

gradients/Neg_1_grad/NegNeggradients/Mean_4_grad/truediv*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Neg_1*
T0
y
gradients/Sum_3_grad/ShapeShapemul_3*
_output_shapes
:*
out_type0*
_class

loc:@Sum_3*
T0
u
gradients/Sum_3_grad/SizeConst*
value	B :*
_class

loc:@Sum_3*
_output_shapes
: *
dtype0

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
_class

loc:@Sum_3*
_output_shapes
: *
T0

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
_output_shapes
: *
_class

loc:@Sum_3*
T0
y
gradients/Sum_3_grad/Shape_1Const*
valueB *
_class

loc:@Sum_3*
_output_shapes
: *
dtype0
|
 gradients/Sum_3_grad/range/startConst*
value	B : *
_class

loc:@Sum_3*
_output_shapes
: *
dtype0
|
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_3*
dtype0*
_output_shapes
: 
Ä
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_3*

Tidx0
{
gradients/Sum_3_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_3*
dtype0*
_output_shapes
: 

gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*
_class

loc:@Sum_3*
_output_shapes
: 
ń
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
N*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_3
z
gradients/Sum_3_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_3
³
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
_class

loc:@Sum_3*#
_output_shapes
:’’’’’’’’’*
T0
¢
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
_output_shapes
:*
_class

loc:@Sum_3*
T0
°
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_3*
_output_shapes
:*
T0
¼
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0*
_class

loc:@Sum_3*'
_output_shapes
:’’’’’’’’’


gradients/mul_3_grad/ShapeShapeactivation_8_target_1*
T0*
out_type0*
_class

loc:@mul_3*
_output_shapes
:
{
gradients/mul_3_grad/Shape_1ShapeLog_1*
T0*
_output_shapes
:*
out_type0*
_class

loc:@mul_3
Ō
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class

loc:@mul_3*
T0

gradients/mul_3_grad/mulMulgradients/Sum_3_grad/TileLog_1*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@mul_3*
T0
æ
gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_3*
_output_shapes
:
Ą
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
_class

loc:@mul_3*
T0

gradients/mul_3_grad/mul_1Mulactivation_8_target_1gradients/Sum_3_grad/Tile*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@mul_3
Å
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class

loc:@mul_3
½
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
Tshape0*
_class

loc:@mul_3*'
_output_shapes
:’’’’’’’’’
*
T0
«
gradients/Log_1_grad/Reciprocal
Reciprocalclip_by_value_1^gradients/mul_3_grad/Reshape_1*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Log_1*
T0
¬
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*
T0*
_class

loc:@Log_1*'
_output_shapes
:’’’’’’’’’


$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1

&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *"
_class
loc:@clip_by_value_1*
dtype0*
_output_shapes
: 
¢
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1*
T0

*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *"
_class
loc:@clip_by_value_1*
dtype0*
_output_shapes
: 
Ö
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1
³
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1*
T0
ü
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*"
_class
loc:@clip_by_value_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ņ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1*
T0
±
)gradients/clip_by_value_1_grad/LogicalNot
LogicalNot+gradients/clip_by_value_1_grad/GreaterEqual*"
_class
loc:@clip_by_value_1*'
_output_shapes
:’’’’’’’’’

ņ
'gradients/clip_by_value_1_grad/Select_1Select)gradients/clip_by_value_1_grad/LogicalNotgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*"
_class
loc:@clip_by_value_1
ź
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*"
_class
loc:@clip_by_value_1
ß
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*"
_class
loc:@clip_by_value_1
š
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ō
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0*"
_class
loc:@clip_by_value_1*
_output_shapes
: 
”
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_2*
_output_shapes
:*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
T0

.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@clip_by_value_1/Minimum
Ą
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
T0*
_output_shapes
:*
out_type0**
_class 
loc:@clip_by_value_1/Minimum
£
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    **
_class 
loc:@clip_by_value_1/Minimum
ö
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:’’’’’’’’’

­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1*
T0*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum

<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1**
_class 
loc:@clip_by_value_1/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum*
T0
Ę
1gradients/clip_by_value_1/Minimum_grad/LogicalNot
LogicalNot0gradients/clip_by_value_1/Minimum_grad/LessEqual*'
_output_shapes
:’’’’’’’’’
**
_class 
loc:@clip_by_value_1/Minimum
 
/gradients/clip_by_value_1/Minimum_grad/Select_1Select1gradients/clip_by_value_1/Minimum_grad/LogicalNot&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:**
_class 
loc:@clip_by_value_1/Minimum
’
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:**
_class 
loc:@clip_by_value_1/Minimum
ō
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0**
_class 
loc:@clip_by_value_1/Minimum

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
T0*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:
ä
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
_class
loc:@truediv_2*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
²
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’
*
T0
Ó
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_2*
_output_shapes
:
Ē
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
Tshape0*
_class
loc:@truediv_2*
T0

gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*
T0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’

¢
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_2*
T0
Ø
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_2*
T0
Ē
gradients/truediv_2_grad/mulMul.gradients/clip_by_value_1/Minimum_grad/Reshape"gradients/truediv_2_grad/RealDiv_2*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’
*
T0
Ó
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@truediv_2*
T0*
	keep_dims( *

Tidx0
Ķ
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:’’’’’’’’’*
T0

gradients/Sum_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
_output_shapes
:*
out_type0*
_class

loc:@Sum_2
u
gradients/Sum_2_grad/SizeConst*
value	B :*
_class

loc:@Sum_2*
_output_shapes
: *
dtype0

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_2

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*
_class

loc:@Sum_2*
_output_shapes
: 
y
gradients/Sum_2_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@Sum_2
|
 gradients/Sum_2_grad/range/startConst*
value	B : *
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 
|
 gradients/Sum_2_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_2
Ä
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_2*

Tidx0
{
gradients/Sum_2_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_2

gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*
_class

loc:@Sum_2*
_output_shapes
: 
ń
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*
_class

loc:@Sum_2*
N*#
_output_shapes
:’’’’’’’’’
z
gradients/Sum_2_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_2*
_output_shapes
: *
dtype0
³
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*
_class

loc:@Sum_2*#
_output_shapes
:’’’’’’’’’
¢
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*
_class

loc:@Sum_2*
_output_shapes
:
ŗ
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_2*
_output_shapes
:*
T0
¼
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_2
¬
gradients/AddNAddN gradients/truediv_2_grad/Reshapegradients/Sum_2_grad/Tile*
T0*
_class
loc:@truediv_2*
N*'
_output_shapes
:’’’’’’’’’

µ
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*
T0*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_1/Softmax
°
;gradients/activation_8_1/Softmax_grad/Sum/reduction_indicesConst*
valueB:*)
_class
loc:@activation_8_1/Softmax*
_output_shapes
:*
dtype0

)gradients/activation_8_1/Softmax_grad/SumSum)gradients/activation_8_1/Softmax_grad/mul;gradients/activation_8_1/Softmax_grad/Sum/reduction_indices*)
_class
loc:@activation_8_1/Softmax*#
_output_shapes
:’’’’’’’’’*
T0*
	keep_dims( *

Tidx0
Æ
3gradients/activation_8_1/Softmax_grad/Reshape/shapeConst*
valueB"’’’’   *)
_class
loc:@activation_8_1/Softmax*
dtype0*
_output_shapes
:

-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*
Tshape0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’*
T0
Ģ
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’

Ņ
+gradients/activation_8_1/Softmax_grad/mul_1Mul)gradients/activation_8_1/Softmax_grad/subactivation_8_1/Softmax*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:’’’’’’’’’

š
&gradients/dense_4_1/MatMul_grad/MatMulMatMul+gradients/activation_8_1/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*#
_class
loc:@dense_4_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
ģ
(gradients/dense_4_1/MatMul_grad/MatMul_1MatMuldropout_6_1/cond/Merge+gradients/activation_8_1/Softmax_grad/mul_1*
transpose_b( *
_output_shapes
:	
*
transpose_a(*#
_class
loc:@dense_4_1/MatMul*
T0
ē
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*
T0*#
_class
loc:@dense_4_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
¶
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu*
T0

gradients/Shape_1Shapegradients/Switch:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_1/Elu

gradients/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_7_1/Elu

gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu
ā
2gradients/dropout_6_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_6_1/cond/Merge_grad/cond_gradgradients/zeros*%
_class
loc:@activation_7_1/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
¾
1gradients/dropout_6_1/cond/dropout/mul_grad/ShapeShapedropout_6_1/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:*
T0
Ā
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
°
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ķ
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul

/gradients/dropout_6_1/cond/dropout/mul_grad/SumSum/gradients/dropout_6_1/cond/dropout/mul_grad/mulAgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_6_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/mul_grad/Sum1gradients/dropout_6_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ķ
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
”
1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:

5gradients/dropout_6_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_13gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
¶
1gradients/dropout_6_1/cond/dropout/div_grad/ShapeShapedropout_6_1/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
§
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div
°
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ū
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0

/gradients/dropout_6_1/cond/dropout/div_grad/SumSum3gradients/dropout_6_1/cond/dropout/div_grad/RealDivAgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_6_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/div_grad/Sum1gradients/dropout_6_1/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
°
/gradients/dropout_6_1/cond/dropout/div_grad/NegNegdropout_6_1/cond/mul*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
ł
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_6_1/cond/dropout/div_grad/Neg"dropout_6_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
’
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients/dropout_6_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_6_1/cond/dropout/div_grad/mulCgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
: 
Æ
)gradients/dropout_6_1/cond/mul_grad/ShapeShapedropout_6_1/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_1/cond/mul*
T0

+gradients/dropout_6_1/cond/mul_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *'
_class
loc:@dropout_6_1/cond/mul

9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_6_1/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
×
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_6_1/cond/mul
ū
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_6_1/cond/mul
ō
+gradients/dropout_6_1/cond/mul_grad/ReshapeReshape'gradients/dropout_6_1/cond/mul_grad/Sum)gradients/dropout_6_1/cond/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
T0
ą
)gradients/dropout_6_1/cond/mul_grad/mul_1Muldropout_6_1/cond/mul/Switch:13gradients/dropout_6_1/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

)gradients/dropout_6_1/cond/mul_grad/Sum_1Sum)gradients/dropout_6_1/cond/mul_grad/mul_1;gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
č
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
: *
T0
ø
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_1/Elu*
T0

gradients/Shape_2Shapegradients/Switch_1*
T0*
out_type0*%
_class
loc:@activation_7_1/Elu*
_output_shapes
:

gradients/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:’’’’’’’’’
ā
4gradients/dropout_6_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_6_1/cond/mul_grad/Reshapegradients/zeros_1*
T0*%
_class
loc:@activation_7_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
å
gradients/AddN_1AddN2gradients/dropout_6_1/cond/Switch_1_grad/cond_grad4gradients/dropout_6_1/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_1/Elu*
N*(
_output_shapes
:’’’’’’’’’
“
)gradients/activation_7_1/Elu_grad/EluGradEluGradgradients/AddN_1activation_7_1/Elu*
T0*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:’’’’’’’’’
ī
&gradients/dense_3_1/MatMul_grad/MatMulMatMul)gradients/activation_7_1/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_3_1/MatMul*
T0
ė
(gradients/dense_3_1/MatMul_grad/MatMul_1MatMuldropout_5_1/cond/Merge)gradients/activation_7_1/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_3_1/MatMul
ē
/gradients/dropout_5_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_3_1/MatMul_grad/MatMuldropout_5_1/cond/pred_id*#
_class
loc:@dense_3_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ø
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients/Shape_3Shapegradients/Switch_2:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_1/Elu

gradients/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_1/Elu

gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu*
T0
ä
2gradients/dropout_5_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_5_1/cond/Merge_grad/cond_gradgradients/zeros_2*
T0*%
_class
loc:@activation_6_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
¾
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:
Ā
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
°
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ķ
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’

/gradients/dropout_5_1/cond/dropout/mul_grad/SumSum/gradients/dropout_5_1/cond/dropout/mul_grad/mulAgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_5_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/mul_grad/Sum1gradients/dropout_5_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ķ
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
”
1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul

5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
¶
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
§
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div
°
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ū
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

/gradients/dropout_5_1/cond/dropout/div_grad/SumSum3gradients/dropout_5_1/cond/dropout/div_grad/RealDivAgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_5_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/div_grad/Sum1gradients/dropout_5_1/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
°
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
ł
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
’
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

1gradients/dropout_5_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_5_1/cond/dropout/div_grad/mulCgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:

5gradients/dropout_5_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/div_grad/Sum_13gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
Æ
)gradients/dropout_5_1/cond/mul_grad/ShapeShapedropout_5_1/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:

+gradients/dropout_5_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
: *
dtype0

9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_5_1/cond/mul_grad/Shape+gradients/dropout_5_1/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_5_1/cond/mul
×
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*
T0*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:’’’’’’’’’
ū
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ō
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul
ą
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_1/cond/mul

)gradients/dropout_5_1/cond/mul_grad/Sum_1Sum)gradients/dropout_5_1/cond/mul_grad/mul_1;gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_1/cond/mul
č
-gradients/dropout_5_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_5_1/cond/mul_grad/Sum_1+gradients/dropout_5_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
: *
T0
ø
gradients/Switch_3Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu*
T0

gradients/Shape_4Shapegradients/Switch_3*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_1/Elu

gradients/zeros_3/ConstConst*
valueB
 *    *%
_class
loc:@activation_6_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’
ā
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_6_1/Elu*
T0
å
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
“
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_1/Elu*
T0
ī
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_2_1/MatMul
ė
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( *
T0*#
_class
loc:@dense_2_1/MatMul* 
_output_shapes
:
*
transpose_a(
ē
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*
T0*#
_class
loc:@dense_2_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
ø
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu

gradients/Shape_5Shapegradients/Switch_4:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_1/Elu*
T0

gradients/zeros_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_5_1/Elu

gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*
T0*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:’’’’’’’’’
ä
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4*
T0*%
_class
loc:@activation_5_1/Elu*
N**
_output_shapes
:’’’’’’’’’: 
¾
1gradients/dropout_4_1/cond/dropout/mul_grad/ShapeShapedropout_4_1/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
Ā
3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1Shapedropout_4_1/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
°
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ķ
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0

/gradients/dropout_4_1/cond/dropout/mul_grad/SumSum/gradients/dropout_4_1/cond/dropout/mul_grad/mulAgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:

3gradients/dropout_4_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/mul_grad/Sum1gradients/dropout_4_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ķ
1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Muldropout_4_1/cond/dropout/div1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
”
1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_4_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_13gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
¶
1gradients/dropout_4_1/cond/dropout/div_grad/ShapeShapedropout_4_1/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:
§
3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_1/cond/dropout/div
°
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ū
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

/gradients/dropout_4_1/cond/dropout/div_grad/SumSum3gradients/dropout_4_1/cond/dropout/div_grad/RealDivAgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_4_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/div_grad/Sum1gradients/dropout_4_1/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
°
/gradients/dropout_4_1/cond/dropout/div_grad/NegNegdropout_4_1/cond/mul*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
ł
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
’
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0

1gradients/dropout_4_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_4_1/cond/dropout/div_grad/mulCgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_4_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/div_grad/Sum_13gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
Æ
)gradients/dropout_4_1/cond/mul_grad/ShapeShapedropout_4_1/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:

+gradients/dropout_4_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
: *
dtype0

9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_4_1/cond/mul_grad/Shape+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_4_1/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
×
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_1/cond/mul*
T0
ū
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul*
T0*
	keep_dims( *

Tidx0
ō
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
T0
ą
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_1/cond/mul*
T0

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul*
T0*
	keep_dims( *

Tidx0
č
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
: 
ø
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients/Shape_6Shapegradients/Switch_5*
out_type0*%
_class
loc:@activation_5_1/Elu*
_output_shapes
:*
T0

gradients/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu*
T0
ā
4gradients/dropout_4_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_4_1/cond/mul_grad/Reshapegradients/zeros_5**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_5_1/Elu*
T0
å
gradients/AddN_3AddN2gradients/dropout_4_1/cond/Switch_1_grad/cond_grad4gradients/dropout_4_1/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
“
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_1/Elu
ī
&gradients/dense_1_1/MatMul_grad/MatMulMatMul)gradients/activation_5_1/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_1_1/MatMul*(
_output_shapes
:’’’’’’’’’$*
transpose_a( 
č
(gradients/dense_1_1/MatMul_grad/MatMul_1MatMulflatten_1_1/Reshape)gradients/activation_5_1/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
$*
transpose_a(*#
_class
loc:@dense_1_1/MatMul
`
Const_8Const*
valueB
$*    *
dtype0* 
_output_shapes
:
$

Variable
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$

Variable/AssignAssignVariableConst_8* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
k
Variable/readIdentityVariable*
_class
loc:@Variable* 
_output_shapes
:
$*
T0
`
Const_9Const*
dtype0* 
_output_shapes
:
*
valueB
*    


Variable_1
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
£
Variable_1/AssignAssign
Variable_1Const_9*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(* 
_output_shapes
:

q
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1* 
_output_shapes
:
*
T0
a
Const_10Const*
valueB
*    *
dtype0* 
_output_shapes
:



Variable_2
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
¤
Variable_2/AssignAssign
Variable_2Const_10* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_2*
T0*
use_locking(
q
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2* 
_output_shapes
:
*
T0
_
Const_11Const*
valueB	
*    *
dtype0*
_output_shapes
:	



Variable_3
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
£
Variable_3/AssignAssign
Variable_3Const_11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:	

p
Variable_3/readIdentity
Variable_3*
T0*
_output_shapes
:	
*
_class
loc:@Variable_3
a
Const_12Const* 
_output_shapes
:
$*
dtype0*
valueB
$*    


Variable_4
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
¤
Variable_4/AssignAssign
Variable_4Const_12*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_4
q
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4* 
_output_shapes
:
$
a
Const_13Const* 
_output_shapes
:
*
dtype0*
valueB
*    


Variable_5
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
¤
Variable_5/AssignAssign
Variable_5Const_13*
_class
loc:@Variable_5* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
q
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5* 
_output_shapes
:
*
T0
a
Const_14Const*
dtype0* 
_output_shapes
:
*
valueB
*    


Variable_6
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
¤
Variable_6/AssignAssign
Variable_6Const_14*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_6
q
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6* 
_output_shapes
:
*
T0
_
Const_15Const*
dtype0*
_output_shapes
:	
*
valueB	
*    


Variable_7
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
£
Variable_7/AssignAssign
Variable_7Const_15*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_7*
T0*
use_locking(
p
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes
:	

L
mul_6/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
O
mul_6Mulmul_6/xVariable/read* 
_output_shapes
:
$*
T0
e
SquareSquare(gradients/dense_1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
H
mul_7Mulmul_7/xSquare* 
_output_shapes
:
$*
T0
C
addAddmul_6mul_7* 
_output_shapes
:
$*
T0

Assign_8AssignVariableadd* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
L
add_1/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
Q
add_1AddVariable_4/readadd_1/y*
T0* 
_output_shapes
:
$
M
Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_17Const*
_output_shapes
: *
dtype0*
valueB
 *  
^
clip_by_value_2/MinimumMinimumadd_1Const_17* 
_output_shapes
:
$*
T0
h
clip_by_value_2Maximumclip_by_value_2/MinimumConst_16* 
_output_shapes
:
$*
T0
H
SqrtSqrtclip_by_value_2*
T0* 
_output_shapes
:
$
g
mul_8Mul(gradients/dense_1_1/MatMul_grad/MatMul_1Sqrt* 
_output_shapes
:
$*
T0
L
add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
E
add_2Addaddadd_2/y* 
_output_shapes
:
$*
T0
M
Const_18Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_19Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_3/MinimumMinimumadd_2Const_19* 
_output_shapes
:
$*
T0
h
clip_by_value_3Maximumclip_by_value_3/MinimumConst_18*
T0* 
_output_shapes
:
$
J
Sqrt_1Sqrtclip_by_value_3* 
_output_shapes
:
$*
T0
N
	truediv_4RealDivmul_8Sqrt_1* 
_output_shapes
:
$*
T0
M
mul_9Mul	lr_1/read	truediv_4*
T0* 
_output_shapes
:
$
S
sub_2Subdense_1/kernel/readmul_9* 
_output_shapes
:
$*
T0
 
Assign_9Assigndense_1/kernelsub_2*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
M
mul_10/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_10Mulmul_10/xVariable_4/read* 
_output_shapes
:
$*
T0
H
Square_1Square	truediv_4*
T0* 
_output_shapes
:
$
M
mul_11/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_11Mulmul_11/xSquare_1*
T0* 
_output_shapes
:
$
G
add_3Addmul_10mul_11* 
_output_shapes
:
$*
T0

	Assign_10Assign
Variable_4add_3*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_4
M
mul_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
S
mul_12Mulmul_12/xVariable_1/read* 
_output_shapes
:
*
T0
g
Square_2Square(gradients/dense_2_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_13/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_13Mulmul_13/xSquare_2*
T0* 
_output_shapes
:

G
add_4Addmul_12mul_13*
T0* 
_output_shapes
:


	Assign_11Assign
Variable_1add_4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(* 
_output_shapes
:

L
add_5/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
Q
add_5AddVariable_5/readadd_5/y* 
_output_shapes
:
*
T0
M
Const_20Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_21Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_4/MinimumMinimumadd_5Const_21* 
_output_shapes
:
*
T0
h
clip_by_value_4Maximumclip_by_value_4/MinimumConst_20* 
_output_shapes
:
*
T0
J
Sqrt_2Sqrtclip_by_value_4* 
_output_shapes
:
*
T0
j
mul_14Mul(gradients/dense_2_1/MatMul_grad/MatMul_1Sqrt_2*
T0* 
_output_shapes
:

L
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
G
add_6Addadd_4add_6/y* 
_output_shapes
:
*
T0
M
Const_22Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_23Const*
dtype0*
_output_shapes
: *
valueB
 *  
^
clip_by_value_5/MinimumMinimumadd_6Const_23*
T0* 
_output_shapes
:

h
clip_by_value_5Maximumclip_by_value_5/MinimumConst_22* 
_output_shapes
:
*
T0
J
Sqrt_3Sqrtclip_by_value_5* 
_output_shapes
:
*
T0
O
	truediv_5RealDivmul_14Sqrt_3*
T0* 
_output_shapes
:

N
mul_15Mul	lr_1/read	truediv_5* 
_output_shapes
:
*
T0
T
sub_3Subdense_2/kernel/readmul_15* 
_output_shapes
:
*
T0
”
	Assign_12Assigndense_2/kernelsub_3*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel
M
mul_16/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_16Mulmul_16/xVariable_5/read*
T0* 
_output_shapes
:

H
Square_3Square	truediv_5*
T0* 
_output_shapes
:

M
mul_17/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_17Mulmul_17/xSquare_3*
T0* 
_output_shapes
:

G
add_7Addmul_16mul_17*
T0* 
_output_shapes
:


	Assign_13Assign
Variable_5add_7* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_5*
T0*
use_locking(
M
mul_18/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_18Mulmul_18/xVariable_2/read* 
_output_shapes
:
*
T0
g
Square_4Square(gradients/dense_3_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_19/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_19Mulmul_19/xSquare_4* 
_output_shapes
:
*
T0
G
add_8Addmul_18mul_19*
T0* 
_output_shapes
:


	Assign_14Assign
Variable_2add_8*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2
L
add_9/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
Q
add_9AddVariable_6/readadd_9/y* 
_output_shapes
:
*
T0
M
Const_24Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 
^
clip_by_value_6/MinimumMinimumadd_9Const_25*
T0* 
_output_shapes
:

h
clip_by_value_6Maximumclip_by_value_6/MinimumConst_24* 
_output_shapes
:
*
T0
J
Sqrt_4Sqrtclip_by_value_6* 
_output_shapes
:
*
T0
j
mul_20Mul(gradients/dense_3_1/MatMul_grad/MatMul_1Sqrt_4*
T0* 
_output_shapes
:

M
add_10/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
I
add_10Addadd_8add_10/y*
T0* 
_output_shapes
:

M
Const_26Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_27Const*
dtype0*
_output_shapes
: *
valueB
 *  
_
clip_by_value_7/MinimumMinimumadd_10Const_27*
T0* 
_output_shapes
:

h
clip_by_value_7Maximumclip_by_value_7/MinimumConst_26* 
_output_shapes
:
*
T0
J
Sqrt_5Sqrtclip_by_value_7* 
_output_shapes
:
*
T0
O
	truediv_6RealDivmul_20Sqrt_5* 
_output_shapes
:
*
T0
N
mul_21Mul	lr_1/read	truediv_6* 
_output_shapes
:
*
T0
T
sub_4Subdense_3/kernel/readmul_21* 
_output_shapes
:
*
T0
”
	Assign_15Assigndense_3/kernelsub_4*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
M
mul_22/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
S
mul_22Mulmul_22/xVariable_6/read*
T0* 
_output_shapes
:

H
Square_5Square	truediv_6* 
_output_shapes
:
*
T0
M
mul_23/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_23Mulmul_23/xSquare_5*
T0* 
_output_shapes
:

H
add_11Addmul_22mul_23*
T0* 
_output_shapes
:


	Assign_16Assign
Variable_6add_11*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_6
M
mul_24/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
R
mul_24Mulmul_24/xVariable_3/read*
_output_shapes
:	
*
T0
f
Square_6Square(gradients/dense_4_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

M
mul_25/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
K
mul_25Mulmul_25/xSquare_6*
_output_shapes
:	
*
T0
G
add_12Addmul_24mul_25*
T0*
_output_shapes
:	


	Assign_17Assign
Variable_3add_12*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:	

M
add_13/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
R
add_13AddVariable_7/readadd_13/y*
_output_shapes
:	
*
T0
M
Const_28Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 
^
clip_by_value_8/MinimumMinimumadd_13Const_29*
T0*
_output_shapes
:	

g
clip_by_value_8Maximumclip_by_value_8/MinimumConst_28*
T0*
_output_shapes
:	

I
Sqrt_6Sqrtclip_by_value_8*
_output_shapes
:	
*
T0
i
mul_26Mul(gradients/dense_4_1/MatMul_grad/MatMul_1Sqrt_6*
T0*
_output_shapes
:	

M
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
I
add_14Addadd_12add_14/y*
_output_shapes
:	
*
T0
M
Const_30Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_31Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_9/MinimumMinimumadd_14Const_31*
_output_shapes
:	
*
T0
g
clip_by_value_9Maximumclip_by_value_9/MinimumConst_30*
T0*
_output_shapes
:	

I
Sqrt_7Sqrtclip_by_value_9*
T0*
_output_shapes
:	

N
	truediv_7RealDivmul_26Sqrt_7*
_output_shapes
:	
*
T0
M
mul_27Mul	lr_1/read	truediv_7*
_output_shapes
:	
*
T0
S
sub_5Subdense_4/kernel/readmul_27*
T0*
_output_shapes
:	

 
	Assign_18Assigndense_4/kernelsub_5*
_output_shapes
:	
*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
M
mul_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
R
mul_28Mulmul_28/xVariable_7/read*
T0*
_output_shapes
:	

G
Square_7Square	truediv_7*
_output_shapes
:	
*
T0
M
mul_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
K
mul_29Mulmul_29/xSquare_7*
_output_shapes
:	
*
T0
G
add_15Addmul_28mul_29*
T0*
_output_shapes
:	


	Assign_19Assign
Variable_7add_15*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_7*
T0*
use_locking(
³
group_deps_1NoOp^mul_5^Mean_7	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
į
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign
i
activation_1_2/EluEluconv2d_1/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0
r
conv2d_2_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_2/transpose	Transposeactivation_1_2/Eluconv2d_2_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_2_2/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_2_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_2_2/convolutionConv2Dconv2d_2_2/transposeconv2d_2/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
T0*
use_cudnn_on_gpu(
t
conv2d_2_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_2/transpose_1	Transposeconv2d_2_2/convolutionconv2d_2_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_2_2/EluEluconv2d_2_2/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_1_2/cond/switch_tIdentitydropout_1_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_1_2/cond/switch_fIdentitydropout_1_2/cond/Switch*
_output_shapes
:*
T0

g
dropout_1_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_1_2/cond/mul/yConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ļ
dropout_1_2/cond/mul/SwitchSwitchactivation_2_2/Eludropout_1_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_2_2/Elu*
T0

dropout_1_2/cond/mulMuldropout_1_2/cond/mul/Switch:1dropout_1_2/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_1_2/cond/dropout/keep_probConst^dropout_1_2/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_1_2/cond/dropout/ShapeShapedropout_1_2/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_1_2/cond/dropout/random_uniform/minConst^dropout_1_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_1_2/cond/dropout/random_uniform/maxConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ė
5dropout_1_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_2/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*/
_output_shapes
:’’’’’’’’’@*
seed2ČóY
­
+dropout_1_2/cond/dropout/random_uniform/subSub+dropout_1_2/cond/dropout/random_uniform/max+dropout_1_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_1_2/cond/dropout/random_uniform/mulMul5dropout_1_2/cond/dropout/random_uniform/RandomUniform+dropout_1_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_1_2/cond/dropout/random_uniformAdd+dropout_1_2/cond/dropout/random_uniform/mul+dropout_1_2/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_1_2/cond/dropout/addAdd"dropout_1_2/cond/dropout/keep_prob'dropout_1_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_2/cond/dropout/FloorFloordropout_1_2/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/dropout/divRealDivdropout_1_2/cond/mul"dropout_1_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_2/cond/dropout/mulMuldropout_1_2/cond/dropout/divdropout_1_2/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_1_2/cond/Switch_1Switchactivation_2_2/Eludropout_1_2/cond/pred_id*
T0*%
_class
loc:@activation_2_2/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_1_2/cond/MergeMergedropout_1_2/cond/Switch_1dropout_1_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_3_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3_2/transpose	Transposedropout_1_2/cond/Mergeconv2d_3_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_3_2/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_3_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_3_2/convolutionConv2Dconv2d_3_2/transposeconv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’@
t
conv2d_3_2/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_3_2/transpose_1	Transposeconv2d_3_2/convolutionconv2d_3_2/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_3_2/EluEluconv2d_3_2/transpose_1*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_2_2/cond/switch_tIdentitydropout_2_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_2_2/cond/switch_fIdentitydropout_2_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_2_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_2_2/cond/mul/yConst^dropout_2_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ļ
dropout_2_2/cond/mul/SwitchSwitchactivation_3_2/Eludropout_2_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_3_2/Elu*
T0

dropout_2_2/cond/mulMuldropout_2_2/cond/mul/Switch:1dropout_2_2/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_2_2/cond/dropout/keep_probConst^dropout_2_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_2_2/cond/dropout/ShapeShapedropout_2_2/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_2_2/cond/dropout/random_uniform/minConst^dropout_2_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_2_2/cond/dropout/random_uniform/maxConst^dropout_2_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ģ
5dropout_2_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_2/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Õų×*
T0*
seed±’å)*
dtype0
­
+dropout_2_2/cond/dropout/random_uniform/subSub+dropout_2_2/cond/dropout/random_uniform/max+dropout_2_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_2_2/cond/dropout/random_uniform/mulMul5dropout_2_2/cond/dropout/random_uniform/RandomUniform+dropout_2_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_2/cond/dropout/random_uniformAdd+dropout_2_2/cond/dropout/random_uniform/mul+dropout_2_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_2_2/cond/dropout/addAdd"dropout_2_2/cond/dropout/keep_prob'dropout_2_2/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/dropout/FloorFloordropout_2_2/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_2/cond/dropout/divRealDivdropout_2_2/cond/mul"dropout_2_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_2/cond/dropout/mulMuldropout_2_2/cond/dropout/divdropout_2_2/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
Ķ
dropout_2_2/cond/Switch_1Switchactivation_3_2/Eludropout_2_2/cond/pred_id*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_3_2/Elu*
T0

dropout_2_2/cond/MergeMergedropout_2_2/cond/Switch_1dropout_2_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’@: 
r
conv2d_4_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4_2/transpose	Transposedropout_2_2/cond/Mergeconv2d_4_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_4_2/convolution/ShapeConst*%
valueB"      @       *
dtype0*
_output_shapes
:
u
$conv2d_4_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ž
conv2d_4_2/convolutionConv2Dconv2d_4_2/transposeconv2d_4/kernel/read*/
_output_shapes
:’’’’’’’’’ *
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_4_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4_2/transpose_1	Transposeconv2d_4_2/convolutionconv2d_4_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
k
activation_4_2/EluEluconv2d_4_2/transpose_1*/
_output_shapes
:’’’’’’’’’ *
T0
y
 max_pooling2d_1_2/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
„
max_pooling2d_1_2/transpose	Transposeactivation_4_2/Elu max_pooling2d_1_2/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
Ī
max_pooling2d_1_2/MaxPoolMaxPoolmax_pooling2d_1_2/transpose*
ksize
*
T0*
paddingVALID*/
_output_shapes
:’’’’’’’’’ *
data_formatNHWC*
strides

{
"max_pooling2d_1_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
°
max_pooling2d_1_2/transpose_1	Transposemax_pooling2d_1_2/MaxPool"max_pooling2d_1_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_3_2/cond/switch_tIdentitydropout_3_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_3_2/cond/switch_fIdentitydropout_3_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_3_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_3_2/cond/mul/yConst^dropout_3_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
å
dropout_3_2/cond/mul/SwitchSwitchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_2/transpose_1

dropout_3_2/cond/mulMuldropout_3_2/cond/mul/Switch:1dropout_3_2/cond/mul/y*/
_output_shapes
:’’’’’’’’’ *
T0

"dropout_3_2/cond/dropout/keep_probConst^dropout_3_2/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_3_2/cond/dropout/ShapeShapedropout_3_2/cond/mul*
out_type0*
_output_shapes
:*
T0

+dropout_3_2/cond/dropout/random_uniform/minConst^dropout_3_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_3_2/cond/dropout/random_uniform/maxConst^dropout_3_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ģ
5dropout_3_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_2/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*/
_output_shapes
:’’’’’’’’’ *
seed2ųĄĒ
­
+dropout_3_2/cond/dropout/random_uniform/subSub+dropout_3_2/cond/dropout/random_uniform/max+dropout_3_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_3_2/cond/dropout/random_uniform/mulMul5dropout_3_2/cond/dropout/random_uniform/RandomUniform+dropout_3_2/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_2/cond/dropout/random_uniformAdd+dropout_3_2/cond/dropout/random_uniform/mul+dropout_3_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’ 
Ŗ
dropout_3_2/cond/dropout/addAdd"dropout_3_2/cond/dropout/keep_prob'dropout_3_2/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_2/cond/dropout/FloorFloordropout_3_2/cond/dropout/add*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout_3_2/cond/dropout/divRealDivdropout_3_2/cond/mul"dropout_3_2/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_2/cond/dropout/mulMuldropout_3_2/cond/dropout/divdropout_3_2/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
ć
dropout_3_2/cond/Switch_1Switchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *
T0

dropout_3_2/cond/MergeMergedropout_3_2/cond/Switch_1dropout_3_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:’’’’’’’’’ : 
g
flatten_1_2/ShapeShapedropout_3_2/cond/Merge*
T0*
_output_shapes
:*
out_type0
i
flatten_1_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!flatten_1_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
k
!flatten_1_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¹
flatten_1_2/strided_sliceStridedSliceflatten_1_2/Shapeflatten_1_2/strided_slice/stack!flatten_1_2/strided_slice/stack_1!flatten_1_2/strided_slice/stack_2*
_output_shapes
:*
end_mask*
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask *
Index0*
T0
[
flatten_1_2/ConstConst*
valueB: *
_output_shapes
:*
dtype0

flatten_1_2/ProdProdflatten_1_2/strided_sliceflatten_1_2/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
flatten_1_2/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
z
flatten_1_2/stackPackflatten_1_2/stack/0flatten_1_2/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1_2/ReshapeReshapedropout_3_2/cond/Mergeflatten_1_2/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
T0

dense_1_2/MatMulMatMulflatten_1_2/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_5_2/EluEludense_1_2/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_4_2/cond/switch_tIdentitydropout_4_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_4_2/cond/switch_fIdentitydropout_4_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_4_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_4_2/cond/mul/yConst^dropout_4_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_4_2/cond/mul/SwitchSwitchactivation_5_2/Eludropout_4_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu*
T0

dropout_4_2/cond/mulMuldropout_4_2/cond/mul/Switch:1dropout_4_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_4_2/cond/dropout/keep_probConst^dropout_4_2/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_4_2/cond/dropout/ShapeShapedropout_4_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_2/cond/dropout/random_uniform/minConst^dropout_4_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_4_2/cond/dropout/random_uniform/maxConst^dropout_4_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Å
5dropout_4_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_2/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ėĖ*
T0*
seed±’å)*
dtype0
­
+dropout_4_2/cond/dropout/random_uniform/subSub+dropout_4_2/cond/dropout/random_uniform/max+dropout_4_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_4_2/cond/dropout/random_uniform/mulMul5dropout_4_2/cond/dropout/random_uniform/RandomUniform+dropout_4_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_4_2/cond/dropout/random_uniformAdd+dropout_4_2/cond/dropout/random_uniform/mul+dropout_4_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_4_2/cond/dropout/addAdd"dropout_4_2/cond/dropout/keep_prob'dropout_4_2/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_4_2/cond/dropout/FloorFloordropout_4_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_2/cond/dropout/divRealDivdropout_4_2/cond/mul"dropout_4_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4_2/cond/dropout/mulMuldropout_4_2/cond/dropout/divdropout_4_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_4_2/cond/Switch_1Switchactivation_5_2/Eludropout_4_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_2/Elu*
T0

dropout_4_2/cond/MergeMergedropout_4_2/cond/Switch_1dropout_4_2/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
 
dense_2_2/MatMulMatMuldropout_4_2/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_6_2/EluEludense_2_2/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_5_2/cond/switch_tIdentitydropout_5_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_5_2/cond/switch_fIdentitydropout_5_2/cond/Switch*
T0
*
_output_shapes
:
g
dropout_5_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_5_2/cond/mul/yConst^dropout_5_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Į
dropout_5_2/cond/mul/SwitchSwitchactivation_6_2/Eludropout_5_2/cond/pred_id*%
_class
loc:@activation_6_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5_2/cond/mulMuldropout_5_2/cond/mul/Switch:1dropout_5_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_5_2/cond/dropout/keep_probConst^dropout_5_2/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_5_2/cond/dropout/ShapeShapedropout_5_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_5_2/cond/dropout/random_uniform/minConst^dropout_5_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_5_2/cond/dropout/random_uniform/maxConst^dropout_5_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Å
5dropout_5_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_2/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*(
_output_shapes
:’’’’’’’’’*
seed2Ø
­
+dropout_5_2/cond/dropout/random_uniform/subSub+dropout_5_2/cond/dropout/random_uniform/max+dropout_5_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_5_2/cond/dropout/random_uniform/mulMul5dropout_5_2/cond/dropout/random_uniform/RandomUniform+dropout_5_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_5_2/cond/dropout/random_uniformAdd+dropout_5_2/cond/dropout/random_uniform/mul+dropout_5_2/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_5_2/cond/dropout/addAdd"dropout_5_2/cond/dropout/keep_prob'dropout_5_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_5_2/cond/dropout/FloorFloordropout_5_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_2/cond/dropout/divRealDivdropout_5_2/cond/mul"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_2/cond/dropout/mulMuldropout_5_2/cond/dropout/divdropout_5_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_5_2/cond/Switch_1Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu

dropout_5_2/cond/MergeMergedropout_5_2/cond/Switch_1dropout_5_2/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
 
dense_3_2/MatMulMatMuldropout_5_2/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
^
activation_7_2/EluEludense_3_2/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_6_2/cond/switch_tIdentitydropout_6_2/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_6_2/cond/switch_fIdentitydropout_6_2/cond/Switch*
_output_shapes
:*
T0

g
dropout_6_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_6_2/cond/mul/yConst^dropout_6_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
dropout_6_2/cond/mul/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*%
_class
loc:@activation_7_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6_2/cond/mulMuldropout_6_2/cond/mul/Switch:1dropout_6_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_6_2/cond/dropout/keep_probConst^dropout_6_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_6_2/cond/dropout/ShapeShapedropout_6_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_6_2/cond/dropout/random_uniform/minConst^dropout_6_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_6_2/cond/dropout/random_uniform/maxConst^dropout_6_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Å
5dropout_6_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_2/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ä *
dtype0*
T0*
seed±’å)
­
+dropout_6_2/cond/dropout/random_uniform/subSub+dropout_6_2/cond/dropout/random_uniform/max+dropout_6_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_6_2/cond/dropout/random_uniform/mulMul5dropout_6_2/cond/dropout/random_uniform/RandomUniform+dropout_6_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
»
'dropout_6_2/cond/dropout/random_uniformAdd+dropout_6_2/cond/dropout/random_uniform/mul+dropout_6_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_6_2/cond/dropout/addAdd"dropout_6_2/cond/dropout/keep_prob'dropout_6_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_6_2/cond/dropout/FloorFloordropout_6_2/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_2/cond/dropout/divRealDivdropout_6_2/cond/mul"dropout_6_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_2/cond/dropout/mulMuldropout_6_2/cond/dropout/divdropout_6_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_6_2/cond/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*%
_class
loc:@activation_7_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6_2/cond/MergeMergedropout_6_2/cond/Switch_1dropout_6_2/cond/dropout/mul*
N*
T0**
_output_shapes
:’’’’’’’’’: 

dense_4_2/MatMulMatMuldropout_6_2/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
e
activation_8_2/SoftmaxSoftmaxdense_4_2/MatMul*
T0*'
_output_shapes
:’’’’’’’’’

W
lr_2/initial_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
lr_2
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

lr_2/AssignAssignlr_2lr_2/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
	loc:@lr_2
U
	lr_2/readIdentitylr_2*
_output_shapes
: *
_class
	loc:@lr_2*
T0
Z
decay_2/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
decay_2
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 

decay_2/AssignAssigndecay_2decay_2/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@decay_2*
T0*
use_locking(
^
decay_2/readIdentitydecay_2*
T0*
_output_shapes
: *
_class
loc:@decay_2
_
iterations_2/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
p
iterations_2
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
²
iterations_2/AssignAssigniterations_2iterations_2/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@iterations_2
m
iterations_2/readIdentityiterations_2*
_class
loc:@iterations_2*
_output_shapes
: *
T0
x
activation_8_sample_weights_2Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’

activation_8_target_2Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Y
Sum_4/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

Sum_4Sumactivation_8_2/SoftmaxSum_4/reduction_indices*'
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims(
e
	truediv_8RealDivactivation_8_2/SoftmaxSum_4*
T0*'
_output_shapes
:’’’’’’’’’

M
Const_32Const*
valueB
 *æÖ3*
_output_shapes
: *
dtype0
L
sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
@
sub_6Subsub_6/xConst_32*
_output_shapes
: *
T0
g
clip_by_value_10/MinimumMinimum	truediv_8sub_6*'
_output_shapes
:’’’’’’’’’
*
T0
q
clip_by_value_10Maximumclip_by_value_10/MinimumConst_32*'
_output_shapes
:’’’’’’’’’
*
T0
P
Log_2Logclip_by_value_10*'
_output_shapes
:’’’’’’’’’
*
T0
]
mul_30Mulactivation_8_target_2Log_2*'
_output_shapes
:’’’’’’’’’
*
T0
Y
Sum_5/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
x
Sum_5Summul_30Sum_5/reduction_indices*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims( 
A
Neg_2NegSum_5*
T0*#
_output_shapes
:’’’’’’’’’
[
Mean_8/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB 
z
Mean_8MeanNeg_2Mean_8/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
b
mul_31MulMean_8activation_8_sample_weights_2*
T0*#
_output_shapes
:’’’’’’’’’
Q
NotEqual_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q

NotEqual_2NotEqualactivation_8_sample_weights_2NotEqual_2/y*
T0*#
_output_shapes
:’’’’’’’’’
W
Cast_4Cast
NotEqual_2*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
R
Const_33Const*
dtype0*
_output_shapes
:*
valueB: 
^
Mean_9MeanCast_4Const_33*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
R
	truediv_9RealDivmul_31Mean_9*#
_output_shapes
:’’’’’’’’’*
T0
R
Const_34Const*
dtype0*
_output_shapes
:*
valueB: 
b
Mean_10Mean	truediv_9Const_34*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_32/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
A
mul_32Mulmul_32/xMean_10*
T0*
_output_shapes
: 
T
ArgMax_4/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
w
ArgMax_4ArgMaxactivation_8_target_2ArgMax_4/dimension*

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
T
ArgMax_5/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMax_5ArgMaxactivation_8_2/SoftmaxArgMax_5/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
R
Equal_2EqualArgMax_4ArgMax_5*#
_output_shapes
:’’’’’’’’’*
T0	
T
Cast_5CastEqual_2*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_35Const*
valueB: *
_output_shapes
:*
dtype0
_
Mean_11MeanCast_5Const_35*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
C
init_2NoOp^lr_2/Assign^decay_2/Assign^iterations_2/Assign
'
group_deps_2NoOp^mul_32^Mean_11
o
gradients_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_32
q
gradients_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@mul_32
z
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
_output_shapes
: *
_class
loc:@mul_32*
T0
{
gradients_1/mul_32_grad/ShapeConst*
valueB *
_class
loc:@mul_32*
dtype0*
_output_shapes
: 
}
gradients_1/mul_32_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_32
Ž
-gradients_1/mul_32_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_32_grad/Shapegradients_1/mul_32_grad/Shape_1*
_class
loc:@mul_32*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
y
gradients_1/mul_32_grad/mulMulgradients_1/FillMean_10*
T0*
_output_shapes
: *
_class
loc:@mul_32
É
gradients_1/mul_32_grad/SumSumgradients_1/mul_32_grad/mul-gradients_1/mul_32_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@mul_32*
T0*
	keep_dims( *

Tidx0
°
gradients_1/mul_32_grad/ReshapeReshapegradients_1/mul_32_grad/Sumgradients_1/mul_32_grad/Shape*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@mul_32
|
gradients_1/mul_32_grad/mul_1Mulmul_32/xgradients_1/Fill*
T0*
_class
loc:@mul_32*
_output_shapes
: 
Ļ
gradients_1/mul_32_grad/Sum_1Sumgradients_1/mul_32_grad/mul_1/gradients_1/mul_32_grad/BroadcastGradientArgs:1*
_class
loc:@mul_32*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¶
!gradients_1/mul_32_grad/Reshape_1Reshapegradients_1/mul_32_grad/Sum_1gradients_1/mul_32_grad/Shape_1*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: *
T0

&gradients_1/Mean_10_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@Mean_10
Å
 gradients_1/Mean_10_grad/ReshapeReshape!gradients_1/mul_32_grad/Reshape_1&gradients_1/Mean_10_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_10*
_output_shapes
:

gradients_1/Mean_10_grad/ShapeShape	truediv_9*
T0*
out_type0*
_class
loc:@Mean_10*
_output_shapes
:
Ć
gradients_1/Mean_10_grad/TileTile gradients_1/Mean_10_grad/Reshapegradients_1/Mean_10_grad/Shape*
_class
loc:@Mean_10*#
_output_shapes
:’’’’’’’’’*
T0*

Tmultiples0

 gradients_1/Mean_10_grad/Shape_1Shape	truediv_9*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_10

 gradients_1/Mean_10_grad/Shape_2Const*
valueB *
_class
loc:@Mean_10*
dtype0*
_output_shapes
: 

gradients_1/Mean_10_grad/ConstConst*
valueB: *
_class
loc:@Mean_10*
_output_shapes
:*
dtype0
Į
gradients_1/Mean_10_grad/ProdProd gradients_1/Mean_10_grad/Shape_1gradients_1/Mean_10_grad/Const*
_output_shapes
: *
_class
loc:@Mean_10*
T0*
	keep_dims( *

Tidx0

 gradients_1/Mean_10_grad/Const_1Const*
valueB: *
_class
loc:@Mean_10*
_output_shapes
:*
dtype0
Å
gradients_1/Mean_10_grad/Prod_1Prod gradients_1/Mean_10_grad/Shape_2 gradients_1/Mean_10_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_10

"gradients_1/Mean_10_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_10
­
 gradients_1/Mean_10_grad/MaximumMaximumgradients_1/Mean_10_grad/Prod_1"gradients_1/Mean_10_grad/Maximum/y*
T0*
_class
loc:@Mean_10*
_output_shapes
: 
«
!gradients_1/Mean_10_grad/floordivFloorDivgradients_1/Mean_10_grad/Prod gradients_1/Mean_10_grad/Maximum*
T0*
_output_shapes
: *
_class
loc:@Mean_10

gradients_1/Mean_10_grad/CastCast!gradients_1/Mean_10_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0*
_class
loc:@Mean_10
³
 gradients_1/Mean_10_grad/truedivRealDivgradients_1/Mean_10_grad/Tilegradients_1/Mean_10_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_10

 gradients_1/truediv_9_grad/ShapeShapemul_31*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_9

"gradients_1/truediv_9_grad/Shape_1Const*
valueB *
_class
loc:@truediv_9*
dtype0*
_output_shapes
: 
ź
0gradients_1/truediv_9_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_9_grad/Shape"gradients_1/truediv_9_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_9*
T0
£
"gradients_1/truediv_9_grad/RealDivRealDiv gradients_1/Mean_10_grad/truedivMean_9*
T0*
_class
loc:@truediv_9*#
_output_shapes
:’’’’’’’’’
Ł
gradients_1/truediv_9_grad/SumSum"gradients_1/truediv_9_grad/RealDiv0gradients_1/truediv_9_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_9*
T0*
	keep_dims( *

Tidx0
É
"gradients_1/truediv_9_grad/ReshapeReshapegradients_1/truediv_9_grad/Sum gradients_1/truediv_9_grad/Shape*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_9
y
gradients_1/truediv_9_grad/NegNegmul_31*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9
£
$gradients_1/truediv_9_grad/RealDiv_1RealDivgradients_1/truediv_9_grad/NegMean_9*
_class
loc:@truediv_9*#
_output_shapes
:’’’’’’’’’*
T0
©
$gradients_1/truediv_9_grad/RealDiv_2RealDiv$gradients_1/truediv_9_grad/RealDiv_1Mean_9*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_9
¹
gradients_1/truediv_9_grad/mulMul gradients_1/Mean_10_grad/truediv$gradients_1/truediv_9_grad/RealDiv_2*
T0*
_class
loc:@truediv_9*#
_output_shapes
:’’’’’’’’’
Ł
 gradients_1/truediv_9_grad/Sum_1Sumgradients_1/truediv_9_grad/mul2gradients_1/truediv_9_grad/BroadcastGradientArgs:1*
_class
loc:@truediv_9*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ā
$gradients_1/truediv_9_grad/Reshape_1Reshape gradients_1/truediv_9_grad/Sum_1"gradients_1/truediv_9_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_9
~
gradients_1/mul_31_grad/ShapeShapeMean_8*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_31

gradients_1/mul_31_grad/Shape_1Shapeactivation_8_sample_weights_2*
out_type0*
_class
loc:@mul_31*
_output_shapes
:*
T0
Ž
-gradients_1/mul_31_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_31_grad/Shapegradients_1/mul_31_grad/Shape_1*
_class
loc:@mul_31*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
®
gradients_1/mul_31_grad/mulMul"gradients_1/truediv_9_grad/Reshapeactivation_8_sample_weights_2*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@mul_31
É
gradients_1/mul_31_grad/SumSumgradients_1/mul_31_grad/mul-gradients_1/mul_31_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@mul_31*
T0*
	keep_dims( *

Tidx0
½
gradients_1/mul_31_grad/ReshapeReshapegradients_1/mul_31_grad/Sumgradients_1/mul_31_grad/Shape*#
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@mul_31*
T0

gradients_1/mul_31_grad/mul_1MulMean_8"gradients_1/truediv_9_grad/Reshape*#
_output_shapes
:’’’’’’’’’*
_class
loc:@mul_31*
T0
Ļ
gradients_1/mul_31_grad/Sum_1Sumgradients_1/mul_31_grad/mul_1/gradients_1/mul_31_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_31
Ć
!gradients_1/mul_31_grad/Reshape_1Reshapegradients_1/mul_31_grad/Sum_1gradients_1/mul_31_grad/Shape_1*
Tshape0*
_class
loc:@mul_31*#
_output_shapes
:’’’’’’’’’*
T0
}
gradients_1/Mean_8_grad/ShapeShapeNeg_2*
T0*
out_type0*
_class
loc:@Mean_8*
_output_shapes
:
y
gradients_1/Mean_8_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8

gradients_1/Mean_8_grad/addAddMean_8/reduction_indicesgradients_1/Mean_8_grad/Size*
T0*
_class
loc:@Mean_8*
_output_shapes
: 
 
gradients_1/Mean_8_grad/modFloorModgradients_1/Mean_8_grad/addgradients_1/Mean_8_grad/Size*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

gradients_1/Mean_8_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_8

#gradients_1/Mean_8_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class
loc:@Mean_8

#gradients_1/Mean_8_grad/range/deltaConst*
value	B :*
_class
loc:@Mean_8*
dtype0*
_output_shapes
: 
Ń
gradients_1/Mean_8_grad/rangeRange#gradients_1/Mean_8_grad/range/startgradients_1/Mean_8_grad/Size#gradients_1/Mean_8_grad/range/delta*
_class
loc:@Mean_8*
_output_shapes
:*

Tidx0

"gradients_1/Mean_8_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8
§
gradients_1/Mean_8_grad/FillFillgradients_1/Mean_8_grad/Shape_1"gradients_1/Mean_8_grad/Fill/value*
_output_shapes
: *
_class
loc:@Mean_8*
T0

%gradients_1/Mean_8_grad/DynamicStitchDynamicStitchgradients_1/Mean_8_grad/rangegradients_1/Mean_8_grad/modgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Fill*
_class
loc:@Mean_8*#
_output_shapes
:’’’’’’’’’*
T0*
N
~
!gradients_1/Mean_8_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_8
½
gradients_1/Mean_8_grad/MaximumMaximum%gradients_1/Mean_8_grad/DynamicStitch!gradients_1/Mean_8_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_8
µ
 gradients_1/Mean_8_grad/floordivFloorDivgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Maximum*
T0*
_class
loc:@Mean_8*#
_output_shapes
:’’’’’’’’’
¾
gradients_1/Mean_8_grad/ReshapeReshapegradients_1/mul_31_grad/Reshape%gradients_1/Mean_8_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_8*
_output_shapes
:
·
gradients_1/Mean_8_grad/TileTilegradients_1/Mean_8_grad/Reshape gradients_1/Mean_8_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:*
_class
loc:@Mean_8

gradients_1/Mean_8_grad/Shape_2ShapeNeg_2*
_output_shapes
:*
out_type0*
_class
loc:@Mean_8*
T0

gradients_1/Mean_8_grad/Shape_3ShapeMean_8*
out_type0*
_class
loc:@Mean_8*
_output_shapes
:*
T0

gradients_1/Mean_8_grad/ConstConst*
valueB: *
_class
loc:@Mean_8*
_output_shapes
:*
dtype0
½
gradients_1/Mean_8_grad/ProdProdgradients_1/Mean_8_grad/Shape_2gradients_1/Mean_8_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_8

gradients_1/Mean_8_grad/Const_1Const*
valueB: *
_class
loc:@Mean_8*
_output_shapes
:*
dtype0
Į
gradients_1/Mean_8_grad/Prod_1Prodgradients_1/Mean_8_grad/Shape_3gradients_1/Mean_8_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

#gradients_1/Mean_8_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8
­
!gradients_1/Mean_8_grad/Maximum_1Maximumgradients_1/Mean_8_grad/Prod_1#gradients_1/Mean_8_grad/Maximum_1/y*
_class
loc:@Mean_8*
_output_shapes
: *
T0
«
"gradients_1/Mean_8_grad/floordiv_1FloorDivgradients_1/Mean_8_grad/Prod!gradients_1/Mean_8_grad/Maximum_1*
_class
loc:@Mean_8*
_output_shapes
: *
T0

gradients_1/Mean_8_grad/CastCast"gradients_1/Mean_8_grad/floordiv_1*

SrcT0*
_class
loc:@Mean_8*
_output_shapes
: *

DstT0
Æ
gradients_1/Mean_8_grad/truedivRealDivgradients_1/Mean_8_grad/Tilegradients_1/Mean_8_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_8

gradients_1/Neg_2_grad/NegNeggradients_1/Mean_8_grad/truediv*
_class

loc:@Neg_2*#
_output_shapes
:’’’’’’’’’*
T0
|
gradients_1/Sum_5_grad/ShapeShapemul_30*
out_type0*
_class

loc:@Sum_5*
_output_shapes
:*
T0
w
gradients_1/Sum_5_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_5

gradients_1/Sum_5_grad/addAddSum_5/reduction_indicesgradients_1/Sum_5_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_5

gradients_1/Sum_5_grad/modFloorModgradients_1/Sum_5_grad/addgradients_1/Sum_5_grad/Size*
T0*
_class

loc:@Sum_5*
_output_shapes
: 
{
gradients_1/Sum_5_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@Sum_5
~
"gradients_1/Sum_5_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class

loc:@Sum_5
~
"gradients_1/Sum_5_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_5
Ģ
gradients_1/Sum_5_grad/rangeRange"gradients_1/Sum_5_grad/range/startgradients_1/Sum_5_grad/Size"gradients_1/Sum_5_grad/range/delta*

Tidx0*
_output_shapes
:*
_class

loc:@Sum_5
}
!gradients_1/Sum_5_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_5
”
gradients_1/Sum_5_grad/FillFillgradients_1/Sum_5_grad/Shape_1!gradients_1/Sum_5_grad/Fill/value*
T0*
_output_shapes
: *
_class

loc:@Sum_5
ū
$gradients_1/Sum_5_grad/DynamicStitchDynamicStitchgradients_1/Sum_5_grad/rangegradients_1/Sum_5_grad/modgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Fill*
T0*
_class

loc:@Sum_5*
N*#
_output_shapes
:’’’’’’’’’
|
 gradients_1/Sum_5_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_5*
dtype0*
_output_shapes
: 
¹
gradients_1/Sum_5_grad/MaximumMaximum$gradients_1/Sum_5_grad/DynamicStitch gradients_1/Sum_5_grad/Maximum/y*
T0*
_class

loc:@Sum_5*#
_output_shapes
:’’’’’’’’’
Ø
gradients_1/Sum_5_grad/floordivFloorDivgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Maximum*
_class

loc:@Sum_5*
_output_shapes
:*
T0
¶
gradients_1/Sum_5_grad/ReshapeReshapegradients_1/Neg_2_grad/Neg$gradients_1/Sum_5_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_5
Ā
gradients_1/Sum_5_grad/TileTilegradients_1/Sum_5_grad/Reshapegradients_1/Sum_5_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_5

gradients_1/mul_30_grad/ShapeShapeactivation_8_target_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_30

gradients_1/mul_30_grad/Shape_1ShapeLog_2*
_output_shapes
:*
out_type0*
_class
loc:@mul_30*
T0
Ž
-gradients_1/mul_30_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_30_grad/Shapegradients_1/mul_30_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_30*
T0

gradients_1/mul_30_grad/mulMulgradients_1/Sum_5_grad/TileLog_2*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@mul_30*
T0
É
gradients_1/mul_30_grad/SumSumgradients_1/mul_30_grad/mul-gradients_1/mul_30_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_30
Ź
gradients_1/mul_30_grad/ReshapeReshapegradients_1/mul_30_grad/Sumgradients_1/mul_30_grad/Shape*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
Tshape0*
_class
loc:@mul_30
„
gradients_1/mul_30_grad/mul_1Mulactivation_8_target_2gradients_1/Sum_5_grad/Tile*
_class
loc:@mul_30*'
_output_shapes
:’’’’’’’’’
*
T0
Ļ
gradients_1/mul_30_grad/Sum_1Sumgradients_1/mul_30_grad/mul_1/gradients_1/mul_30_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@mul_30*
T0*
	keep_dims( *

Tidx0
Ē
!gradients_1/mul_30_grad/Reshape_1Reshapegradients_1/mul_30_grad/Sum_1gradients_1/mul_30_grad/Shape_1*'
_output_shapes
:’’’’’’’’’
*
Tshape0*
_class
loc:@mul_30*
T0
±
!gradients_1/Log_2_grad/Reciprocal
Reciprocalclip_by_value_10"^gradients_1/mul_30_grad/Reshape_1*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Log_2*
T0
³
gradients_1/Log_2_grad/mulMul!gradients_1/mul_30_grad/Reshape_1!gradients_1/Log_2_grad/Reciprocal*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Log_2*
T0
¤
'gradients_1/clip_by_value_10_grad/ShapeShapeclip_by_value_10/Minimum*
_output_shapes
:*
out_type0*#
_class
loc:@clip_by_value_10*
T0

)gradients_1/clip_by_value_10_grad/Shape_1Const*
valueB *#
_class
loc:@clip_by_value_10*
dtype0*
_output_shapes
: 
Ø
)gradients_1/clip_by_value_10_grad/Shape_2Shapegradients_1/Log_2_grad/mul*
out_type0*#
_class
loc:@clip_by_value_10*
_output_shapes
:*
T0

-gradients_1/clip_by_value_10_grad/zeros/ConstConst*
valueB
 *    *#
_class
loc:@clip_by_value_10*
dtype0*
_output_shapes
: 
ą
'gradients_1/clip_by_value_10_grad/zerosFill)gradients_1/clip_by_value_10_grad/Shape_2-gradients_1/clip_by_value_10_grad/zeros/Const*
T0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’

¹
.gradients_1/clip_by_value_10_grad/GreaterEqualGreaterEqualclip_by_value_10/MinimumConst_32*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_10*
T0

7gradients_1/clip_by_value_10_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_1/clip_by_value_10_grad/Shape)gradients_1/clip_by_value_10_grad/Shape_1*
T0*#
_class
loc:@clip_by_value_10*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ž
(gradients_1/clip_by_value_10_grad/SelectSelect.gradients_1/clip_by_value_10_grad/GreaterEqualgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*
T0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’

ø
,gradients_1/clip_by_value_10_grad/LogicalNot
LogicalNot.gradients_1/clip_by_value_10_grad/GreaterEqual*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_10
ž
*gradients_1/clip_by_value_10_grad/Select_1Select,gradients_1/clip_by_value_10_grad/LogicalNotgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*
T0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’

ō
%gradients_1/clip_by_value_10_grad/SumSum(gradients_1/clip_by_value_10_grad/Select7gradients_1/clip_by_value_10_grad/BroadcastGradientArgs*#
_class
loc:@clip_by_value_10*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
é
)gradients_1/clip_by_value_10_grad/ReshapeReshape%gradients_1/clip_by_value_10_grad/Sum'gradients_1/clip_by_value_10_grad/Shape*
Tshape0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:’’’’’’’’’
*
T0
ś
'gradients_1/clip_by_value_10_grad/Sum_1Sum*gradients_1/clip_by_value_10_grad/Select_19gradients_1/clip_by_value_10_grad/BroadcastGradientArgs:1*#
_class
loc:@clip_by_value_10*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ž
+gradients_1/clip_by_value_10_grad/Reshape_1Reshape'gradients_1/clip_by_value_10_grad/Sum_1)gradients_1/clip_by_value_10_grad/Shape_1*
T0*
Tshape0*#
_class
loc:@clip_by_value_10*
_output_shapes
: 
„
/gradients_1/clip_by_value_10/Minimum_grad/ShapeShape	truediv_8*
T0*
_output_shapes
:*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum
”
1gradients_1/clip_by_value_10/Minimum_grad/Shape_1Const*
valueB *+
_class!
loc:@clip_by_value_10/Minimum*
dtype0*
_output_shapes
: 
Ē
1gradients_1/clip_by_value_10/Minimum_grad/Shape_2Shape)gradients_1/clip_by_value_10_grad/Reshape*
T0*
_output_shapes
:*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum
§
5gradients_1/clip_by_value_10/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *+
_class!
loc:@clip_by_value_10/Minimum

/gradients_1/clip_by_value_10/Minimum_grad/zerosFill1gradients_1/clip_by_value_10/Minimum_grad/Shape_25gradients_1/clip_by_value_10/Minimum_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_10/Minimum*
T0
±
3gradients_1/clip_by_value_10/Minimum_grad/LessEqual	LessEqual	truediv_8sub_6*
T0*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:’’’’’’’’’

¦
?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_1/clip_by_value_10/Minimum_grad/Shape1gradients_1/clip_by_value_10/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*+
_class!
loc:@clip_by_value_10/Minimum*
T0
Ŗ
0gradients_1/clip_by_value_10/Minimum_grad/SelectSelect3gradients_1/clip_by_value_10/Minimum_grad/LessEqual)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_10/Minimum*
T0
Ķ
4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot
LogicalNot3gradients_1/clip_by_value_10/Minimum_grad/LessEqual*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_10/Minimum
­
2gradients_1/clip_by_value_10/Minimum_grad/Select_1Select4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_10/Minimum*
T0

-gradients_1/clip_by_value_10/Minimum_grad/SumSum0gradients_1/clip_by_value_10/Minimum_grad/Select?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

1gradients_1/clip_by_value_10/Minimum_grad/ReshapeReshape-gradients_1/clip_by_value_10/Minimum_grad/Sum/gradients_1/clip_by_value_10/Minimum_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum

/gradients_1/clip_by_value_10/Minimum_grad/Sum_1Sum2gradients_1/clip_by_value_10/Minimum_grad/Select_1Agradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*+
_class!
loc:@clip_by_value_10/Minimum
ž
3gradients_1/clip_by_value_10/Minimum_grad/Reshape_1Reshape/gradients_1/clip_by_value_10/Minimum_grad/Sum_11gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
T0

 gradients_1/truediv_8_grad/ShapeShapeactivation_8_2/Softmax*
T0*
out_type0*
_class
loc:@truediv_8*
_output_shapes
:

"gradients_1/truediv_8_grad/Shape_1ShapeSum_4*
out_type0*
_class
loc:@truediv_8*
_output_shapes
:*
T0
ź
0gradients_1/truediv_8_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_8_grad/Shape"gradients_1/truediv_8_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_8
·
"gradients_1/truediv_8_grad/RealDivRealDiv1gradients_1/clip_by_value_10/Minimum_grad/ReshapeSum_4*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8*
T0
Ł
gradients_1/truediv_8_grad/SumSum"gradients_1/truediv_8_grad/RealDiv0gradients_1/truediv_8_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_8*
T0*
	keep_dims( *

Tidx0
Ķ
"gradients_1/truediv_8_grad/ReshapeReshapegradients_1/truediv_8_grad/Sum gradients_1/truediv_8_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*
_class
loc:@truediv_8

gradients_1/truediv_8_grad/NegNegactivation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8*
T0
¦
$gradients_1/truediv_8_grad/RealDiv_1RealDivgradients_1/truediv_8_grad/NegSum_4*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8*
T0
¬
$gradients_1/truediv_8_grad/RealDiv_2RealDiv$gradients_1/truediv_8_grad/RealDiv_1Sum_4*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8*
T0
Ī
gradients_1/truediv_8_grad/mulMul1gradients_1/clip_by_value_10/Minimum_grad/Reshape$gradients_1/truediv_8_grad/RealDiv_2*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’
*
T0
Ł
 gradients_1/truediv_8_grad/Sum_1Sumgradients_1/truediv_8_grad/mul2gradients_1/truediv_8_grad/BroadcastGradientArgs:1*
_class
loc:@truediv_8*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ó
$gradients_1/truediv_8_grad/Reshape_1Reshape gradients_1/truediv_8_grad/Sum_1"gradients_1/truediv_8_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_8*'
_output_shapes
:’’’’’’’’’

gradients_1/Sum_4_grad/ShapeShapeactivation_8_2/Softmax*
_output_shapes
:*
out_type0*
_class

loc:@Sum_4*
T0
w
gradients_1/Sum_4_grad/SizeConst*
value	B :*
_class

loc:@Sum_4*
dtype0*
_output_shapes
: 

gradients_1/Sum_4_grad/addAddSum_4/reduction_indicesgradients_1/Sum_4_grad/Size*
_class

loc:@Sum_4*
_output_shapes
: *
T0

gradients_1/Sum_4_grad/modFloorModgradients_1/Sum_4_grad/addgradients_1/Sum_4_grad/Size*
_output_shapes
: *
_class

loc:@Sum_4*
T0
{
gradients_1/Sum_4_grad/Shape_1Const*
valueB *
_class

loc:@Sum_4*
dtype0*
_output_shapes
: 
~
"gradients_1/Sum_4_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class

loc:@Sum_4
~
"gradients_1/Sum_4_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4
Ģ
gradients_1/Sum_4_grad/rangeRange"gradients_1/Sum_4_grad/range/startgradients_1/Sum_4_grad/Size"gradients_1/Sum_4_grad/range/delta*
_class

loc:@Sum_4*
_output_shapes
:*

Tidx0
}
!gradients_1/Sum_4_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_4*
dtype0*
_output_shapes
: 
”
gradients_1/Sum_4_grad/FillFillgradients_1/Sum_4_grad/Shape_1!gradients_1/Sum_4_grad/Fill/value*
T0*
_class

loc:@Sum_4*
_output_shapes
: 
ū
$gradients_1/Sum_4_grad/DynamicStitchDynamicStitchgradients_1/Sum_4_grad/rangegradients_1/Sum_4_grad/modgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Fill*#
_output_shapes
:’’’’’’’’’*
N*
_class

loc:@Sum_4*
T0
|
 gradients_1/Sum_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4
¹
gradients_1/Sum_4_grad/MaximumMaximum$gradients_1/Sum_4_grad/DynamicStitch gradients_1/Sum_4_grad/Maximum/y*
_class

loc:@Sum_4*#
_output_shapes
:’’’’’’’’’*
T0
Ø
gradients_1/Sum_4_grad/floordivFloorDivgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Maximum*
_output_shapes
:*
_class

loc:@Sum_4*
T0
Ą
gradients_1/Sum_4_grad/ReshapeReshape$gradients_1/truediv_8_grad/Reshape_1$gradients_1/Sum_4_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_4*
T0
Ā
gradients_1/Sum_4_grad/TileTilegradients_1/Sum_4_grad/Reshapegradients_1/Sum_4_grad/floordiv*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_4*
T0*

Tmultiples0
²
gradients_1/AddNAddN"gradients_1/truediv_8_grad/Reshapegradients_1/Sum_4_grad/Tile*
N*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_8
¹
+gradients_1/activation_8_2/Softmax_grad/mulMulgradients_1/AddNactivation_8_2/Softmax*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
²
=gradients_1/activation_8_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*)
_class
loc:@activation_8_2/Softmax*
_output_shapes
:*
dtype0

+gradients_1/activation_8_2/Softmax_grad/SumSum+gradients_1/activation_8_2/Softmax_grad/mul=gradients_1/activation_8_2/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:’’’’’’’’’*)
_class
loc:@activation_8_2/Softmax*
T0*
	keep_dims( *

Tidx0
±
5gradients_1/activation_8_2/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   *)
_class
loc:@activation_8_2/Softmax

/gradients_1/activation_8_2/Softmax_grad/ReshapeReshape+gradients_1/activation_8_2/Softmax_grad/Sum5gradients_1/activation_8_2/Softmax_grad/Reshape/shape*
Tshape0*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’*
T0
Ņ
+gradients_1/activation_8_2/Softmax_grad/subSubgradients_1/AddN/gradients_1/activation_8_2/Softmax_grad/Reshape*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_2/Softmax*
T0
Ö
-gradients_1/activation_8_2/Softmax_grad/mul_1Mul+gradients_1/activation_8_2/Softmax_grad/subactivation_8_2/Softmax*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_2/Softmax*
T0
ō
(gradients_1/dense_4_2/MatMul_grad/MatMulMatMul-gradients_1/activation_8_2/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_4_2/MatMul*
T0
š
*gradients_1/dense_4_2/MatMul_grad/MatMul_1MatMuldropout_6_2/cond/Merge-gradients_1/activation_8_2/Softmax_grad/mul_1*
transpose_b( *#
_class
loc:@dense_4_2/MatMul*
_output_shapes
:	
*
transpose_a(*
T0
ė
1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_4_2/MatMul_grad/MatMuldropout_6_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_4_2/MatMul*
T0
ø
gradients_1/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_1Shapegradients_1/Switch:1*
T0*
out_type0*%
_class
loc:@activation_7_2/Elu*
_output_shapes
:

gradients_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_7_2/Elu
”
gradients_1/zerosFillgradients_1/Shape_1gradients_1/zeros/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu
č
4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradgradients_1/zeros*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_7_2/Elu
Ą
3gradients_1/dropout_6_2/cond/dropout/mul_grad/ShapeShapedropout_6_2/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:*
T0
Ä
5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1Shapedropout_6_2/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:*
T0
¶
Cgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ń
1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1dropout_6_2/cond/dropout/Floor*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
”
1gradients_1/dropout_6_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulCgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul

5gradients_1/dropout_6_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
ń
3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Muldropout_6_2/cond/dropout/div3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
§
3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:
 
7gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
ø
3gradients_1/dropout_6_2/cond/dropout/div_grad/ShapeShapedropout_6_2/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
©
5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_6_2/cond/dropout/div*
dtype0*
_output_shapes
: 
¶
Cgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
’
5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape"dropout_6_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
1gradients_1/dropout_6_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/div

5gradients_1/dropout_6_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/div_grad/Sum3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div
²
1gradients_1/dropout_6_2/cond/dropout/div_grad/NegNegdropout_6_2/cond/mul*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
ż
7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_6_2/cond/dropout/div_grad/Neg"dropout_6_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0

1gradients_1/dropout_6_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
„
3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_6_2/cond/dropout/div_grad/mulEgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

7gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div
±
+gradients_1/dropout_6_2/cond/mul_grad/ShapeShapedropout_6_2/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_2/cond/mul

-gradients_1/dropout_6_2/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_6_2/cond/mul

;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_6_2/cond/mul_grad/Shape-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_6_2/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
)gradients_1/dropout_6_2/cond/mul_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/div_grad/Reshapedropout_6_2/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_6_2/cond/mul

)gradients_1/dropout_6_2/cond/mul_grad/SumSum)gradients_1/dropout_6_2/cond/mul_grad/mul;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul*
T0*
	keep_dims( *

Tidx0
ś
-gradients_1/dropout_6_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_6_2/cond/mul_grad/Sum+gradients_1/dropout_6_2/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_1/dropout_6_2/cond/mul_grad/mul_1Muldropout_6_2/cond/mul/Switch:15gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_6_2/cond/mul*
T0

+gradients_1/dropout_6_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_6_2/cond/mul_grad/mul_1=gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_1/dropout_6_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_6_2/cond/mul_grad/Sum_1-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*
T0
ŗ
gradients_1/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*%
_class
loc:@activation_7_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients_1/Shape_2Shapegradients_1/Switch_1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_2/Elu*
_output_shapes
: *
dtype0
„
gradients_1/zeros_1Fillgradients_1/Shape_2gradients_1/zeros_1/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_7_2/Elu*
T0
č
6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_6_2/cond/mul_grad/Reshapegradients_1/zeros_1*
T0*%
_class
loc:@activation_7_2/Elu*
N**
_output_shapes
:’’’’’’’’’: 
ė
gradients_1/AddN_1AddN4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:’’’’’’’’’*
N*%
_class
loc:@activation_7_2/Elu*
T0
ø
+gradients_1/activation_7_2/Elu_grad/EluGradEluGradgradients_1/AddN_1activation_7_2/Elu*
T0*%
_class
loc:@activation_7_2/Elu*(
_output_shapes
:’’’’’’’’’
ņ
(gradients_1/dense_3_2/MatMul_grad/MatMulMatMul+gradients_1/activation_7_2/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_3_2/MatMul
ļ
*gradients_1/dense_3_2/MatMul_grad/MatMul_1MatMuldropout_5_2/cond/Merge+gradients_1/activation_7_2/Elu_grad/EluGrad*
transpose_b( *
T0*#
_class
loc:@dense_3_2/MatMul* 
_output_shapes
:
*
transpose_a(
ė
1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_3_2/MatMul_grad/MatMuldropout_5_2/cond/pred_id*#
_class
loc:@dense_3_2/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ŗ
gradients_1/Switch_2Switchactivation_6_2/Eludropout_5_2/cond/pred_id*%
_class
loc:@activation_6_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_1/Shape_3Shapegradients_1/Switch_2:1*
T0*
out_type0*%
_class
loc:@activation_6_2/Elu*
_output_shapes
:

gradients_1/zeros_2/ConstConst*
valueB
 *    *%
_class
loc:@activation_6_2/Elu*
dtype0*
_output_shapes
: 
„
gradients_1/zeros_2Fillgradients_1/Shape_3gradients_1/zeros_2/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu
ź
4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradgradients_1/zeros_2*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_6_2/Elu
Ą
3gradients_1/dropout_5_2/cond/dropout/mul_grad/ShapeShapedropout_5_2/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:
Ä
5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1Shapedropout_5_2/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:*
T0
¶
Cgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
ń
1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1dropout_5_2/cond/dropout/Floor*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
”
1gradients_1/dropout_5_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulCgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:

5gradients_1/dropout_5_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ń
3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Muldropout_5_2/cond/dropout/div3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
§
3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
 
7gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
ø
3gradients_1/dropout_5_2/cond/dropout/div_grad/ShapeShapedropout_5_2/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
©
5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_5_2/cond/dropout/div*
dtype0*
_output_shapes
: 
¶
Cgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
’
5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
„
1gradients_1/dropout_5_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:

5gradients_1/dropout_5_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/div_grad/Sum3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
²
1gradients_1/dropout_5_2/cond/dropout/div_grad/NegNegdropout_5_2/cond/mul*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
ż
7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_5_2/cond/dropout/div_grad/Neg"dropout_5_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1"dropout_5_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div

1gradients_1/dropout_5_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
„
3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_5_2/cond/dropout/div_grad/mulEgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

7gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
±
+gradients_1/dropout_5_2/cond/mul_grad/ShapeShapedropout_5_2/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_2/cond/mul*
T0

-gradients_1/dropout_5_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
: *
dtype0

;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_5_2/cond/mul_grad/Shape-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_5_2/cond/mul*
T0
Ū
)gradients_1/dropout_5_2/cond/mul_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/div_grad/Reshapedropout_5_2/cond/mul/y*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_2/cond/mul*
T0

)gradients_1/dropout_5_2/cond/mul_grad/SumSum)gradients_1/dropout_5_2/cond/mul_grad/mul;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:
ś
-gradients_1/dropout_5_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_5_2/cond/mul_grad/Sum+gradients_1/dropout_5_2/cond/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_5_2/cond/mul
ä
+gradients_1/dropout_5_2/cond/mul_grad/mul_1Muldropout_5_2/cond/mul/Switch:15gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_2/cond/mul*
T0

+gradients_1/dropout_5_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_5_2/cond/mul_grad/mul_1=gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_1/dropout_5_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_5_2/cond/mul_grad/Sum_1-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
: *
T0
ŗ
gradients_1/Switch_3Switchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/Shape_4Shapegradients_1/Switch_3*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_2/Elu
„
gradients_1/zeros_3Fillgradients_1/Shape_4gradients_1/zeros_3/Const*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_2/Elu
č
6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_5_2/cond/mul_grad/Reshapegradients_1/zeros_3*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_6_2/Elu
ė
gradients_1/AddN_2AddN4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
ø
+gradients_1/activation_6_2/Elu_grad/EluGradEluGradgradients_1/AddN_2activation_6_2/Elu*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ņ
(gradients_1/dense_2_2/MatMul_grad/MatMulMatMul+gradients_1/activation_6_2/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_2_2/MatMul*
T0
ļ
*gradients_1/dense_2_2/MatMul_grad/MatMul_1MatMuldropout_4_2/cond/Merge+gradients_1/activation_6_2/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_2/MatMul
ė
1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_2_2/MatMul_grad/MatMuldropout_4_2/cond/pred_id*#
_class
loc:@dense_2_2/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ŗ
gradients_1/Switch_4Switchactivation_5_2/Eludropout_4_2/cond/pred_id*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_1/Shape_5Shapegradients_1/Switch_4:1*
T0*
out_type0*%
_class
loc:@activation_5_2/Elu*
_output_shapes
:

gradients_1/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_2/Elu*
_output_shapes
: *
dtype0
„
gradients_1/zeros_4Fillgradients_1/Shape_5gradients_1/zeros_4/Const*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ź
4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradgradients_1/zeros_4*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_5_2/Elu
Ą
3gradients_1/dropout_4_2/cond/dropout/mul_grad/ShapeShapedropout_4_2/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul
Ä
5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1Shapedropout_4_2/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0
¶
Cgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ń
1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1dropout_4_2/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
”
1gradients_1/dropout_4_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulCgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ń
3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Muldropout_4_2/cond/dropout/div3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
§
3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
 
7gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
ø
3gradients_1/dropout_4_2/cond/dropout/div_grad/ShapeShapedropout_4_2/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
©
5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_4_2/cond/dropout/div*
dtype0*
_output_shapes
: 
¶
Cgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
’
5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape"dropout_4_2/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0
„
1gradients_1/dropout_4_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/div

5gradients_1/dropout_4_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/div_grad/Sum3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
²
1gradients_1/dropout_4_2/cond/dropout/div_grad/NegNegdropout_4_2/cond/mul*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ż
7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_4_2/cond/dropout/div_grad/Neg"dropout_4_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1"dropout_4_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

1gradients_1/dropout_4_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
„
3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_4_2/cond/dropout/div_grad/mulEgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

7gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0
±
+gradients_1/dropout_4_2/cond/mul_grad/ShapeShapedropout_4_2/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_2/cond/mul*
T0

-gradients_1/dropout_4_2/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_4_2/cond/mul

;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_4_2/cond/mul_grad/Shape-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_4_2/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
)gradients_1/dropout_4_2/cond/mul_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/div_grad/Reshapedropout_4_2/cond/mul/y*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

)gradients_1/dropout_4_2/cond/mul_grad/SumSum)gradients_1/dropout_4_2/cond/mul_grad/mul;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
:
ś
-gradients_1/dropout_4_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_4_2/cond/mul_grad/Sum+gradients_1/dropout_4_2/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_1/dropout_4_2/cond/mul_grad/mul_1Muldropout_4_2/cond/mul/Switch:15gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

+gradients_1/dropout_4_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_4_2/cond/mul_grad/mul_1=gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_4_2/cond/mul
ī
/gradients_1/dropout_4_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_4_2/cond/mul_grad/Sum_1-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*
T0
ŗ
gradients_1/Switch_5Switchactivation_5_2/Eludropout_4_2/cond/pred_id*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_1/Shape_6Shapegradients_1/Switch_5*
T0*
out_type0*%
_class
loc:@activation_5_2/Elu*
_output_shapes
:

gradients_1/zeros_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_5_2/Elu
„
gradients_1/zeros_5Fillgradients_1/Shape_6gradients_1/zeros_5/Const*
T0*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’
č
6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_4_2/cond/mul_grad/Reshapegradients_1/zeros_5**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_5_2/Elu*
T0
ė
gradients_1/AddN_3AddN4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
ø
+gradients_1/activation_5_2/Elu_grad/EluGradEluGradgradients_1/AddN_3activation_5_2/Elu*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ņ
(gradients_1/dense_1_2/MatMul_grad/MatMulMatMul+gradients_1/activation_5_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*#
_class
loc:@dense_1_2/MatMul*(
_output_shapes
:’’’’’’’’’$*
transpose_a( *
T0
ģ
*gradients_1/dense_1_2/MatMul_grad/MatMul_1MatMulflatten_1_2/Reshape+gradients_1/activation_5_2/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
$*
transpose_a(*#
_class
loc:@dense_1_2/MatMul*
T0
a
Const_36Const*
dtype0* 
_output_shapes
:
$*
valueB
$*    


Variable_8
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
¤
Variable_8/AssignAssign
Variable_8Const_36*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_8
q
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8* 
_output_shapes
:
$
a
Const_37Const* 
_output_shapes
:
*
dtype0*
valueB
*    


Variable_9
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
¤
Variable_9/AssignAssign
Variable_9Const_37*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_9
q
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9* 
_output_shapes
:

a
Const_38Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_10
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

§
Variable_10/AssignAssignVariable_10Const_38*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_10
t
Variable_10/readIdentityVariable_10*
T0* 
_output_shapes
:
*
_class
loc:@Variable_10
_
Const_39Const*
dtype0*
_output_shapes
:	
*
valueB	
*    

Variable_11
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
¦
Variable_11/AssignAssignVariable_11Const_39*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes
:	

s
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11*
_output_shapes
:	

a
Const_40Const*
dtype0* 
_output_shapes
:
$*
valueB
$*    

Variable_12
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
§
Variable_12/AssignAssignVariable_12Const_40*
_class
loc:@Variable_12* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
t
Variable_12/readIdentityVariable_12*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_12
a
Const_41Const* 
_output_shapes
:
*
dtype0*
valueB
*    

Variable_13
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
§
Variable_13/AssignAssignVariable_13Const_41*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(* 
_output_shapes
:

t
Variable_13/readIdentityVariable_13* 
_output_shapes
:
*
_class
loc:@Variable_13*
T0
a
Const_42Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_14
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
§
Variable_14/AssignAssignVariable_14Const_42*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_14
t
Variable_14/readIdentityVariable_14*
_class
loc:@Variable_14* 
_output_shapes
:
*
T0
_
Const_43Const*
_output_shapes
:	
*
dtype0*
valueB	
*    

Variable_15
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
¦
Variable_15/AssignAssignVariable_15Const_43*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(*
_output_shapes
:	

s
Variable_15/readIdentityVariable_15*
_class
loc:@Variable_15*
_output_shapes
:	
*
T0
M
mul_33/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_33Mulmul_33/xVariable_8/read* 
_output_shapes
:
$*
T0
i
Square_8Square*gradients_1/dense_1_2/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
M
mul_34/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
L
mul_34Mulmul_34/xSquare_8* 
_output_shapes
:
$*
T0
H
add_16Addmul_33mul_34*
T0* 
_output_shapes
:
$

	Assign_20Assign
Variable_8add_16* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_8*
T0*
use_locking(
M
add_17/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
T
add_17AddVariable_12/readadd_17/y* 
_output_shapes
:
$*
T0
M
Const_44Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_45Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_11/MinimumMinimumadd_17Const_45* 
_output_shapes
:
$*
T0
j
clip_by_value_11Maximumclip_by_value_11/MinimumConst_44* 
_output_shapes
:
$*
T0
K
Sqrt_8Sqrtclip_by_value_11*
T0* 
_output_shapes
:
$
l
mul_35Mul*gradients_1/dense_1_2/MatMul_grad/MatMul_1Sqrt_8*
T0* 
_output_shapes
:
$
M
add_18/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
J
add_18Addadd_16add_18/y*
T0* 
_output_shapes
:
$
M
Const_46Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_47Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_12/MinimumMinimumadd_18Const_47*
T0* 
_output_shapes
:
$
j
clip_by_value_12Maximumclip_by_value_12/MinimumConst_46* 
_output_shapes
:
$*
T0
K
Sqrt_9Sqrtclip_by_value_12* 
_output_shapes
:
$*
T0
P

truediv_10RealDivmul_35Sqrt_9* 
_output_shapes
:
$*
T0
O
mul_36Mul	lr_2/read
truediv_10*
T0* 
_output_shapes
:
$
T
sub_7Subdense_1/kernel/readmul_36* 
_output_shapes
:
$*
T0
”
	Assign_21Assigndense_1/kernelsub_7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
M
mul_37/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
T
mul_37Mulmul_37/xVariable_12/read* 
_output_shapes
:
$*
T0
I
Square_9Square
truediv_10* 
_output_shapes
:
$*
T0
M
mul_38/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_38Mulmul_38/xSquare_9* 
_output_shapes
:
$*
T0
H
add_19Addmul_37mul_38* 
_output_shapes
:
$*
T0

	Assign_22AssignVariable_12add_19*
_class
loc:@Variable_12* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_39/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_39Mulmul_39/xVariable_9/read* 
_output_shapes
:
*
T0
j
	Square_10Square*gradients_1/dense_2_2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_40/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
M
mul_40Mulmul_40/x	Square_10* 
_output_shapes
:
*
T0
H
add_20Addmul_39mul_40* 
_output_shapes
:
*
T0

	Assign_23Assign
Variable_9add_20*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_9
M
add_21/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
T
add_21AddVariable_13/readadd_21/y*
T0* 
_output_shapes
:

M
Const_48Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_49Const*
dtype0*
_output_shapes
: *
valueB
 *  
`
clip_by_value_13/MinimumMinimumadd_21Const_49*
T0* 
_output_shapes
:

j
clip_by_value_13Maximumclip_by_value_13/MinimumConst_48* 
_output_shapes
:
*
T0
L
Sqrt_10Sqrtclip_by_value_13*
T0* 
_output_shapes
:

m
mul_41Mul*gradients_1/dense_2_2/MatMul_grad/MatMul_1Sqrt_10* 
_output_shapes
:
*
T0
M
add_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *wĢ+2
J
add_22Addadd_20add_22/y* 
_output_shapes
:
*
T0
M
Const_50Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_51Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_14/MinimumMinimumadd_22Const_51*
T0* 
_output_shapes
:

j
clip_by_value_14Maximumclip_by_value_14/MinimumConst_50* 
_output_shapes
:
*
T0
L
Sqrt_11Sqrtclip_by_value_14* 
_output_shapes
:
*
T0
Q

truediv_11RealDivmul_41Sqrt_11*
T0* 
_output_shapes
:

O
mul_42Mul	lr_2/read
truediv_11* 
_output_shapes
:
*
T0
T
sub_8Subdense_2/kernel/readmul_42*
T0* 
_output_shapes
:

”
	Assign_24Assigndense_2/kernelsub_8* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_2/kernel*
T0*
use_locking(
M
mul_43/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_43Mulmul_43/xVariable_13/read*
T0* 
_output_shapes
:

J
	Square_11Square
truediv_11*
T0* 
_output_shapes
:

M
mul_44/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_44Mulmul_44/x	Square_11*
T0* 
_output_shapes
:

H
add_23Addmul_43mul_44* 
_output_shapes
:
*
T0

	Assign_25AssignVariable_13add_23*
_class
loc:@Variable_13* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_45/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_45Mulmul_45/xVariable_10/read* 
_output_shapes
:
*
T0
j
	Square_12Square*gradients_1/dense_3_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_46/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_46Mulmul_46/x	Square_12* 
_output_shapes
:
*
T0
H
add_24Addmul_45mul_46*
T0* 
_output_shapes
:


	Assign_26AssignVariable_10add_24*
_class
loc:@Variable_10* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
add_25/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_25AddVariable_14/readadd_25/y*
T0* 
_output_shapes
:

M
Const_52Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_53Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_15/MinimumMinimumadd_25Const_53*
T0* 
_output_shapes
:

j
clip_by_value_15Maximumclip_by_value_15/MinimumConst_52*
T0* 
_output_shapes
:

L
Sqrt_12Sqrtclip_by_value_15* 
_output_shapes
:
*
T0
m
mul_47Mul*gradients_1/dense_3_2/MatMul_grad/MatMul_1Sqrt_12*
T0* 
_output_shapes
:

M
add_26/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
J
add_26Addadd_24add_26/y* 
_output_shapes
:
*
T0
M
Const_54Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_55Const*
dtype0*
_output_shapes
: *
valueB
 *  
`
clip_by_value_16/MinimumMinimumadd_26Const_55* 
_output_shapes
:
*
T0
j
clip_by_value_16Maximumclip_by_value_16/MinimumConst_54*
T0* 
_output_shapes
:

L
Sqrt_13Sqrtclip_by_value_16* 
_output_shapes
:
*
T0
Q

truediv_12RealDivmul_47Sqrt_13* 
_output_shapes
:
*
T0
O
mul_48Mul	lr_2/read
truediv_12*
T0* 
_output_shapes
:

T
sub_9Subdense_3/kernel/readmul_48* 
_output_shapes
:
*
T0
”
	Assign_27Assigndense_3/kernelsub_9*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:

M
mul_49/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
T
mul_49Mulmul_49/xVariable_14/read*
T0* 
_output_shapes
:

J
	Square_13Square
truediv_12* 
_output_shapes
:
*
T0
M
mul_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
M
mul_50Mulmul_50/x	Square_13* 
_output_shapes
:
*
T0
H
add_27Addmul_49mul_50* 
_output_shapes
:
*
T0

	Assign_28AssignVariable_14add_27*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_14
M
mul_51/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_51Mulmul_51/xVariable_11/read*
_output_shapes
:	
*
T0
i
	Square_14Square*gradients_1/dense_4_2/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_52/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
L
mul_52Mulmul_52/x	Square_14*
_output_shapes
:	
*
T0
G
add_28Addmul_51mul_52*
_output_shapes
:	
*
T0

	Assign_29AssignVariable_11add_28*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_11
M
add_29/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
S
add_29AddVariable_15/readadd_29/y*
_output_shapes
:	
*
T0
M
Const_56Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_57Const*
valueB
 *  *
dtype0*
_output_shapes
: 
_
clip_by_value_17/MinimumMinimumadd_29Const_57*
_output_shapes
:	
*
T0
i
clip_by_value_17Maximumclip_by_value_17/MinimumConst_56*
_output_shapes
:	
*
T0
K
Sqrt_14Sqrtclip_by_value_17*
_output_shapes
:	
*
T0
l
mul_53Mul*gradients_1/dense_4_2/MatMul_grad/MatMul_1Sqrt_14*
T0*
_output_shapes
:	

M
add_30/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
I
add_30Addadd_28add_30/y*
_output_shapes
:	
*
T0
M
Const_58Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_59Const*
valueB
 *  *
dtype0*
_output_shapes
: 
_
clip_by_value_18/MinimumMinimumadd_30Const_59*
T0*
_output_shapes
:	

i
clip_by_value_18Maximumclip_by_value_18/MinimumConst_58*
T0*
_output_shapes
:	

K
Sqrt_15Sqrtclip_by_value_18*
T0*
_output_shapes
:	

P

truediv_13RealDivmul_53Sqrt_15*
T0*
_output_shapes
:	

N
mul_54Mul	lr_2/read
truediv_13*
_output_shapes
:	
*
T0
T
sub_10Subdense_4/kernel/readmul_54*
T0*
_output_shapes
:	

”
	Assign_30Assigndense_4/kernelsub_10*
_output_shapes
:	
*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
M
mul_55/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_55Mulmul_55/xVariable_15/read*
T0*
_output_shapes
:	

I
	Square_15Square
truediv_13*
T0*
_output_shapes
:	

M
mul_56/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
L
mul_56Mulmul_56/x	Square_15*
_output_shapes
:	
*
T0
G
add_31Addmul_55mul_56*
_output_shapes
:	
*
T0

	Assign_31AssignVariable_15add_31*
_class
loc:@Variable_15*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
·
group_deps_3NoOp^mul_32^Mean_11
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
“
init_3NoOp^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign
i
activation_1_3/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@
r
conv2d_2_3/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2_3/transpose	Transposeactivation_1_3/Eluconv2d_2_3/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_2_3/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_2_3/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ž
conv2d_2_3/convolutionConv2Dconv2d_2_3/transposeconv2d_2/kernel/read*/
_output_shapes
:’’’’’’’’’@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
t
conv2d_2_3/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_2_3/transpose_1	Transposeconv2d_2_3/convolutionconv2d_2_3/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
k
activation_2_3/EluEluconv2d_2_3/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_1_3/cond/switch_tIdentitydropout_1_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_1_3/cond/switch_fIdentitydropout_1_3/cond/Switch*
_output_shapes
:*
T0

g
dropout_1_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_1_3/cond/mul/yConst^dropout_1_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ļ
dropout_1_3/cond/mul/SwitchSwitchactivation_2_3/Eludropout_1_3/cond/pred_id*%
_class
loc:@activation_2_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_1_3/cond/mulMuldropout_1_3/cond/mul/Switch:1dropout_1_3/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_1_3/cond/dropout/keep_probConst^dropout_1_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_1_3/cond/dropout/ShapeShapedropout_1_3/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_1_3/cond/dropout/random_uniform/minConst^dropout_1_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_1_3/cond/dropout/random_uniform/maxConst^dropout_1_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ģ
5dropout_1_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_3/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Š*
dtype0*
T0*
seed±’å)
­
+dropout_1_3/cond/dropout/random_uniform/subSub+dropout_1_3/cond/dropout/random_uniform/max+dropout_1_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_1_3/cond/dropout/random_uniform/mulMul5dropout_1_3/cond/dropout/random_uniform/RandomUniform+dropout_1_3/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@
Ā
'dropout_1_3/cond/dropout/random_uniformAdd+dropout_1_3/cond/dropout/random_uniform/mul+dropout_1_3/cond/dropout/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
Ŗ
dropout_1_3/cond/dropout/addAdd"dropout_1_3/cond/dropout/keep_prob'dropout_1_3/cond/dropout/random_uniform*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1_3/cond/dropout/FloorFloordropout_1_3/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_3/cond/dropout/divRealDivdropout_1_3/cond/mul"dropout_1_3/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_1_3/cond/dropout/mulMuldropout_1_3/cond/dropout/divdropout_1_3/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_1_3/cond/Switch_1Switchactivation_2_3/Eludropout_1_3/cond/pred_id*%
_class
loc:@activation_2_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*
T0

dropout_1_3/cond/MergeMergedropout_1_3/cond/Switch_1dropout_1_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
N*
T0
r
conv2d_3_3/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_3/transpose	Transposedropout_1_3/cond/Mergeconv2d_3_3/transpose/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’@
u
conv2d_3_3/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_3_3/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ž
conv2d_3_3/convolutionConv2Dconv2d_3_3/transposeconv2d_3/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:’’’’’’’’’@*
data_formatNHWC*
strides

t
conv2d_3_3/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_3_3/transpose_1	Transposeconv2d_3_3/convolutionconv2d_3_3/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
k
activation_3_3/EluEluconv2d_3_3/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_2_3/cond/switch_tIdentitydropout_2_3/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_2_3/cond/switch_fIdentitydropout_2_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_2_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_2_3/cond/mul/yConst^dropout_2_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ļ
dropout_2_3/cond/mul/SwitchSwitchactivation_3_3/Eludropout_2_3/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@*%
_class
loc:@activation_3_3/Elu

dropout_2_3/cond/mulMuldropout_2_3/cond/mul/Switch:1dropout_2_3/cond/mul/y*/
_output_shapes
:’’’’’’’’’@*
T0

"dropout_2_3/cond/dropout/keep_probConst^dropout_2_3/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_2_3/cond/dropout/ShapeShapedropout_2_3/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_2_3/cond/dropout/random_uniform/minConst^dropout_2_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_2_3/cond/dropout/random_uniform/maxConst^dropout_2_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ģ
5dropout_2_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_3/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’@*
seed2Ųå*
dtype0*
T0*
seed±’å)
­
+dropout_2_3/cond/dropout/random_uniform/subSub+dropout_2_3/cond/dropout/random_uniform/max+dropout_2_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Š
+dropout_2_3/cond/dropout/random_uniform/mulMul5dropout_2_3/cond/dropout/random_uniform/RandomUniform+dropout_2_3/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’@*
T0
Ā
'dropout_2_3/cond/dropout/random_uniformAdd+dropout_2_3/cond/dropout/random_uniform/mul+dropout_2_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
Ŗ
dropout_2_3/cond/dropout/addAdd"dropout_2_3/cond/dropout/keep_prob'dropout_2_3/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_3/cond/dropout/FloorFloordropout_2_3/cond/dropout/add*/
_output_shapes
:’’’’’’’’’@*
T0

dropout_2_3/cond/dropout/divRealDivdropout_2_3/cond/mul"dropout_2_3/cond/dropout/keep_prob*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_2_3/cond/dropout/mulMuldropout_2_3/cond/dropout/divdropout_2_3/cond/dropout/Floor*/
_output_shapes
:’’’’’’’’’@*
T0
Ķ
dropout_2_3/cond/Switch_1Switchactivation_3_3/Eludropout_2_3/cond/pred_id*
T0*%
_class
loc:@activation_3_3/Elu*J
_output_shapes8
6:’’’’’’’’’@:’’’’’’’’’@

dropout_2_3/cond/MergeMergedropout_2_3/cond/Switch_1dropout_2_3/cond/dropout/mul*1
_output_shapes
:’’’’’’’’’@: *
T0*
N
r
conv2d_4_3/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4_3/transpose	Transposedropout_2_3/cond/Mergeconv2d_4_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’@*
T0
u
conv2d_4_3/convolution/ShapeConst*%
valueB"      @       *
dtype0*
_output_shapes
:
u
$conv2d_4_3/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ž
conv2d_4_3/convolutionConv2Dconv2d_4_3/transposeconv2d_4/kernel/read*/
_output_shapes
:’’’’’’’’’ *
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID
t
conv2d_4_3/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_3/transpose_1	Transposeconv2d_4_3/convolutionconv2d_4_3/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:’’’’’’’’’ 
k
activation_4_3/EluEluconv2d_4_3/transpose_1*
T0*/
_output_shapes
:’’’’’’’’’ 
y
 max_pooling2d_1_3/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
„
max_pooling2d_1_3/transpose	Transposeactivation_4_3/Elu max_pooling2d_1_3/transpose/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0
Ī
max_pooling2d_1_3/MaxPoolMaxPoolmax_pooling2d_1_3/transpose*
paddingVALID*
data_formatNHWC*
strides
*
T0*/
_output_shapes
:’’’’’’’’’ *
ksize

{
"max_pooling2d_1_3/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
°
max_pooling2d_1_3/transpose_1	Transposemax_pooling2d_1_3/MaxPool"max_pooling2d_1_3/transpose_1/perm*
Tperm0*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_3_3/cond/switch_tIdentitydropout_3_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_3_3/cond/switch_fIdentitydropout_3_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_3_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_3_3/cond/mul/yConst^dropout_3_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
å
dropout_3_3/cond/mul/SwitchSwitchmax_pooling2d_1_3/transpose_1dropout_3_3/cond/pred_id*
T0*0
_class&
$"loc:@max_pooling2d_1_3/transpose_1*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ 

dropout_3_3/cond/mulMuldropout_3_3/cond/mul/Switch:1dropout_3_3/cond/mul/y*/
_output_shapes
:’’’’’’’’’ *
T0

"dropout_3_3/cond/dropout/keep_probConst^dropout_3_3/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_3_3/cond/dropout/ShapeShapedropout_3_3/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_3_3/cond/dropout/random_uniform/minConst^dropout_3_3/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_3_3/cond/dropout/random_uniform/maxConst^dropout_3_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ģ
5dropout_3_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_3/cond/dropout/Shape*/
_output_shapes
:’’’’’’’’’ *
seed2ģųė*
T0*
seed±’å)*
dtype0
­
+dropout_3_3/cond/dropout/random_uniform/subSub+dropout_3_3/cond/dropout/random_uniform/max+dropout_3_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Š
+dropout_3_3/cond/dropout/random_uniform/mulMul5dropout_3_3/cond/dropout/random_uniform/RandomUniform+dropout_3_3/cond/dropout/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0
Ā
'dropout_3_3/cond/dropout/random_uniformAdd+dropout_3_3/cond/dropout/random_uniform/mul+dropout_3_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’ 
Ŗ
dropout_3_3/cond/dropout/addAdd"dropout_3_3/cond/dropout/keep_prob'dropout_3_3/cond/dropout/random_uniform*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/dropout/FloorFloordropout_3_3/cond/dropout/add*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/dropout/divRealDivdropout_3_3/cond/mul"dropout_3_3/cond/dropout/keep_prob*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_3_3/cond/dropout/mulMuldropout_3_3/cond/dropout/divdropout_3_3/cond/dropout/Floor*
T0*/
_output_shapes
:’’’’’’’’’ 
ć
dropout_3_3/cond/Switch_1Switchmax_pooling2d_1_3/transpose_1dropout_3_3/cond/pred_id*
T0*J
_output_shapes8
6:’’’’’’’’’ :’’’’’’’’’ *0
_class&
$"loc:@max_pooling2d_1_3/transpose_1

dropout_3_3/cond/MergeMergedropout_3_3/cond/Switch_1dropout_3_3/cond/dropout/mul*
T0*
N*1
_output_shapes
:’’’’’’’’’ : 
g
flatten_1_3/ShapeShapedropout_3_3/cond/Merge*
T0*
out_type0*
_output_shapes
:
i
flatten_1_3/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
k
!flatten_1_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
k
!flatten_1_3/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¹
flatten_1_3/strided_sliceStridedSliceflatten_1_3/Shapeflatten_1_3/strided_slice/stack!flatten_1_3/strided_slice/stack_1!flatten_1_3/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
_output_shapes
:*
end_mask*
Index0*
T0*
shrink_axis_mask *
new_axis_mask 
[
flatten_1_3/ConstConst*
valueB: *
_output_shapes
:*
dtype0

flatten_1_3/ProdProdflatten_1_3/strided_sliceflatten_1_3/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
^
flatten_1_3/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
z
flatten_1_3/stackPackflatten_1_3/stack/0flatten_1_3/Prod*
_output_shapes
:*
N*

axis *
T0

flatten_1_3/ReshapeReshapedropout_3_3/cond/Mergeflatten_1_3/stack*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

dense_1_3/MatMulMatMulflatten_1_3/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_5_3/EluEludense_1_3/MatMul*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_3/cond/switch_tIdentitydropout_4_3/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_4_3/cond/switch_fIdentitydropout_4_3/cond/Switch*
T0
*
_output_shapes
:
g
dropout_4_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_4_3/cond/mul/yConst^dropout_4_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_4_3/cond/mul/SwitchSwitchactivation_5_3/Eludropout_4_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu

dropout_4_3/cond/mulMuldropout_4_3/cond/mul/Switch:1dropout_4_3/cond/mul/y*
T0*(
_output_shapes
:’’’’’’’’’

"dropout_4_3/cond/dropout/keep_probConst^dropout_4_3/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_4_3/cond/dropout/ShapeShapedropout_4_3/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_3/cond/dropout/random_uniform/minConst^dropout_4_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_4_3/cond/dropout/random_uniform/maxConst^dropout_4_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Å
5dropout_4_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_3/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2æŁ*
T0*
seed±’å)*
dtype0
­
+dropout_4_3/cond/dropout/random_uniform/subSub+dropout_4_3/cond/dropout/random_uniform/max+dropout_4_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_4_3/cond/dropout/random_uniform/mulMul5dropout_4_3/cond/dropout/random_uniform/RandomUniform+dropout_4_3/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_4_3/cond/dropout/random_uniformAdd+dropout_4_3/cond/dropout/random_uniform/mul+dropout_4_3/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’
£
dropout_4_3/cond/dropout/addAdd"dropout_4_3/cond/dropout/keep_prob'dropout_4_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_4_3/cond/dropout/FloorFloordropout_4_3/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4_3/cond/dropout/divRealDivdropout_4_3/cond/mul"dropout_4_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4_3/cond/dropout/mulMuldropout_4_3/cond/dropout/divdropout_4_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_4_3/cond/Switch_1Switchactivation_5_3/Eludropout_4_3/cond/pred_id*%
_class
loc:@activation_5_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_4_3/cond/MergeMergedropout_4_3/cond/Switch_1dropout_4_3/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
N*
T0
 
dense_2_3/MatMulMatMuldropout_4_3/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_6_3/EluEludense_2_3/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_5_3/cond/switch_tIdentitydropout_5_3/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_5_3/cond/switch_fIdentitydropout_5_3/cond/Switch*
_output_shapes
:*
T0

g
dropout_5_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_5_3/cond/mul/yConst^dropout_5_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Į
dropout_5_3/cond/mul/SwitchSwitchactivation_6_3/Eludropout_5_3/cond/pred_id*%
_class
loc:@activation_6_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5_3/cond/mulMuldropout_5_3/cond/mul/Switch:1dropout_5_3/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_5_3/cond/dropout/keep_probConst^dropout_5_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_5_3/cond/dropout/ShapeShapedropout_5_3/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_5_3/cond/dropout/random_uniform/minConst^dropout_5_3/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_5_3/cond/dropout/random_uniform/maxConst^dropout_5_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Å
5dropout_5_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_3/cond/dropout/Shape*
dtype0*
seed±’å)*
T0*(
_output_shapes
:’’’’’’’’’*
seed2Į
­
+dropout_5_3/cond/dropout/random_uniform/subSub+dropout_5_3/cond/dropout/random_uniform/max+dropout_5_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
É
+dropout_5_3/cond/dropout/random_uniform/mulMul5dropout_5_3/cond/dropout/random_uniform/RandomUniform+dropout_5_3/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_5_3/cond/dropout/random_uniformAdd+dropout_5_3/cond/dropout/random_uniform/mul+dropout_5_3/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_5_3/cond/dropout/addAdd"dropout_5_3/cond/dropout/keep_prob'dropout_5_3/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
x
dropout_5_3/cond/dropout/FloorFloordropout_5_3/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5_3/cond/dropout/divRealDivdropout_5_3/cond/mul"dropout_5_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5_3/cond/dropout/mulMuldropout_5_3/cond/dropout/divdropout_5_3/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
æ
dropout_5_3/cond/Switch_1Switchactivation_6_3/Eludropout_5_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu*
T0

dropout_5_3/cond/MergeMergedropout_5_3/cond/Switch_1dropout_5_3/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
 
dense_3_3/MatMulMatMuldropout_5_3/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
^
activation_7_3/EluEludense_3_3/MatMul*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_6_3/cond/switch_tIdentitydropout_6_3/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_6_3/cond/switch_fIdentitydropout_6_3/cond/Switch*
_output_shapes
:*
T0

g
dropout_6_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_6_3/cond/mul/yConst^dropout_6_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Į
dropout_6_3/cond/mul/SwitchSwitchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*%
_class
loc:@activation_7_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6_3/cond/mulMuldropout_6_3/cond/mul/Switch:1dropout_6_3/cond/mul/y*(
_output_shapes
:’’’’’’’’’*
T0

"dropout_6_3/cond/dropout/keep_probConst^dropout_6_3/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_6_3/cond/dropout/ShapeShapedropout_6_3/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_6_3/cond/dropout/random_uniform/minConst^dropout_6_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_6_3/cond/dropout/random_uniform/maxConst^dropout_6_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ä
5dropout_6_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_3/cond/dropout/Shape*(
_output_shapes
:’’’’’’’’’*
seed2ų`*
T0*
seed±’å)*
dtype0
­
+dropout_6_3/cond/dropout/random_uniform/subSub+dropout_6_3/cond/dropout/random_uniform/max+dropout_6_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
É
+dropout_6_3/cond/dropout/random_uniform/mulMul5dropout_6_3/cond/dropout/random_uniform/RandomUniform+dropout_6_3/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
»
'dropout_6_3/cond/dropout/random_uniformAdd+dropout_6_3/cond/dropout/random_uniform/mul+dropout_6_3/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0
£
dropout_6_3/cond/dropout/addAdd"dropout_6_3/cond/dropout/keep_prob'dropout_6_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
x
dropout_6_3/cond/dropout/FloorFloordropout_6_3/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6_3/cond/dropout/divRealDivdropout_6_3/cond/mul"dropout_6_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6_3/cond/dropout/mulMuldropout_6_3/cond/dropout/divdropout_6_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
æ
dropout_6_3/cond/Switch_1Switchactivation_7_3/Eludropout_6_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu*
T0

dropout_6_3/cond/MergeMergedropout_6_3/cond/Switch_1dropout_6_3/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 

dense_4_3/MatMulMatMuldropout_6_3/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
T0
e
activation_8_3/SoftmaxSoftmaxdense_4_3/MatMul*'
_output_shapes
:’’’’’’’’’
*
T0
W
lr_3/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
h
lr_3
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

lr_3/AssignAssignlr_3lr_3/initial_value*
_output_shapes
: *
validate_shape(*
_class
	loc:@lr_3*
T0*
use_locking(
U
	lr_3/readIdentitylr_3*
_output_shapes
: *
_class
	loc:@lr_3*
T0
Z
decay_3/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
decay_3
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

decay_3/AssignAssigndecay_3decay_3/initial_value*
use_locking(*
T0*
_class
loc:@decay_3*
validate_shape(*
_output_shapes
: 
^
decay_3/readIdentitydecay_3*
T0*
_class
loc:@decay_3*
_output_shapes
: 
_
iterations_3/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
iterations_3
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
²
iterations_3/AssignAssigniterations_3iterations_3/initial_value*
use_locking(*
T0*
_class
loc:@iterations_3*
validate_shape(*
_output_shapes
: 
m
iterations_3/readIdentityiterations_3*
T0*
_class
loc:@iterations_3*
_output_shapes
: 
x
activation_8_sample_weights_3Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’

activation_8_target_3Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Y
Sum_6/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Sum_6Sumactivation_8_3/SoftmaxSum_6/reduction_indices*'
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims(
f

truediv_14RealDivactivation_8_3/SoftmaxSum_6*'
_output_shapes
:’’’’’’’’’
*
T0
M
Const_60Const*
valueB
 *æÖ3*
_output_shapes
: *
dtype0
M
sub_11/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
B
sub_11Subsub_11/xConst_60*
_output_shapes
: *
T0
i
clip_by_value_19/MinimumMinimum
truediv_14sub_11*'
_output_shapes
:’’’’’’’’’
*
T0
q
clip_by_value_19Maximumclip_by_value_19/MinimumConst_60*'
_output_shapes
:’’’’’’’’’
*
T0
P
Log_3Logclip_by_value_19*
T0*'
_output_shapes
:’’’’’’’’’

]
mul_57Mulactivation_8_target_3Log_3*'
_output_shapes
:’’’’’’’’’
*
T0
Y
Sum_7/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
x
Sum_7Summul_57Sum_7/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:’’’’’’’’’
A
Neg_3NegSum_7*#
_output_shapes
:’’’’’’’’’*
T0
\
Mean_12/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
|
Mean_12MeanNeg_3Mean_12/reduction_indices*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0*
	keep_dims( 
c
mul_58MulMean_12activation_8_sample_weights_3*
T0*#
_output_shapes
:’’’’’’’’’
Q
NotEqual_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
q

NotEqual_3NotEqualactivation_8_sample_weights_3NotEqual_3/y*#
_output_shapes
:’’’’’’’’’*
T0
W
Cast_6Cast
NotEqual_3*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_61Const*
_output_shapes
:*
dtype0*
valueB: 
_
Mean_13MeanCast_6Const_61*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
T

truediv_15RealDivmul_58Mean_13*#
_output_shapes
:’’’’’’’’’*
T0
R
Const_62Const*
valueB: *
dtype0*
_output_shapes
:
c
Mean_14Mean
truediv_15Const_62*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_59/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
A
mul_59Mulmul_59/xMean_14*
T0*
_output_shapes
: 
T
ArgMax_6/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
w
ArgMax_6ArgMaxactivation_8_target_3ArgMax_6/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
T
ArgMax_7/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMax_7ArgMaxactivation_8_3/SoftmaxArgMax_7/dimension*#
_output_shapes
:’’’’’’’’’*
T0*

Tidx0
R
Equal_3EqualArgMax_6ArgMax_7*
T0	*#
_output_shapes
:’’’’’’’’’
T
Cast_7CastEqual_3*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

R
Const_63Const*
valueB: *
dtype0*
_output_shapes
:
_
Mean_15MeanCast_7Const_63*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
C
init_4NoOp^lr_3/Assign^decay_3/Assign^iterations_3/Assign
'
group_deps_4NoOp^mul_59^Mean_15
o
gradients_2/ShapeConst*
valueB *
_class
loc:@mul_59*
dtype0*
_output_shapes
: 
q
gradients_2/ConstConst*
valueB
 *  ?*
_class
loc:@mul_59*
dtype0*
_output_shapes
: 
z
gradients_2/FillFillgradients_2/Shapegradients_2/Const*
T0*
_class
loc:@mul_59*
_output_shapes
: 
{
gradients_2/mul_59_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@mul_59
}
gradients_2/mul_59_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_59
Ž
-gradients_2/mul_59_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_59_grad/Shapegradients_2/mul_59_grad/Shape_1*
_class
loc:@mul_59*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
y
gradients_2/mul_59_grad/mulMulgradients_2/FillMean_14*
T0*
_class
loc:@mul_59*
_output_shapes
: 
É
gradients_2/mul_59_grad/SumSumgradients_2/mul_59_grad/mul-gradients_2/mul_59_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_59
°
gradients_2/mul_59_grad/ReshapeReshapegradients_2/mul_59_grad/Sumgradients_2/mul_59_grad/Shape*
Tshape0*
_class
loc:@mul_59*
_output_shapes
: *
T0
|
gradients_2/mul_59_grad/mul_1Mulmul_59/xgradients_2/Fill*
T0*
_class
loc:@mul_59*
_output_shapes
: 
Ļ
gradients_2/mul_59_grad/Sum_1Sumgradients_2/mul_59_grad/mul_1/gradients_2/mul_59_grad/BroadcastGradientArgs:1*
_class
loc:@mul_59*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
¶
!gradients_2/mul_59_grad/Reshape_1Reshapegradients_2/mul_59_grad/Sum_1gradients_2/mul_59_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class
loc:@mul_59

&gradients_2/Mean_14_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@Mean_14
Å
 gradients_2/Mean_14_grad/ReshapeReshape!gradients_2/mul_59_grad/Reshape_1&gradients_2/Mean_14_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_14*
_output_shapes
:

gradients_2/Mean_14_grad/ShapeShape
truediv_15*
T0*
out_type0*
_class
loc:@Mean_14*
_output_shapes
:
Ć
gradients_2/Mean_14_grad/TileTile gradients_2/Mean_14_grad/Reshapegradients_2/Mean_14_grad/Shape*
_class
loc:@Mean_14*#
_output_shapes
:’’’’’’’’’*
T0*

Tmultiples0

 gradients_2/Mean_14_grad/Shape_1Shape
truediv_15*
_output_shapes
:*
out_type0*
_class
loc:@Mean_14*
T0

 gradients_2/Mean_14_grad/Shape_2Const*
valueB *
_class
loc:@Mean_14*
_output_shapes
: *
dtype0

gradients_2/Mean_14_grad/ConstConst*
valueB: *
_class
loc:@Mean_14*
_output_shapes
:*
dtype0
Į
gradients_2/Mean_14_grad/ProdProd gradients_2/Mean_14_grad/Shape_1gradients_2/Mean_14_grad/Const*
_class
loc:@Mean_14*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

 gradients_2/Mean_14_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_14
Å
gradients_2/Mean_14_grad/Prod_1Prod gradients_2/Mean_14_grad/Shape_2 gradients_2/Mean_14_grad/Const_1*
_class
loc:@Mean_14*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

"gradients_2/Mean_14_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_14
­
 gradients_2/Mean_14_grad/MaximumMaximumgradients_2/Mean_14_grad/Prod_1"gradients_2/Mean_14_grad/Maximum/y*
T0*
_output_shapes
: *
_class
loc:@Mean_14
«
!gradients_2/Mean_14_grad/floordivFloorDivgradients_2/Mean_14_grad/Prod gradients_2/Mean_14_grad/Maximum*
_output_shapes
: *
_class
loc:@Mean_14*
T0

gradients_2/Mean_14_grad/CastCast!gradients_2/Mean_14_grad/floordiv*
_output_shapes
: *

DstT0*
_class
loc:@Mean_14*

SrcT0
³
 gradients_2/Mean_14_grad/truedivRealDivgradients_2/Mean_14_grad/Tilegradients_2/Mean_14_grad/Cast*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_14*
T0

!gradients_2/truediv_15_grad/ShapeShapemul_58*
T0*
out_type0*
_class
loc:@truediv_15*
_output_shapes
:

#gradients_2/truediv_15_grad/Shape_1Const*
valueB *
_class
loc:@truediv_15*
_output_shapes
: *
dtype0
ī
1gradients_2/truediv_15_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_2/truediv_15_grad/Shape#gradients_2/truediv_15_grad/Shape_1*
_class
loc:@truediv_15*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
¦
#gradients_2/truediv_15_grad/RealDivRealDiv gradients_2/Mean_14_grad/truedivMean_13*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15
Ż
gradients_2/truediv_15_grad/SumSum#gradients_2/truediv_15_grad/RealDiv1gradients_2/truediv_15_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_15*
_output_shapes
:
Ķ
#gradients_2/truediv_15_grad/ReshapeReshapegradients_2/truediv_15_grad/Sum!gradients_2/truediv_15_grad/Shape*
Tshape0*
_class
loc:@truediv_15*#
_output_shapes
:’’’’’’’’’*
T0
{
gradients_2/truediv_15_grad/NegNegmul_58*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15*
T0
§
%gradients_2/truediv_15_grad/RealDiv_1RealDivgradients_2/truediv_15_grad/NegMean_13*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15
­
%gradients_2/truediv_15_grad/RealDiv_2RealDiv%gradients_2/truediv_15_grad/RealDiv_1Mean_13*#
_output_shapes
:’’’’’’’’’*
_class
loc:@truediv_15*
T0
¼
gradients_2/truediv_15_grad/mulMul gradients_2/Mean_14_grad/truediv%gradients_2/truediv_15_grad/RealDiv_2*
_class
loc:@truediv_15*#
_output_shapes
:’’’’’’’’’*
T0
Ż
!gradients_2/truediv_15_grad/Sum_1Sumgradients_2/truediv_15_grad/mul3gradients_2/truediv_15_grad/BroadcastGradientArgs:1*
_class
loc:@truediv_15*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ę
%gradients_2/truediv_15_grad/Reshape_1Reshape!gradients_2/truediv_15_grad/Sum_1#gradients_2/truediv_15_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_15*
_output_shapes
: 

gradients_2/mul_58_grad/ShapeShapeMean_12*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_58

gradients_2/mul_58_grad/Shape_1Shapeactivation_8_sample_weights_3*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_58
Ž
-gradients_2/mul_58_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_58_grad/Shapegradients_2/mul_58_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_58*
T0
Æ
gradients_2/mul_58_grad/mulMul#gradients_2/truediv_15_grad/Reshapeactivation_8_sample_weights_3*
T0*#
_output_shapes
:’’’’’’’’’*
_class
loc:@mul_58
É
gradients_2/mul_58_grad/SumSumgradients_2/mul_58_grad/mul-gradients_2/mul_58_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_58
½
gradients_2/mul_58_grad/ReshapeReshapegradients_2/mul_58_grad/Sumgradients_2/mul_58_grad/Shape*
T0*
Tshape0*
_class
loc:@mul_58*#
_output_shapes
:’’’’’’’’’

gradients_2/mul_58_grad/mul_1MulMean_12#gradients_2/truediv_15_grad/Reshape*
T0*
_class
loc:@mul_58*#
_output_shapes
:’’’’’’’’’
Ļ
gradients_2/mul_58_grad/Sum_1Sumgradients_2/mul_58_grad/mul_1/gradients_2/mul_58_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@mul_58*
T0*
	keep_dims( *

Tidx0
Ć
!gradients_2/mul_58_grad/Reshape_1Reshapegradients_2/mul_58_grad/Sum_1gradients_2/mul_58_grad/Shape_1*
T0*
Tshape0*
_class
loc:@mul_58*#
_output_shapes
:’’’’’’’’’

gradients_2/Mean_12_grad/ShapeShapeNeg_3*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_12
{
gradients_2/Mean_12_grad/SizeConst*
value	B :*
_class
loc:@Mean_12*
dtype0*
_output_shapes
: 

gradients_2/Mean_12_grad/addAddMean_12/reduction_indicesgradients_2/Mean_12_grad/Size*
_class
loc:@Mean_12*
_output_shapes
: *
T0
¤
gradients_2/Mean_12_grad/modFloorModgradients_2/Mean_12_grad/addgradients_2/Mean_12_grad/Size*
T0*
_output_shapes
: *
_class
loc:@Mean_12

 gradients_2/Mean_12_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_12*
_output_shapes
:*
dtype0

$gradients_2/Mean_12_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class
loc:@Mean_12

$gradients_2/Mean_12_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_12
Ö
gradients_2/Mean_12_grad/rangeRange$gradients_2/Mean_12_grad/range/startgradients_2/Mean_12_grad/Size$gradients_2/Mean_12_grad/range/delta*
_output_shapes
:*
_class
loc:@Mean_12*

Tidx0

#gradients_2/Mean_12_grad/Fill/valueConst*
value	B :*
_class
loc:@Mean_12*
dtype0*
_output_shapes
: 
«
gradients_2/Mean_12_grad/FillFill gradients_2/Mean_12_grad/Shape_1#gradients_2/Mean_12_grad/Fill/value*
_class
loc:@Mean_12*
_output_shapes
: *
T0

&gradients_2/Mean_12_grad/DynamicStitchDynamicStitchgradients_2/Mean_12_grad/rangegradients_2/Mean_12_grad/modgradients_2/Mean_12_grad/Shapegradients_2/Mean_12_grad/Fill*
T0*
_class
loc:@Mean_12*
N*#
_output_shapes
:’’’’’’’’’

"gradients_2/Mean_12_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_12
Į
 gradients_2/Mean_12_grad/MaximumMaximum&gradients_2/Mean_12_grad/DynamicStitch"gradients_2/Mean_12_grad/Maximum/y*
_class
loc:@Mean_12*#
_output_shapes
:’’’’’’’’’*
T0
¹
!gradients_2/Mean_12_grad/floordivFloorDivgradients_2/Mean_12_grad/Shape gradients_2/Mean_12_grad/Maximum*#
_output_shapes
:’’’’’’’’’*
_class
loc:@Mean_12*
T0
Į
 gradients_2/Mean_12_grad/ReshapeReshapegradients_2/mul_58_grad/Reshape&gradients_2/Mean_12_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_12*
_output_shapes
:
»
gradients_2/Mean_12_grad/TileTile gradients_2/Mean_12_grad/Reshape!gradients_2/Mean_12_grad/floordiv*
_class
loc:@Mean_12*
_output_shapes
:*
T0*

Tmultiples0

 gradients_2/Mean_12_grad/Shape_2ShapeNeg_3*
T0*
out_type0*
_class
loc:@Mean_12*
_output_shapes
:

 gradients_2/Mean_12_grad/Shape_3ShapeMean_12*
out_type0*
_class
loc:@Mean_12*
_output_shapes
:*
T0

gradients_2/Mean_12_grad/ConstConst*
valueB: *
_class
loc:@Mean_12*
dtype0*
_output_shapes
:
Į
gradients_2/Mean_12_grad/ProdProd gradients_2/Mean_12_grad/Shape_2gradients_2/Mean_12_grad/Const*
_output_shapes
: *
_class
loc:@Mean_12*
T0*
	keep_dims( *

Tidx0

 gradients_2/Mean_12_grad/Const_1Const*
valueB: *
_class
loc:@Mean_12*
_output_shapes
:*
dtype0
Å
gradients_2/Mean_12_grad/Prod_1Prod gradients_2/Mean_12_grad/Shape_3 gradients_2/Mean_12_grad/Const_1*
_class
loc:@Mean_12*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

$gradients_2/Mean_12_grad/Maximum_1/yConst*
value	B :*
_class
loc:@Mean_12*
_output_shapes
: *
dtype0
±
"gradients_2/Mean_12_grad/Maximum_1Maximumgradients_2/Mean_12_grad/Prod_1$gradients_2/Mean_12_grad/Maximum_1/y*
_output_shapes
: *
_class
loc:@Mean_12*
T0
Æ
#gradients_2/Mean_12_grad/floordiv_1FloorDivgradients_2/Mean_12_grad/Prod"gradients_2/Mean_12_grad/Maximum_1*
_output_shapes
: *
_class
loc:@Mean_12*
T0

gradients_2/Mean_12_grad/CastCast#gradients_2/Mean_12_grad/floordiv_1*

SrcT0*
_class
loc:@Mean_12*
_output_shapes
: *

DstT0
³
 gradients_2/Mean_12_grad/truedivRealDivgradients_2/Mean_12_grad/Tilegradients_2/Mean_12_grad/Cast*
T0*
_class
loc:@Mean_12*#
_output_shapes
:’’’’’’’’’

gradients_2/Neg_3_grad/NegNeg gradients_2/Mean_12_grad/truediv*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Neg_3
|
gradients_2/Sum_7_grad/ShapeShapemul_57*
T0*
out_type0*
_class

loc:@Sum_7*
_output_shapes
:
w
gradients_2/Sum_7_grad/SizeConst*
value	B :*
_class

loc:@Sum_7*
dtype0*
_output_shapes
: 

gradients_2/Sum_7_grad/addAddSum_7/reduction_indicesgradients_2/Sum_7_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_7

gradients_2/Sum_7_grad/modFloorModgradients_2/Sum_7_grad/addgradients_2/Sum_7_grad/Size*
_output_shapes
: *
_class

loc:@Sum_7*
T0
{
gradients_2/Sum_7_grad/Shape_1Const*
valueB *
_class

loc:@Sum_7*
_output_shapes
: *
dtype0
~
"gradients_2/Sum_7_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *
_class

loc:@Sum_7
~
"gradients_2/Sum_7_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_7
Ģ
gradients_2/Sum_7_grad/rangeRange"gradients_2/Sum_7_grad/range/startgradients_2/Sum_7_grad/Size"gradients_2/Sum_7_grad/range/delta*
_class

loc:@Sum_7*
_output_shapes
:*

Tidx0
}
!gradients_2/Sum_7_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_7
”
gradients_2/Sum_7_grad/FillFillgradients_2/Sum_7_grad/Shape_1!gradients_2/Sum_7_grad/Fill/value*
T0*
_class

loc:@Sum_7*
_output_shapes
: 
ū
$gradients_2/Sum_7_grad/DynamicStitchDynamicStitchgradients_2/Sum_7_grad/rangegradients_2/Sum_7_grad/modgradients_2/Sum_7_grad/Shapegradients_2/Sum_7_grad/Fill*
_class

loc:@Sum_7*#
_output_shapes
:’’’’’’’’’*
T0*
N
|
 gradients_2/Sum_7_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_7*
_output_shapes
: *
dtype0
¹
gradients_2/Sum_7_grad/MaximumMaximum$gradients_2/Sum_7_grad/DynamicStitch gradients_2/Sum_7_grad/Maximum/y*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_7*
T0
Ø
gradients_2/Sum_7_grad/floordivFloorDivgradients_2/Sum_7_grad/Shapegradients_2/Sum_7_grad/Maximum*
T0*
_class

loc:@Sum_7*
_output_shapes
:
¶
gradients_2/Sum_7_grad/ReshapeReshapegradients_2/Neg_3_grad/Neg$gradients_2/Sum_7_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_7
Ā
gradients_2/Sum_7_grad/TileTilegradients_2/Sum_7_grad/Reshapegradients_2/Sum_7_grad/floordiv*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Sum_7*
T0*

Tmultiples0

gradients_2/mul_57_grad/ShapeShapeactivation_8_target_3*
_output_shapes
:*
out_type0*
_class
loc:@mul_57*
T0

gradients_2/mul_57_grad/Shape_1ShapeLog_3*
out_type0*
_class
loc:@mul_57*
_output_shapes
:*
T0
Ž
-gradients_2/mul_57_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_57_grad/Shapegradients_2/mul_57_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@mul_57

gradients_2/mul_57_grad/mulMulgradients_2/Sum_7_grad/TileLog_3*
T0*
_class
loc:@mul_57*'
_output_shapes
:’’’’’’’’’

É
gradients_2/mul_57_grad/SumSumgradients_2/mul_57_grad/mul-gradients_2/mul_57_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_57*
_output_shapes
:
Ź
gradients_2/mul_57_grad/ReshapeReshapegradients_2/mul_57_grad/Sumgradients_2/mul_57_grad/Shape*
Tshape0*
_class
loc:@mul_57*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
„
gradients_2/mul_57_grad/mul_1Mulactivation_8_target_3gradients_2/Sum_7_grad/Tile*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@mul_57
Ļ
gradients_2/mul_57_grad/Sum_1Sumgradients_2/mul_57_grad/mul_1/gradients_2/mul_57_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_57
Ē
!gradients_2/mul_57_grad/Reshape_1Reshapegradients_2/mul_57_grad/Sum_1gradients_2/mul_57_grad/Shape_1*'
_output_shapes
:’’’’’’’’’
*
Tshape0*
_class
loc:@mul_57*
T0
±
!gradients_2/Log_3_grad/Reciprocal
Reciprocalclip_by_value_19"^gradients_2/mul_57_grad/Reshape_1*
T0*'
_output_shapes
:’’’’’’’’’
*
_class

loc:@Log_3
³
gradients_2/Log_3_grad/mulMul!gradients_2/mul_57_grad/Reshape_1!gradients_2/Log_3_grad/Reciprocal*
T0*
_class

loc:@Log_3*'
_output_shapes
:’’’’’’’’’

¤
'gradients_2/clip_by_value_19_grad/ShapeShapeclip_by_value_19/Minimum*
_output_shapes
:*
out_type0*#
_class
loc:@clip_by_value_19*
T0

)gradients_2/clip_by_value_19_grad/Shape_1Const*
valueB *#
_class
loc:@clip_by_value_19*
_output_shapes
: *
dtype0
Ø
)gradients_2/clip_by_value_19_grad/Shape_2Shapegradients_2/Log_3_grad/mul*
T0*
out_type0*#
_class
loc:@clip_by_value_19*
_output_shapes
:

-gradients_2/clip_by_value_19_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *#
_class
loc:@clip_by_value_19
ą
'gradients_2/clip_by_value_19_grad/zerosFill)gradients_2/clip_by_value_19_grad/Shape_2-gradients_2/clip_by_value_19_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_19*
T0
¹
.gradients_2/clip_by_value_19_grad/GreaterEqualGreaterEqualclip_by_value_19/MinimumConst_60*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’
*
T0

7gradients_2/clip_by_value_19_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_2/clip_by_value_19_grad/Shape)gradients_2/clip_by_value_19_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@clip_by_value_19
ž
(gradients_2/clip_by_value_19_grad/SelectSelect.gradients_2/clip_by_value_19_grad/GreaterEqualgradients_2/Log_3_grad/mul'gradients_2/clip_by_value_19_grad/zeros*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_19*
T0
ø
,gradients_2/clip_by_value_19_grad/LogicalNot
LogicalNot.gradients_2/clip_by_value_19_grad/GreaterEqual*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

ž
*gradients_2/clip_by_value_19_grad/Select_1Select,gradients_2/clip_by_value_19_grad/LogicalNotgradients_2/Log_3_grad/mul'gradients_2/clip_by_value_19_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*#
_class
loc:@clip_by_value_19
ō
%gradients_2/clip_by_value_19_grad/SumSum(gradients_2/clip_by_value_19_grad/Select7gradients_2/clip_by_value_19_grad/BroadcastGradientArgs*#
_class
loc:@clip_by_value_19*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
é
)gradients_2/clip_by_value_19_grad/ReshapeReshape%gradients_2/clip_by_value_19_grad/Sum'gradients_2/clip_by_value_19_grad/Shape*
T0*
Tshape0*#
_class
loc:@clip_by_value_19*'
_output_shapes
:’’’’’’’’’

ś
'gradients_2/clip_by_value_19_grad/Sum_1Sum*gradients_2/clip_by_value_19_grad/Select_19gradients_2/clip_by_value_19_grad/BroadcastGradientArgs:1*#
_class
loc:@clip_by_value_19*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ž
+gradients_2/clip_by_value_19_grad/Reshape_1Reshape'gradients_2/clip_by_value_19_grad/Sum_1)gradients_2/clip_by_value_19_grad/Shape_1*
T0*
Tshape0*#
_class
loc:@clip_by_value_19*
_output_shapes
: 
¦
/gradients_2/clip_by_value_19/Minimum_grad/ShapeShape
truediv_14*
_output_shapes
:*
out_type0*+
_class!
loc:@clip_by_value_19/Minimum*
T0
”
1gradients_2/clip_by_value_19/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *+
_class!
loc:@clip_by_value_19/Minimum
Ē
1gradients_2/clip_by_value_19/Minimum_grad/Shape_2Shape)gradients_2/clip_by_value_19_grad/Reshape*
T0*
_output_shapes
:*
out_type0*+
_class!
loc:@clip_by_value_19/Minimum
§
5gradients_2/clip_by_value_19/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *+
_class!
loc:@clip_by_value_19/Minimum

/gradients_2/clip_by_value_19/Minimum_grad/zerosFill1gradients_2/clip_by_value_19/Minimum_grad/Shape_25gradients_2/clip_by_value_19/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum
³
3gradients_2/clip_by_value_19/Minimum_grad/LessEqual	LessEqual
truediv_14sub_11*+
_class!
loc:@clip_by_value_19/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
¦
?gradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_2/clip_by_value_19/Minimum_grad/Shape1gradients_2/clip_by_value_19/Minimum_grad/Shape_1*
T0*+
_class!
loc:@clip_by_value_19/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ŗ
0gradients_2/clip_by_value_19/Minimum_grad/SelectSelect3gradients_2/clip_by_value_19/Minimum_grad/LessEqual)gradients_2/clip_by_value_19_grad/Reshape/gradients_2/clip_by_value_19/Minimum_grad/zeros*
T0*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum
Ķ
4gradients_2/clip_by_value_19/Minimum_grad/LogicalNot
LogicalNot3gradients_2/clip_by_value_19/Minimum_grad/LessEqual*'
_output_shapes
:’’’’’’’’’
*+
_class!
loc:@clip_by_value_19/Minimum
­
2gradients_2/clip_by_value_19/Minimum_grad/Select_1Select4gradients_2/clip_by_value_19/Minimum_grad/LogicalNot)gradients_2/clip_by_value_19_grad/Reshape/gradients_2/clip_by_value_19/Minimum_grad/zeros*+
_class!
loc:@clip_by_value_19/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

-gradients_2/clip_by_value_19/Minimum_grad/SumSum0gradients_2/clip_by_value_19/Minimum_grad/Select?gradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgs*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

1gradients_2/clip_by_value_19/Minimum_grad/ReshapeReshape-gradients_2/clip_by_value_19/Minimum_grad/Sum/gradients_2/clip_by_value_19/Minimum_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*+
_class!
loc:@clip_by_value_19/Minimum

/gradients_2/clip_by_value_19/Minimum_grad/Sum_1Sum2gradients_2/clip_by_value_19/Minimum_grad/Select_1Agradients_2/clip_by_value_19/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@clip_by_value_19/Minimum*
_output_shapes
:
ž
3gradients_2/clip_by_value_19/Minimum_grad/Reshape_1Reshape/gradients_2/clip_by_value_19/Minimum_grad/Sum_11gradients_2/clip_by_value_19/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*+
_class!
loc:@clip_by_value_19/Minimum

!gradients_2/truediv_14_grad/ShapeShapeactivation_8_3/Softmax*
T0*
out_type0*
_class
loc:@truediv_14*
_output_shapes
:

#gradients_2/truediv_14_grad/Shape_1ShapeSum_6*
_output_shapes
:*
out_type0*
_class
loc:@truediv_14*
T0
ī
1gradients_2/truediv_14_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_2/truediv_14_grad/Shape#gradients_2/truediv_14_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
_class
loc:@truediv_14
¹
#gradients_2/truediv_14_grad/RealDivRealDiv1gradients_2/clip_by_value_19/Minimum_grad/ReshapeSum_6*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14*
T0
Ż
gradients_2/truediv_14_grad/SumSum#gradients_2/truediv_14_grad/RealDiv1gradients_2/truediv_14_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_14
Ń
#gradients_2/truediv_14_grad/ReshapeReshapegradients_2/truediv_14_grad/Sum!gradients_2/truediv_14_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*
Tshape0*
_class
loc:@truediv_14

gradients_2/truediv_14_grad/NegNegactivation_8_3/Softmax*
T0*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14
©
%gradients_2/truediv_14_grad/RealDiv_1RealDivgradients_2/truediv_14_grad/NegSum_6*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’
*
T0
Æ
%gradients_2/truediv_14_grad/RealDiv_2RealDiv%gradients_2/truediv_14_grad/RealDiv_1Sum_6*'
_output_shapes
:’’’’’’’’’
*
_class
loc:@truediv_14*
T0
Ń
gradients_2/truediv_14_grad/mulMul1gradients_2/clip_by_value_19/Minimum_grad/Reshape%gradients_2/truediv_14_grad/RealDiv_2*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’
*
T0
Ż
!gradients_2/truediv_14_grad/Sum_1Sumgradients_2/truediv_14_grad/mul3gradients_2/truediv_14_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_14
×
%gradients_2/truediv_14_grad/Reshape_1Reshape!gradients_2/truediv_14_grad/Sum_1#gradients_2/truediv_14_grad/Shape_1*'
_output_shapes
:’’’’’’’’’*
Tshape0*
_class
loc:@truediv_14*
T0

gradients_2/Sum_6_grad/ShapeShapeactivation_8_3/Softmax*
out_type0*
_class

loc:@Sum_6*
_output_shapes
:*
T0
w
gradients_2/Sum_6_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_6

gradients_2/Sum_6_grad/addAddSum_6/reduction_indicesgradients_2/Sum_6_grad/Size*
T0*
_class

loc:@Sum_6*
_output_shapes
: 

gradients_2/Sum_6_grad/modFloorModgradients_2/Sum_6_grad/addgradients_2/Sum_6_grad/Size*
_class

loc:@Sum_6*
_output_shapes
: *
T0
{
gradients_2/Sum_6_grad/Shape_1Const*
valueB *
_class

loc:@Sum_6*
_output_shapes
: *
dtype0
~
"gradients_2/Sum_6_grad/range/startConst*
value	B : *
_class

loc:@Sum_6*
dtype0*
_output_shapes
: 
~
"gradients_2/Sum_6_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_6
Ģ
gradients_2/Sum_6_grad/rangeRange"gradients_2/Sum_6_grad/range/startgradients_2/Sum_6_grad/Size"gradients_2/Sum_6_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_6*

Tidx0
}
!gradients_2/Sum_6_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_6*
_output_shapes
: *
dtype0
”
gradients_2/Sum_6_grad/FillFillgradients_2/Sum_6_grad/Shape_1!gradients_2/Sum_6_grad/Fill/value*
_class

loc:@Sum_6*
_output_shapes
: *
T0
ū
$gradients_2/Sum_6_grad/DynamicStitchDynamicStitchgradients_2/Sum_6_grad/rangegradients_2/Sum_6_grad/modgradients_2/Sum_6_grad/Shapegradients_2/Sum_6_grad/Fill*
T0*
_class

loc:@Sum_6*
N*#
_output_shapes
:’’’’’’’’’
|
 gradients_2/Sum_6_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_6
¹
gradients_2/Sum_6_grad/MaximumMaximum$gradients_2/Sum_6_grad/DynamicStitch gradients_2/Sum_6_grad/Maximum/y*
T0*#
_output_shapes
:’’’’’’’’’*
_class

loc:@Sum_6
Ø
gradients_2/Sum_6_grad/floordivFloorDivgradients_2/Sum_6_grad/Shapegradients_2/Sum_6_grad/Maximum*
_output_shapes
:*
_class

loc:@Sum_6*
T0
Į
gradients_2/Sum_6_grad/ReshapeReshape%gradients_2/truediv_14_grad/Reshape_1$gradients_2/Sum_6_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_6*
_output_shapes
:*
T0
Ā
gradients_2/Sum_6_grad/TileTilegradients_2/Sum_6_grad/Reshapegradients_2/Sum_6_grad/floordiv*
_class

loc:@Sum_6*'
_output_shapes
:’’’’’’’’’
*
T0*

Tmultiples0
“
gradients_2/AddNAddN#gradients_2/truediv_14_grad/Reshapegradients_2/Sum_6_grad/Tile*
_class
loc:@truediv_14*'
_output_shapes
:’’’’’’’’’
*
T0*
N
¹
+gradients_2/activation_8_3/Softmax_grad/mulMulgradients_2/AddNactivation_8_3/Softmax*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_3/Softmax*
T0
²
=gradients_2/activation_8_3/Softmax_grad/Sum/reduction_indicesConst*
valueB:*)
_class
loc:@activation_8_3/Softmax*
_output_shapes
:*
dtype0

+gradients_2/activation_8_3/Softmax_grad/SumSum+gradients_2/activation_8_3/Softmax_grad/mul=gradients_2/activation_8_3/Softmax_grad/Sum/reduction_indices*)
_class
loc:@activation_8_3/Softmax*#
_output_shapes
:’’’’’’’’’*
T0*
	keep_dims( *

Tidx0
±
5gradients_2/activation_8_3/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   *)
_class
loc:@activation_8_3/Softmax

/gradients_2/activation_8_3/Softmax_grad/ReshapeReshape+gradients_2/activation_8_3/Softmax_grad/Sum5gradients_2/activation_8_3/Softmax_grad/Reshape/shape*
Tshape0*)
_class
loc:@activation_8_3/Softmax*'
_output_shapes
:’’’’’’’’’*
T0
Ņ
+gradients_2/activation_8_3/Softmax_grad/subSubgradients_2/AddN/gradients_2/activation_8_3/Softmax_grad/Reshape*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_3/Softmax*
T0
Ö
-gradients_2/activation_8_3/Softmax_grad/mul_1Mul+gradients_2/activation_8_3/Softmax_grad/subactivation_8_3/Softmax*
T0*'
_output_shapes
:’’’’’’’’’
*)
_class
loc:@activation_8_3/Softmax
ō
(gradients_2/dense_4_3/MatMul_grad/MatMulMatMul-gradients_2/activation_8_3/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*#
_class
loc:@dense_4_3/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
T0
š
*gradients_2/dense_4_3/MatMul_grad/MatMul_1MatMuldropout_6_3/cond/Merge-gradients_2/activation_8_3/Softmax_grad/mul_1*
transpose_b( *#
_class
loc:@dense_4_3/MatMul*
_output_shapes
:	
*
transpose_a(*
T0
ė
1gradients_2/dropout_6_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_4_3/MatMul_grad/MatMuldropout_6_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*#
_class
loc:@dense_4_3/MatMul
ø
gradients_2/SwitchSwitchactivation_7_3/Eludropout_6_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_7_3/Elu*
T0

gradients_2/Shape_1Shapegradients_2/Switch:1*
T0*
out_type0*%
_class
loc:@activation_7_3/Elu*
_output_shapes
:

gradients_2/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_7_3/Elu
”
gradients_2/zerosFillgradients_2/Shape_1gradients_2/zeros/Const*
T0*%
_class
loc:@activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’
č
4gradients_2/dropout_6_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_6_3/cond/Merge_grad/cond_gradgradients_2/zeros**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_7_3/Elu*
T0
Ą
3gradients_2/dropout_6_3/cond/dropout/mul_grad/ShapeShapedropout_6_3/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:
Ä
5gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1Shapedropout_6_3/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
T0
¶
Cgradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
T0
ń
1gradients_2/dropout_6_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_6_3/cond/Merge_grad/cond_grad:1dropout_6_3/cond/dropout/Floor*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
”
1gradients_2/dropout_6_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_6_3/cond/dropout/mul_grad/mulCgradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_6_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
T0
ń
3gradients_2/dropout_6_3/cond/dropout/mul_grad/mul_1Muldropout_6_3/cond/dropout/div3gradients_2/dropout_6_3/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
T0
§
3gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_6_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_6_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*
_output_shapes
:
 
7gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_6_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_6_3/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
ø
3gradients_2/dropout_6_3/cond/dropout/div_grad/ShapeShapedropout_6_3/cond/mul*
out_type0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
_output_shapes
:*
T0
©
5gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_6_3/cond/dropout/div
¶
Cgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_6_3/cond/dropout/div_grad/Shape5gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
’
5gradients_2/dropout_6_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape"dropout_6_3/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
„
1gradients_2/dropout_6_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_6_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_3/cond/dropout/div

5gradients_2/dropout_6_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_6_3/cond/dropout/div_grad/Sum3gradients_2/dropout_6_3/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
T0
²
1gradients_2/dropout_6_3/cond/dropout/div_grad/NegNegdropout_6_3/cond/mul*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
ż
7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_6_3/cond/dropout/div_grad/Neg"dropout_6_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/div

7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_1"dropout_6_3/cond/dropout/keep_prob*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_6_3/cond/dropout/div

1gradients_2/dropout_6_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_6_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_6_3/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’
„
3gradients_2/dropout_6_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_6_3/cond/dropout/div_grad/mulEgradients_2/dropout_6_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
_output_shapes
:

7gradients_2/dropout_6_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_6_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_6_3/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_3/cond/dropout/div*
_output_shapes
: 
±
+gradients_2/dropout_6_3/cond/mul_grad/ShapeShapedropout_6_3/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_6_3/cond/mul*
_output_shapes
:

-gradients_2/dropout_6_3/cond/mul_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *'
_class
loc:@dropout_6_3/cond/mul

;gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_6_3/cond/mul_grad/Shape-gradients_2/dropout_6_3/cond/mul_grad/Shape_1*'
_class
loc:@dropout_6_3/cond/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ū
)gradients_2/dropout_6_3/cond/mul_grad/mulMul5gradients_2/dropout_6_3/cond/dropout/div_grad/Reshapedropout_6_3/cond/mul/y*'
_class
loc:@dropout_6_3/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

)gradients_2/dropout_6_3/cond/mul_grad/SumSum)gradients_2/dropout_6_3/cond/mul_grad/mul;gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_6_3/cond/mul
ś
-gradients_2/dropout_6_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_6_3/cond/mul_grad/Sum+gradients_2/dropout_6_3/cond/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_6_3/cond/mul
ä
+gradients_2/dropout_6_3/cond/mul_grad/mul_1Muldropout_6_3/cond/mul/Switch:15gradients_2/dropout_6_3/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_3/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

+gradients_2/dropout_6_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_6_3/cond/mul_grad/mul_1=gradients_2/dropout_6_3/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_6_3/cond/mul*
T0*
	keep_dims( *

Tidx0
ī
/gradients_2/dropout_6_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_6_3/cond/mul_grad/Sum_1-gradients_2/dropout_6_3/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_3/cond/mul*
_output_shapes
: *
T0
ŗ
gradients_2/Switch_1Switchactivation_7_3/Eludropout_6_3/cond/pred_id*
T0*%
_class
loc:@activation_7_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

gradients_2/Shape_2Shapegradients_2/Switch_1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_3/Elu*
T0

gradients_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_7_3/Elu
„
gradients_2/zeros_1Fillgradients_2/Shape_2gradients_2/zeros_1/Const*%
_class
loc:@activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
č
6gradients_2/dropout_6_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_6_3/cond/mul_grad/Reshapegradients_2/zeros_1*
T0*%
_class
loc:@activation_7_3/Elu*
N**
_output_shapes
:’’’’’’’’’: 
ė
gradients_2/AddN_1AddN4gradients_2/dropout_6_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_6_3/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_3/Elu*
N*(
_output_shapes
:’’’’’’’’’
ø
+gradients_2/activation_7_3/Elu_grad/EluGradEluGradgradients_2/AddN_1activation_7_3/Elu*
T0*%
_class
loc:@activation_7_3/Elu*(
_output_shapes
:’’’’’’’’’
ņ
(gradients_2/dense_3_3/MatMul_grad/MatMulMatMul+gradients_2/activation_7_3/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_3_3/MatMul
ļ
*gradients_2/dense_3_3/MatMul_grad/MatMul_1MatMuldropout_5_3/cond/Merge+gradients_2/activation_7_3/Elu_grad/EluGrad*
transpose_b( *
T0*#
_class
loc:@dense_3_3/MatMul* 
_output_shapes
:
*
transpose_a(
ė
1gradients_2/dropout_5_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_3_3/MatMul_grad/MatMuldropout_5_3/cond/pred_id*
T0*#
_class
loc:@dense_3_3/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
ŗ
gradients_2/Switch_2Switchactivation_6_3/Eludropout_5_3/cond/pred_id*%
_class
loc:@activation_6_3/Elu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

gradients_2/Shape_3Shapegradients_2/Switch_2:1*
out_type0*%
_class
loc:@activation_6_3/Elu*
_output_shapes
:*
T0

gradients_2/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_3/Elu
„
gradients_2/zeros_2Fillgradients_2/Shape_3gradients_2/zeros_2/Const*%
_class
loc:@activation_6_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ź
4gradients_2/dropout_5_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_5_3/cond/Merge_grad/cond_gradgradients_2/zeros_2**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_6_3/Elu*
T0
Ą
3gradients_2/dropout_5_3/cond/dropout/mul_grad/ShapeShapedropout_5_3/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
_output_shapes
:
Ä
5gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1Shapedropout_5_3/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
_output_shapes
:
¶
Cgradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ń
1gradients_2/dropout_5_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_5_3/cond/Merge_grad/cond_grad:1dropout_5_3/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
”
1gradients_2/dropout_5_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_5_3/cond/dropout/mul_grad/mulCgradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_5_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
ń
3gradients_2/dropout_5_3/cond/dropout/mul_grad/mul_1Muldropout_5_3/cond/dropout/div3gradients_2/dropout_5_3/cond/Merge_grad/cond_grad:1*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
§
3gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_5_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_5_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
_output_shapes
:
 
7gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_5_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_5_3/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/mul*
T0
ø
3gradients_2/dropout_5_3/cond/dropout/div_grad/ShapeShapedropout_5_3/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
:
©
5gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
: *
dtype0
¶
Cgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_5_3/cond/dropout/div_grad/Shape5gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
’
5gradients_2/dropout_5_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape"dropout_5_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
„
1gradients_2/dropout_5_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_5_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_5_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_5_3/cond/dropout/div_grad/Sum3gradients_2/dropout_5_3/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
T0
²
1gradients_2/dropout_5_3/cond/dropout/div_grad/NegNegdropout_5_3/cond/mul*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div
ż
7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_5_3/cond/dropout/div_grad/Neg"dropout_5_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_1"dropout_5_3/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’

1gradients_2/dropout_5_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_5_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_5_3/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_5_3/cond/dropout/div
„
3gradients_2/dropout_5_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_5_3/cond/dropout/div_grad/mulEgradients_2/dropout_5_3/cond/dropout/div_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

7gradients_2/dropout_5_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_5_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_5_3/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_3/cond/dropout/div*
_output_shapes
: 
±
+gradients_2/dropout_5_3/cond/mul_grad/ShapeShapedropout_5_3/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_3/cond/mul*
T0

-gradients_2/dropout_5_3/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_5_3/cond/mul

;gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_5_3/cond/mul_grad/Shape-gradients_2/dropout_5_3/cond/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_5_3/cond/mul*
T0
Ū
)gradients_2/dropout_5_3/cond/mul_grad/mulMul5gradients_2/dropout_5_3/cond/dropout/div_grad/Reshapedropout_5_3/cond/mul/y*
T0*'
_class
loc:@dropout_5_3/cond/mul*(
_output_shapes
:’’’’’’’’’

)gradients_2/dropout_5_3/cond/mul_grad/SumSum)gradients_2/dropout_5_3/cond/mul_grad/mul;gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_3/cond/mul
ś
-gradients_2/dropout_5_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_5_3/cond/mul_grad/Sum+gradients_2/dropout_5_3/cond/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*'
_class
loc:@dropout_5_3/cond/mul
ä
+gradients_2/dropout_5_3/cond/mul_grad/mul_1Muldropout_5_3/cond/mul/Switch:15gradients_2/dropout_5_3/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_5_3/cond/mul*
T0

+gradients_2/dropout_5_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_5_3/cond/mul_grad/mul_1=gradients_2/dropout_5_3/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_5_3/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_2/dropout_5_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_5_3/cond/mul_grad/Sum_1-gradients_2/dropout_5_3/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_3/cond/mul*
T0
ŗ
gradients_2/Switch_3Switchactivation_6_3/Eludropout_5_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu*
T0

gradients_2/Shape_4Shapegradients_2/Switch_3*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_3/Elu*
T0

gradients_2/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_3/Elu
„
gradients_2/zeros_3Fillgradients_2/Shape_4gradients_2/zeros_3/Const*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_6_3/Elu*
T0
č
6gradients_2/dropout_5_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_5_3/cond/mul_grad/Reshapegradients_2/zeros_3**
_output_shapes
:’’’’’’’’’: *
N*%
_class
loc:@activation_6_3/Elu*
T0
ė
gradients_2/AddN_2AddN4gradients_2/dropout_5_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_5_3/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0*
N
ø
+gradients_2/activation_6_3/Elu_grad/EluGradEluGradgradients_2/AddN_2activation_6_3/Elu*
T0*%
_class
loc:@activation_6_3/Elu*(
_output_shapes
:’’’’’’’’’
ņ
(gradients_2/dense_2_3/MatMul_grad/MatMulMatMul+gradients_2/activation_6_3/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *#
_class
loc:@dense_2_3/MatMul
ļ
*gradients_2/dense_2_3/MatMul_grad/MatMul_1MatMuldropout_4_3/cond/Merge+gradients_2/activation_6_3/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_2_3/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ė
1gradients_2/dropout_4_3/cond/Merge_grad/cond_gradSwitch(gradients_2/dense_2_3/MatMul_grad/MatMuldropout_4_3/cond/pred_id*#
_class
loc:@dense_2_3/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
ŗ
gradients_2/Switch_4Switchactivation_5_3/Eludropout_4_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu

gradients_2/Shape_5Shapegradients_2/Switch_4:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_3/Elu

gradients_2/zeros_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_5_3/Elu
„
gradients_2/zeros_4Fillgradients_2/Shape_5gradients_2/zeros_4/Const*%
_class
loc:@activation_5_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
ź
4gradients_2/dropout_4_3/cond/Switch_1_grad/cond_gradMerge1gradients_2/dropout_4_3/cond/Merge_grad/cond_gradgradients_2/zeros_4*%
_class
loc:@activation_5_3/Elu**
_output_shapes
:’’’’’’’’’: *
T0*
N
Ą
3gradients_2/dropout_4_3/cond/dropout/mul_grad/ShapeShapedropout_4_3/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
_output_shapes
:
Ä
5gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1Shapedropout_4_3/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
_output_shapes
:*
T0
¶
Cgradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape5gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
ń
1gradients_2/dropout_4_3/cond/dropout/mul_grad/mulMul3gradients_2/dropout_4_3/cond/Merge_grad/cond_grad:1dropout_4_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
”
1gradients_2/dropout_4_3/cond/dropout/mul_grad/SumSum1gradients_2/dropout_4_3/cond/dropout/mul_grad/mulCgradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_2/dropout_4_3/cond/dropout/mul_grad/ReshapeReshape1gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum3gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
ń
3gradients_2/dropout_4_3/cond/dropout/mul_grad/mul_1Muldropout_4_3/cond/dropout/div3gradients_2/dropout_4_3/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
§
3gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum_1Sum3gradients_2/dropout_4_3/cond/dropout/mul_grad/mul_1Egradients_2/dropout_4_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
 
7gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape_1Reshape3gradients_2/dropout_4_3/cond/dropout/mul_grad/Sum_15gradients_2/dropout_4_3/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/mul
ø
3gradients_2/dropout_4_3/cond/dropout/div_grad/ShapeShapedropout_4_3/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
_output_shapes
:
©
5gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_3/cond/dropout/div
¶
Cgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_2/dropout_4_3/cond/dropout/div_grad/Shape5gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
’
5gradients_2/dropout_4_3/cond/dropout/div_grad/RealDivRealDiv5gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape"dropout_4_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0
„
1gradients_2/dropout_4_3/cond/dropout/div_grad/SumSum5gradients_2/dropout_4_3/cond/dropout/div_grad/RealDivCgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_3/cond/dropout/div

5gradients_2/dropout_4_3/cond/dropout/div_grad/ReshapeReshape1gradients_2/dropout_4_3/cond/dropout/div_grad/Sum3gradients_2/dropout_4_3/cond/dropout/div_grad/Shape*(
_output_shapes
:’’’’’’’’’*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
T0
²
1gradients_2/dropout_4_3/cond/dropout/div_grad/NegNegdropout_4_3/cond/mul*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
T0
ż
7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_2/dropout_4_3/cond/dropout/div_grad/Neg"dropout_4_3/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*(
_output_shapes
:’’’’’’’’’*
T0

7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_1"dropout_4_3/cond/dropout/keep_prob*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
T0

1gradients_2/dropout_4_3/cond/dropout/div_grad/mulMul5gradients_2/dropout_4_3/cond/dropout/mul_grad/Reshape7gradients_2/dropout_4_3/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@dropout_4_3/cond/dropout/div
„
3gradients_2/dropout_4_3/cond/dropout/div_grad/Sum_1Sum1gradients_2/dropout_4_3/cond/dropout/div_grad/mulEgradients_2/dropout_4_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
_output_shapes
:

7gradients_2/dropout_4_3/cond/dropout/div_grad/Reshape_1Reshape3gradients_2/dropout_4_3/cond/dropout/div_grad/Sum_15gradients_2/dropout_4_3/cond/dropout/div_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_3/cond/dropout/div*
_output_shapes
: *
T0
±
+gradients_2/dropout_4_3/cond/mul_grad/ShapeShapedropout_4_3/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
:

-gradients_2/dropout_4_3/cond/mul_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *'
_class
loc:@dropout_4_3/cond/mul

;gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_2/dropout_4_3/cond/mul_grad/Shape-gradients_2/dropout_4_3/cond/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*'
_class
loc:@dropout_4_3/cond/mul*
T0
Ū
)gradients_2/dropout_4_3/cond/mul_grad/mulMul5gradients_2/dropout_4_3/cond/dropout/div_grad/Reshapedropout_4_3/cond/mul/y*'
_class
loc:@dropout_4_3/cond/mul*(
_output_shapes
:’’’’’’’’’*
T0

)gradients_2/dropout_4_3/cond/mul_grad/SumSum)gradients_2/dropout_4_3/cond/mul_grad/mul;gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
:
ś
-gradients_2/dropout_4_3/cond/mul_grad/ReshapeReshape)gradients_2/dropout_4_3/cond/mul_grad/Sum+gradients_2/dropout_4_3/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_4_3/cond/mul*(
_output_shapes
:’’’’’’’’’
ä
+gradients_2/dropout_4_3/cond/mul_grad/mul_1Muldropout_4_3/cond/mul/Switch:15gradients_2/dropout_4_3/cond/dropout/div_grad/Reshape*(
_output_shapes
:’’’’’’’’’*'
_class
loc:@dropout_4_3/cond/mul*
T0

+gradients_2/dropout_4_3/cond/mul_grad/Sum_1Sum+gradients_2/dropout_4_3/cond/mul_grad/mul_1=gradients_2/dropout_4_3/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ī
/gradients_2/dropout_4_3/cond/mul_grad/Reshape_1Reshape+gradients_2/dropout_4_3/cond/mul_grad/Sum_1-gradients_2/dropout_4_3/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_4_3/cond/mul*
_output_shapes
: 
ŗ
gradients_2/Switch_5Switchactivation_5_3/Eludropout_4_3/cond/pred_id*
T0*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu

gradients_2/Shape_6Shapegradients_2/Switch_5*
out_type0*%
_class
loc:@activation_5_3/Elu*
_output_shapes
:*
T0

gradients_2/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_3/Elu*
_output_shapes
: *
dtype0
„
gradients_2/zeros_5Fillgradients_2/Shape_6gradients_2/zeros_5/Const*%
_class
loc:@activation_5_3/Elu*(
_output_shapes
:’’’’’’’’’*
T0
č
6gradients_2/dropout_4_3/cond/mul/Switch_grad/cond_gradMerge-gradients_2/dropout_4_3/cond/mul_grad/Reshapegradients_2/zeros_5*
N*
T0**
_output_shapes
:’’’’’’’’’: *%
_class
loc:@activation_5_3/Elu
ė
gradients_2/AddN_3AddN4gradients_2/dropout_4_3/cond/Switch_1_grad/cond_grad6gradients_2/dropout_4_3/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu
ø
+gradients_2/activation_5_3/Elu_grad/EluGradEluGradgradients_2/AddN_3activation_5_3/Elu*
T0*(
_output_shapes
:’’’’’’’’’*%
_class
loc:@activation_5_3/Elu
ņ
(gradients_2/dense_1_3/MatMul_grad/MatMulMatMul+gradients_2/activation_5_3/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_1_3/MatMul*(
_output_shapes
:’’’’’’’’’$*
transpose_a( 
ģ
*gradients_2/dense_1_3/MatMul_grad/MatMul_1MatMulflatten_1_3/Reshape+gradients_2/activation_5_3/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_1_3/MatMul* 
_output_shapes
:
$*
transpose_a(*
T0
a
Const_64Const*
dtype0* 
_output_shapes
:
$*
valueB
$*    

Variable_16
VariableV2* 
_output_shapes
:
$*
	container *
dtype0*
shared_name *
shape:
$
§
Variable_16/AssignAssignVariable_16Const_64*
_class
loc:@Variable_16* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
t
Variable_16/readIdentityVariable_16*
T0*
_class
loc:@Variable_16* 
_output_shapes
:
$
a
Const_65Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_17
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

§
Variable_17/AssignAssignVariable_17Const_65*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_17
t
Variable_17/readIdentityVariable_17*
_class
loc:@Variable_17* 
_output_shapes
:
*
T0
a
Const_66Const*
dtype0* 
_output_shapes
:
*
valueB
*    

Variable_18
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

§
Variable_18/AssignAssignVariable_18Const_66* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_18*
T0*
use_locking(
t
Variable_18/readIdentityVariable_18*
_class
loc:@Variable_18* 
_output_shapes
:
*
T0
_
Const_67Const*
valueB	
*    *
_output_shapes
:	
*
dtype0

Variable_19
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 
¦
Variable_19/AssignAssignVariable_19Const_67*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_19
s
Variable_19/readIdentityVariable_19*
T0*
_class
loc:@Variable_19*
_output_shapes
:	

a
Const_68Const*
valueB
$*    * 
_output_shapes
:
$*
dtype0

Variable_20
VariableV2* 
_output_shapes
:
$*
	container *
shape:
$*
dtype0*
shared_name 
§
Variable_20/AssignAssignVariable_20Const_68*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_20
t
Variable_20/readIdentityVariable_20*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_20
a
Const_69Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_21
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
§
Variable_21/AssignAssignVariable_21Const_69*
_class
loc:@Variable_21* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
t
Variable_21/readIdentityVariable_21*
T0* 
_output_shapes
:
*
_class
loc:@Variable_21
a
Const_70Const*
valueB
*    *
dtype0* 
_output_shapes
:


Variable_22
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

§
Variable_22/AssignAssignVariable_22Const_70*
_class
loc:@Variable_22* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
t
Variable_22/readIdentityVariable_22*
T0*
_class
loc:@Variable_22* 
_output_shapes
:

_
Const_71Const*
dtype0*
_output_shapes
:	
*
valueB	
*    

Variable_23
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 
¦
Variable_23/AssignAssignVariable_23Const_71*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_23*
T0*
use_locking(
s
Variable_23/readIdentityVariable_23*
_output_shapes
:	
*
_class
loc:@Variable_23*
T0
M
mul_60/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_60Mulmul_60/xVariable_16/read* 
_output_shapes
:
$*
T0
j
	Square_16Square*gradients_2/dense_1_3/MatMul_grad/MatMul_1* 
_output_shapes
:
$*
T0
M
mul_61/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
M
mul_61Mulmul_61/x	Square_16*
T0* 
_output_shapes
:
$
H
add_32Addmul_60mul_61* 
_output_shapes
:
$*
T0

	Assign_32AssignVariable_16add_32*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_16
M
add_33/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_33AddVariable_20/readadd_33/y* 
_output_shapes
:
$*
T0
M
Const_72Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_73Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_20/MinimumMinimumadd_33Const_73*
T0* 
_output_shapes
:
$
j
clip_by_value_20Maximumclip_by_value_20/MinimumConst_72* 
_output_shapes
:
$*
T0
L
Sqrt_16Sqrtclip_by_value_20* 
_output_shapes
:
$*
T0
m
mul_62Mul*gradients_2/dense_1_3/MatMul_grad/MatMul_1Sqrt_16* 
_output_shapes
:
$*
T0
M
add_34/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
J
add_34Addadd_32add_34/y*
T0* 
_output_shapes
:
$
M
Const_74Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_75Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_21/MinimumMinimumadd_34Const_75*
T0* 
_output_shapes
:
$
j
clip_by_value_21Maximumclip_by_value_21/MinimumConst_74* 
_output_shapes
:
$*
T0
L
Sqrt_17Sqrtclip_by_value_21*
T0* 
_output_shapes
:
$
Q

truediv_16RealDivmul_62Sqrt_17* 
_output_shapes
:
$*
T0
O
mul_63Mul	lr_3/read
truediv_16* 
_output_shapes
:
$*
T0
U
sub_12Subdense_1/kernel/readmul_63* 
_output_shapes
:
$*
T0
¢
	Assign_33Assigndense_1/kernelsub_12* 
_output_shapes
:
$*
validate_shape(*!
_class
loc:@dense_1/kernel*
T0*
use_locking(
M
mul_64/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_64Mulmul_64/xVariable_20/read* 
_output_shapes
:
$*
T0
J
	Square_17Square
truediv_16* 
_output_shapes
:
$*
T0
M
mul_65/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
M
mul_65Mulmul_65/x	Square_17*
T0* 
_output_shapes
:
$
H
add_35Addmul_64mul_65*
T0* 
_output_shapes
:
$

	Assign_34AssignVariable_20add_35*
use_locking(*
T0*
_class
loc:@Variable_20*
validate_shape(* 
_output_shapes
:
$
M
mul_66/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
T
mul_66Mulmul_66/xVariable_17/read* 
_output_shapes
:
*
T0
j
	Square_18Square*gradients_2/dense_2_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_67/xConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL=
M
mul_67Mulmul_67/x	Square_18* 
_output_shapes
:
*
T0
H
add_36Addmul_66mul_67*
T0* 
_output_shapes
:


	Assign_35AssignVariable_17add_36*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_17
M
add_37/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
T
add_37AddVariable_21/readadd_37/y*
T0* 
_output_shapes
:

M
Const_76Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_77Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_22/MinimumMinimumadd_37Const_77* 
_output_shapes
:
*
T0
j
clip_by_value_22Maximumclip_by_value_22/MinimumConst_76* 
_output_shapes
:
*
T0
L
Sqrt_18Sqrtclip_by_value_22* 
_output_shapes
:
*
T0
m
mul_68Mul*gradients_2/dense_2_3/MatMul_grad/MatMul_1Sqrt_18* 
_output_shapes
:
*
T0
M
add_38/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
J
add_38Addadd_36add_38/y*
T0* 
_output_shapes
:

M
Const_78Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_79Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_23/MinimumMinimumadd_38Const_79*
T0* 
_output_shapes
:

j
clip_by_value_23Maximumclip_by_value_23/MinimumConst_78*
T0* 
_output_shapes
:

L
Sqrt_19Sqrtclip_by_value_23* 
_output_shapes
:
*
T0
Q

truediv_17RealDivmul_68Sqrt_19*
T0* 
_output_shapes
:

O
mul_69Mul	lr_3/read
truediv_17*
T0* 
_output_shapes
:

U
sub_13Subdense_2/kernel/readmul_69*
T0* 
_output_shapes
:

¢
	Assign_36Assigndense_2/kernelsub_13*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_70/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
T
mul_70Mulmul_70/xVariable_21/read* 
_output_shapes
:
*
T0
J
	Square_19Square
truediv_17* 
_output_shapes
:
*
T0
M
mul_71/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
M
mul_71Mulmul_71/x	Square_19* 
_output_shapes
:
*
T0
H
add_39Addmul_70mul_71* 
_output_shapes
:
*
T0

	Assign_37AssignVariable_21add_39*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_21
M
mul_72/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_72Mulmul_72/xVariable_18/read*
T0* 
_output_shapes
:

j
	Square_20Square*gradients_2/dense_3_3/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_73/xConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
M
mul_73Mulmul_73/x	Square_20*
T0* 
_output_shapes
:

H
add_40Addmul_72mul_73* 
_output_shapes
:
*
T0

	Assign_38AssignVariable_18add_40*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(* 
_output_shapes
:

M
add_41/yConst*
valueB
 *wĢ+2*
_output_shapes
: *
dtype0
T
add_41AddVariable_22/readadd_41/y*
T0* 
_output_shapes
:

M
Const_80Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_81Const*
valueB
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_24/MinimumMinimumadd_41Const_81*
T0* 
_output_shapes
:

j
clip_by_value_24Maximumclip_by_value_24/MinimumConst_80*
T0* 
_output_shapes
:

L
Sqrt_20Sqrtclip_by_value_24*
T0* 
_output_shapes
:

m
mul_74Mul*gradients_2/dense_3_3/MatMul_grad/MatMul_1Sqrt_20* 
_output_shapes
:
*
T0
M
add_42/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
J
add_42Addadd_40add_42/y*
T0* 
_output_shapes
:

M
Const_82Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_83Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_25/MinimumMinimumadd_42Const_83* 
_output_shapes
:
*
T0
j
clip_by_value_25Maximumclip_by_value_25/MinimumConst_82*
T0* 
_output_shapes
:

L
Sqrt_21Sqrtclip_by_value_25*
T0* 
_output_shapes
:

Q

truediv_18RealDivmul_74Sqrt_21*
T0* 
_output_shapes
:

O
mul_75Mul	lr_3/read
truediv_18*
T0* 
_output_shapes
:

U
sub_14Subdense_3/kernel/readmul_75*
T0* 
_output_shapes
:

¢
	Assign_39Assigndense_3/kernelsub_14* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_3/kernel*
T0*
use_locking(
M
mul_76/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
T
mul_76Mulmul_76/xVariable_22/read*
T0* 
_output_shapes
:

J
	Square_21Square
truediv_18* 
_output_shapes
:
*
T0
M
mul_77/xConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL=
M
mul_77Mulmul_77/x	Square_21*
T0* 
_output_shapes
:

H
add_43Addmul_76mul_77* 
_output_shapes
:
*
T0

	Assign_40AssignVariable_22add_43*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_22
M
mul_78/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_78Mulmul_78/xVariable_19/read*
T0*
_output_shapes
:	

i
	Square_22Square*gradients_2/dense_4_3/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_79/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_79Mulmul_79/x	Square_22*
_output_shapes
:	
*
T0
G
add_44Addmul_78mul_79*
T0*
_output_shapes
:	


	Assign_41AssignVariable_19add_44*
use_locking(*
T0*
_class
loc:@Variable_19*
validate_shape(*
_output_shapes
:	

M
add_45/yConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
S
add_45AddVariable_23/readadd_45/y*
T0*
_output_shapes
:	

M
Const_84Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_85Const*
valueB
 *  *
dtype0*
_output_shapes
: 
_
clip_by_value_26/MinimumMinimumadd_45Const_85*
_output_shapes
:	
*
T0
i
clip_by_value_26Maximumclip_by_value_26/MinimumConst_84*
T0*
_output_shapes
:	

K
Sqrt_22Sqrtclip_by_value_26*
_output_shapes
:	
*
T0
l
mul_80Mul*gradients_2/dense_4_3/MatMul_grad/MatMul_1Sqrt_22*
_output_shapes
:	
*
T0
M
add_46/yConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
I
add_46Addadd_44add_46/y*
_output_shapes
:	
*
T0
M
Const_86Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_87Const*
_output_shapes
: *
dtype0*
valueB
 *  
_
clip_by_value_27/MinimumMinimumadd_46Const_87*
_output_shapes
:	
*
T0
i
clip_by_value_27Maximumclip_by_value_27/MinimumConst_86*
T0*
_output_shapes
:	

K
Sqrt_23Sqrtclip_by_value_27*
_output_shapes
:	
*
T0
P

truediv_19RealDivmul_80Sqrt_23*
_output_shapes
:	
*
T0
N
mul_81Mul	lr_3/read
truediv_19*
_output_shapes
:	
*
T0
T
sub_15Subdense_4/kernel/readmul_81*
T0*
_output_shapes
:	

”
	Assign_42Assigndense_4/kernelsub_15*
_output_shapes
:	
*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
M
mul_82/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_82Mulmul_82/xVariable_23/read*
T0*
_output_shapes
:	

I
	Square_23Square
truediv_19*
T0*
_output_shapes
:	

M
mul_83/xConst*
valueB
 *ĶĢL=*
_output_shapes
: *
dtype0
L
mul_83Mulmul_83/x	Square_23*
T0*
_output_shapes
:	

G
add_47Addmul_82mul_83*
_output_shapes
:	
*
T0

	Assign_43AssignVariable_23add_47*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_23
·
group_deps_5NoOp^mul_59^Mean_15
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
¶
init_5NoOp^Variable_16/Assign^Variable_17/Assign^Variable_18/Assign^Variable_19/Assign^Variable_20/Assign^Variable_21/Assign^Variable_22/Assign^Variable_23/Assign""
	variablesõņ
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
C
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0

lr:0	lr/Assign	lr/read:0
%
decay:0decay/Assigndecay/read:0
4
iterations:0iterations/Assigniterations/read:0
"
lr_1:0lr_1/Assignlr_1/read:0
+
	decay_1:0decay_1/Assigndecay_1/read:0
:
iterations_1:0iterations_1/Assigniterations_1/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
"
lr_2:0lr_2/Assignlr_2/read:0
+
	decay_2:0decay_2/Assigndecay_2/read:0
:
iterations_2:0iterations_2/Assigniterations_2/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0
7
Variable_15:0Variable_15/AssignVariable_15/read:0
"
lr_3:0lr_3/Assignlr_3/read:0
+
	decay_3:0decay_3/Assigndecay_3/read:0
:
iterations_3:0iterations_3/Assigniterations_3/read:0
7
Variable_16:0Variable_16/AssignVariable_16/read:0
7
Variable_17:0Variable_17/AssignVariable_17/read:0
7
Variable_18:0Variable_18/AssignVariable_18/read:0
7
Variable_19:0Variable_19/AssignVariable_19/read:0
7
Variable_20:0Variable_20/AssignVariable_20/read:0
7
Variable_21:0Variable_21/AssignVariable_21/read:0
7
Variable_22:0Variable_22/AssignVariable_22/read:0
7
Variable_23:0Variable_23/AssignVariable_23/read:0"É
cond_contextÉüČ
ķ
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *
activation_2/Elu:0
dropout_1/cond/dropout/Floor:0
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/div:0
"dropout_1/cond/dropout/keep_prob:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/mul/Switch:1
dropout_1/cond/mul/y:0
dropout_1/cond/mul:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:01
activation_2/Elu:0dropout_1/cond/mul/Switch:1

dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*°
activation_2/Elu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0/
activation_2/Elu:0dropout_1/cond/Switch_1:0
ķ
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *
activation_3/Elu:0
dropout_2/cond/dropout/Floor:0
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/add:0
dropout_2/cond/dropout/div:0
"dropout_2/cond/dropout/keep_prob:0
dropout_2/cond/dropout/mul:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/mul/Switch:1
dropout_2/cond/mul/y:0
dropout_2/cond/mul:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:01
activation_3/Elu:0dropout_2/cond/mul/Switch:1

dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*°
activation_3/Elu:0
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0/
activation_3/Elu:0dropout_2/cond/Switch_1:0

dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *Æ
dropout_3/cond/dropout/Floor:0
dropout_3/cond/dropout/Shape:0
dropout_3/cond/dropout/add:0
dropout_3/cond/dropout/div:0
"dropout_3/cond/dropout/keep_prob:0
dropout_3/cond/dropout/mul:0
5dropout_3/cond/dropout/random_uniform/RandomUniform:0
+dropout_3/cond/dropout/random_uniform/max:0
+dropout_3/cond/dropout/random_uniform/min:0
+dropout_3/cond/dropout/random_uniform/mul:0
+dropout_3/cond/dropout/random_uniform/sub:0
'dropout_3/cond/dropout/random_uniform:0
dropout_3/cond/mul/Switch:1
dropout_3/cond/mul/y:0
dropout_3/cond/mul:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_t:0
max_pooling2d_1/transpose_1:0<
max_pooling2d_1/transpose_1:0dropout_3/cond/mul/Switch:1

dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*Ę
dropout_3/cond/Switch_1:0
dropout_3/cond/Switch_1:1
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:0
max_pooling2d_1/transpose_1:0:
max_pooling2d_1/transpose_1:0dropout_3/cond/Switch_1:0
ķ
dropout_4/cond/cond_textdropout_4/cond/pred_id:0dropout_4/cond/switch_t:0 *
activation_5/Elu:0
dropout_4/cond/dropout/Floor:0
dropout_4/cond/dropout/Shape:0
dropout_4/cond/dropout/add:0
dropout_4/cond/dropout/div:0
"dropout_4/cond/dropout/keep_prob:0
dropout_4/cond/dropout/mul:0
5dropout_4/cond/dropout/random_uniform/RandomUniform:0
+dropout_4/cond/dropout/random_uniform/max:0
+dropout_4/cond/dropout/random_uniform/min:0
+dropout_4/cond/dropout/random_uniform/mul:0
+dropout_4/cond/dropout/random_uniform/sub:0
'dropout_4/cond/dropout/random_uniform:0
dropout_4/cond/mul/Switch:1
dropout_4/cond/mul/y:0
dropout_4/cond/mul:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_t:01
activation_5/Elu:0dropout_4/cond/mul/Switch:1

dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*°
activation_5/Elu:0
dropout_4/cond/Switch_1:0
dropout_4/cond/Switch_1:1
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:0/
activation_5/Elu:0dropout_4/cond/Switch_1:0
ķ
dropout_5/cond/cond_textdropout_5/cond/pred_id:0dropout_5/cond/switch_t:0 *
activation_6/Elu:0
dropout_5/cond/dropout/Floor:0
dropout_5/cond/dropout/Shape:0
dropout_5/cond/dropout/add:0
dropout_5/cond/dropout/div:0
"dropout_5/cond/dropout/keep_prob:0
dropout_5/cond/dropout/mul:0
5dropout_5/cond/dropout/random_uniform/RandomUniform:0
+dropout_5/cond/dropout/random_uniform/max:0
+dropout_5/cond/dropout/random_uniform/min:0
+dropout_5/cond/dropout/random_uniform/mul:0
+dropout_5/cond/dropout/random_uniform/sub:0
'dropout_5/cond/dropout/random_uniform:0
dropout_5/cond/mul/Switch:1
dropout_5/cond/mul/y:0
dropout_5/cond/mul:0
dropout_5/cond/pred_id:0
dropout_5/cond/switch_t:01
activation_6/Elu:0dropout_5/cond/mul/Switch:1

dropout_5/cond/cond_text_1dropout_5/cond/pred_id:0dropout_5/cond/switch_f:0*°
activation_6/Elu:0
dropout_5/cond/Switch_1:0
dropout_5/cond/Switch_1:1
dropout_5/cond/pred_id:0
dropout_5/cond/switch_f:0/
activation_6/Elu:0dropout_5/cond/Switch_1:0
ķ
dropout_6/cond/cond_textdropout_6/cond/pred_id:0dropout_6/cond/switch_t:0 *
activation_7/Elu:0
dropout_6/cond/dropout/Floor:0
dropout_6/cond/dropout/Shape:0
dropout_6/cond/dropout/add:0
dropout_6/cond/dropout/div:0
"dropout_6/cond/dropout/keep_prob:0
dropout_6/cond/dropout/mul:0
5dropout_6/cond/dropout/random_uniform/RandomUniform:0
+dropout_6/cond/dropout/random_uniform/max:0
+dropout_6/cond/dropout/random_uniform/min:0
+dropout_6/cond/dropout/random_uniform/mul:0
+dropout_6/cond/dropout/random_uniform/sub:0
'dropout_6/cond/dropout/random_uniform:0
dropout_6/cond/mul/Switch:1
dropout_6/cond/mul/y:0
dropout_6/cond/mul:0
dropout_6/cond/pred_id:0
dropout_6/cond/switch_t:01
activation_7/Elu:0dropout_6/cond/mul/Switch:1

dropout_6/cond/cond_text_1dropout_6/cond/pred_id:0dropout_6/cond/switch_f:0*°
activation_7/Elu:0
dropout_6/cond/Switch_1:0
dropout_6/cond/Switch_1:1
dropout_6/cond/pred_id:0
dropout_6/cond/switch_f:0/
activation_7/Elu:0dropout_6/cond/Switch_1:0

dropout_1_1/cond/cond_textdropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_t:0 *Į
activation_2_1/Elu:0
 dropout_1_1/cond/dropout/Floor:0
 dropout_1_1/cond/dropout/Shape:0
dropout_1_1/cond/dropout/add:0
dropout_1_1/cond/dropout/div:0
$dropout_1_1/cond/dropout/keep_prob:0
dropout_1_1/cond/dropout/mul:0
7dropout_1_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_1_1/cond/dropout/random_uniform/max:0
-dropout_1_1/cond/dropout/random_uniform/min:0
-dropout_1_1/cond/dropout/random_uniform/mul:0
-dropout_1_1/cond/dropout/random_uniform/sub:0
)dropout_1_1/cond/dropout/random_uniform:0
dropout_1_1/cond/mul/Switch:1
dropout_1_1/cond/mul/y:0
dropout_1_1/cond/mul:0
dropout_1_1/cond/pred_id:0
dropout_1_1/cond/switch_t:05
activation_2_1/Elu:0dropout_1_1/cond/mul/Switch:1

dropout_1_1/cond/cond_text_1dropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_f:0*¾
activation_2_1/Elu:0
dropout_1_1/cond/Switch_1:0
dropout_1_1/cond/Switch_1:1
dropout_1_1/cond/pred_id:0
dropout_1_1/cond/switch_f:03
activation_2_1/Elu:0dropout_1_1/cond/Switch_1:0

dropout_2_1/cond/cond_textdropout_2_1/cond/pred_id:0dropout_2_1/cond/switch_t:0 *Į
activation_3_1/Elu:0
 dropout_2_1/cond/dropout/Floor:0
 dropout_2_1/cond/dropout/Shape:0
dropout_2_1/cond/dropout/add:0
dropout_2_1/cond/dropout/div:0
$dropout_2_1/cond/dropout/keep_prob:0
dropout_2_1/cond/dropout/mul:0
7dropout_2_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_2_1/cond/dropout/random_uniform/max:0
-dropout_2_1/cond/dropout/random_uniform/min:0
-dropout_2_1/cond/dropout/random_uniform/mul:0
-dropout_2_1/cond/dropout/random_uniform/sub:0
)dropout_2_1/cond/dropout/random_uniform:0
dropout_2_1/cond/mul/Switch:1
dropout_2_1/cond/mul/y:0
dropout_2_1/cond/mul:0
dropout_2_1/cond/pred_id:0
dropout_2_1/cond/switch_t:05
activation_3_1/Elu:0dropout_2_1/cond/mul/Switch:1

dropout_2_1/cond/cond_text_1dropout_2_1/cond/pred_id:0dropout_2_1/cond/switch_f:0*¾
activation_3_1/Elu:0
dropout_2_1/cond/Switch_1:0
dropout_2_1/cond/Switch_1:1
dropout_2_1/cond/pred_id:0
dropout_2_1/cond/switch_f:03
activation_3_1/Elu:0dropout_2_1/cond/Switch_1:0
±
dropout_3_1/cond/cond_textdropout_3_1/cond/pred_id:0dropout_3_1/cond/switch_t:0 *×
 dropout_3_1/cond/dropout/Floor:0
 dropout_3_1/cond/dropout/Shape:0
dropout_3_1/cond/dropout/add:0
dropout_3_1/cond/dropout/div:0
$dropout_3_1/cond/dropout/keep_prob:0
dropout_3_1/cond/dropout/mul:0
7dropout_3_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_3_1/cond/dropout/random_uniform/max:0
-dropout_3_1/cond/dropout/random_uniform/min:0
-dropout_3_1/cond/dropout/random_uniform/mul:0
-dropout_3_1/cond/dropout/random_uniform/sub:0
)dropout_3_1/cond/dropout/random_uniform:0
dropout_3_1/cond/mul/Switch:1
dropout_3_1/cond/mul/y:0
dropout_3_1/cond/mul:0
dropout_3_1/cond/pred_id:0
dropout_3_1/cond/switch_t:0
max_pooling2d_1_1/transpose_1:0@
max_pooling2d_1_1/transpose_1:0dropout_3_1/cond/mul/Switch:1
®
dropout_3_1/cond/cond_text_1dropout_3_1/cond/pred_id:0dropout_3_1/cond/switch_f:0*Ō
dropout_3_1/cond/Switch_1:0
dropout_3_1/cond/Switch_1:1
dropout_3_1/cond/pred_id:0
dropout_3_1/cond/switch_f:0
max_pooling2d_1_1/transpose_1:0>
max_pooling2d_1_1/transpose_1:0dropout_3_1/cond/Switch_1:0

dropout_4_1/cond/cond_textdropout_4_1/cond/pred_id:0dropout_4_1/cond/switch_t:0 *Į
activation_5_1/Elu:0
 dropout_4_1/cond/dropout/Floor:0
 dropout_4_1/cond/dropout/Shape:0
dropout_4_1/cond/dropout/add:0
dropout_4_1/cond/dropout/div:0
$dropout_4_1/cond/dropout/keep_prob:0
dropout_4_1/cond/dropout/mul:0
7dropout_4_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_4_1/cond/dropout/random_uniform/max:0
-dropout_4_1/cond/dropout/random_uniform/min:0
-dropout_4_1/cond/dropout/random_uniform/mul:0
-dropout_4_1/cond/dropout/random_uniform/sub:0
)dropout_4_1/cond/dropout/random_uniform:0
dropout_4_1/cond/mul/Switch:1
dropout_4_1/cond/mul/y:0
dropout_4_1/cond/mul:0
dropout_4_1/cond/pred_id:0
dropout_4_1/cond/switch_t:05
activation_5_1/Elu:0dropout_4_1/cond/mul/Switch:1

dropout_4_1/cond/cond_text_1dropout_4_1/cond/pred_id:0dropout_4_1/cond/switch_f:0*¾
activation_5_1/Elu:0
dropout_4_1/cond/Switch_1:0
dropout_4_1/cond/Switch_1:1
dropout_4_1/cond/pred_id:0
dropout_4_1/cond/switch_f:03
activation_5_1/Elu:0dropout_4_1/cond/Switch_1:0

dropout_5_1/cond/cond_textdropout_5_1/cond/pred_id:0dropout_5_1/cond/switch_t:0 *Į
activation_6_1/Elu:0
 dropout_5_1/cond/dropout/Floor:0
 dropout_5_1/cond/dropout/Shape:0
dropout_5_1/cond/dropout/add:0
dropout_5_1/cond/dropout/div:0
$dropout_5_1/cond/dropout/keep_prob:0
dropout_5_1/cond/dropout/mul:0
7dropout_5_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_5_1/cond/dropout/random_uniform/max:0
-dropout_5_1/cond/dropout/random_uniform/min:0
-dropout_5_1/cond/dropout/random_uniform/mul:0
-dropout_5_1/cond/dropout/random_uniform/sub:0
)dropout_5_1/cond/dropout/random_uniform:0
dropout_5_1/cond/mul/Switch:1
dropout_5_1/cond/mul/y:0
dropout_5_1/cond/mul:0
dropout_5_1/cond/pred_id:0
dropout_5_1/cond/switch_t:05
activation_6_1/Elu:0dropout_5_1/cond/mul/Switch:1

dropout_5_1/cond/cond_text_1dropout_5_1/cond/pred_id:0dropout_5_1/cond/switch_f:0*¾
activation_6_1/Elu:0
dropout_5_1/cond/Switch_1:0
dropout_5_1/cond/Switch_1:1
dropout_5_1/cond/pred_id:0
dropout_5_1/cond/switch_f:03
activation_6_1/Elu:0dropout_5_1/cond/Switch_1:0

dropout_6_1/cond/cond_textdropout_6_1/cond/pred_id:0dropout_6_1/cond/switch_t:0 *Į
activation_7_1/Elu:0
 dropout_6_1/cond/dropout/Floor:0
 dropout_6_1/cond/dropout/Shape:0
dropout_6_1/cond/dropout/add:0
dropout_6_1/cond/dropout/div:0
$dropout_6_1/cond/dropout/keep_prob:0
dropout_6_1/cond/dropout/mul:0
7dropout_6_1/cond/dropout/random_uniform/RandomUniform:0
-dropout_6_1/cond/dropout/random_uniform/max:0
-dropout_6_1/cond/dropout/random_uniform/min:0
-dropout_6_1/cond/dropout/random_uniform/mul:0
-dropout_6_1/cond/dropout/random_uniform/sub:0
)dropout_6_1/cond/dropout/random_uniform:0
dropout_6_1/cond/mul/Switch:1
dropout_6_1/cond/mul/y:0
dropout_6_1/cond/mul:0
dropout_6_1/cond/pred_id:0
dropout_6_1/cond/switch_t:05
activation_7_1/Elu:0dropout_6_1/cond/mul/Switch:1

dropout_6_1/cond/cond_text_1dropout_6_1/cond/pred_id:0dropout_6_1/cond/switch_f:0*¾
activation_7_1/Elu:0
dropout_6_1/cond/Switch_1:0
dropout_6_1/cond/Switch_1:1
dropout_6_1/cond/pred_id:0
dropout_6_1/cond/switch_f:03
activation_7_1/Elu:0dropout_6_1/cond/Switch_1:0

dropout_1_2/cond/cond_textdropout_1_2/cond/pred_id:0dropout_1_2/cond/switch_t:0 *Į
activation_2_2/Elu:0
 dropout_1_2/cond/dropout/Floor:0
 dropout_1_2/cond/dropout/Shape:0
dropout_1_2/cond/dropout/add:0
dropout_1_2/cond/dropout/div:0
$dropout_1_2/cond/dropout/keep_prob:0
dropout_1_2/cond/dropout/mul:0
7dropout_1_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_1_2/cond/dropout/random_uniform/max:0
-dropout_1_2/cond/dropout/random_uniform/min:0
-dropout_1_2/cond/dropout/random_uniform/mul:0
-dropout_1_2/cond/dropout/random_uniform/sub:0
)dropout_1_2/cond/dropout/random_uniform:0
dropout_1_2/cond/mul/Switch:1
dropout_1_2/cond/mul/y:0
dropout_1_2/cond/mul:0
dropout_1_2/cond/pred_id:0
dropout_1_2/cond/switch_t:05
activation_2_2/Elu:0dropout_1_2/cond/mul/Switch:1

dropout_1_2/cond/cond_text_1dropout_1_2/cond/pred_id:0dropout_1_2/cond/switch_f:0*¾
activation_2_2/Elu:0
dropout_1_2/cond/Switch_1:0
dropout_1_2/cond/Switch_1:1
dropout_1_2/cond/pred_id:0
dropout_1_2/cond/switch_f:03
activation_2_2/Elu:0dropout_1_2/cond/Switch_1:0

dropout_2_2/cond/cond_textdropout_2_2/cond/pred_id:0dropout_2_2/cond/switch_t:0 *Į
activation_3_2/Elu:0
 dropout_2_2/cond/dropout/Floor:0
 dropout_2_2/cond/dropout/Shape:0
dropout_2_2/cond/dropout/add:0
dropout_2_2/cond/dropout/div:0
$dropout_2_2/cond/dropout/keep_prob:0
dropout_2_2/cond/dropout/mul:0
7dropout_2_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_2_2/cond/dropout/random_uniform/max:0
-dropout_2_2/cond/dropout/random_uniform/min:0
-dropout_2_2/cond/dropout/random_uniform/mul:0
-dropout_2_2/cond/dropout/random_uniform/sub:0
)dropout_2_2/cond/dropout/random_uniform:0
dropout_2_2/cond/mul/Switch:1
dropout_2_2/cond/mul/y:0
dropout_2_2/cond/mul:0
dropout_2_2/cond/pred_id:0
dropout_2_2/cond/switch_t:05
activation_3_2/Elu:0dropout_2_2/cond/mul/Switch:1

dropout_2_2/cond/cond_text_1dropout_2_2/cond/pred_id:0dropout_2_2/cond/switch_f:0*¾
activation_3_2/Elu:0
dropout_2_2/cond/Switch_1:0
dropout_2_2/cond/Switch_1:1
dropout_2_2/cond/pred_id:0
dropout_2_2/cond/switch_f:03
activation_3_2/Elu:0dropout_2_2/cond/Switch_1:0
±
dropout_3_2/cond/cond_textdropout_3_2/cond/pred_id:0dropout_3_2/cond/switch_t:0 *×
 dropout_3_2/cond/dropout/Floor:0
 dropout_3_2/cond/dropout/Shape:0
dropout_3_2/cond/dropout/add:0
dropout_3_2/cond/dropout/div:0
$dropout_3_2/cond/dropout/keep_prob:0
dropout_3_2/cond/dropout/mul:0
7dropout_3_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_3_2/cond/dropout/random_uniform/max:0
-dropout_3_2/cond/dropout/random_uniform/min:0
-dropout_3_2/cond/dropout/random_uniform/mul:0
-dropout_3_2/cond/dropout/random_uniform/sub:0
)dropout_3_2/cond/dropout/random_uniform:0
dropout_3_2/cond/mul/Switch:1
dropout_3_2/cond/mul/y:0
dropout_3_2/cond/mul:0
dropout_3_2/cond/pred_id:0
dropout_3_2/cond/switch_t:0
max_pooling2d_1_2/transpose_1:0@
max_pooling2d_1_2/transpose_1:0dropout_3_2/cond/mul/Switch:1
®
dropout_3_2/cond/cond_text_1dropout_3_2/cond/pred_id:0dropout_3_2/cond/switch_f:0*Ō
dropout_3_2/cond/Switch_1:0
dropout_3_2/cond/Switch_1:1
dropout_3_2/cond/pred_id:0
dropout_3_2/cond/switch_f:0
max_pooling2d_1_2/transpose_1:0>
max_pooling2d_1_2/transpose_1:0dropout_3_2/cond/Switch_1:0

dropout_4_2/cond/cond_textdropout_4_2/cond/pred_id:0dropout_4_2/cond/switch_t:0 *Į
activation_5_2/Elu:0
 dropout_4_2/cond/dropout/Floor:0
 dropout_4_2/cond/dropout/Shape:0
dropout_4_2/cond/dropout/add:0
dropout_4_2/cond/dropout/div:0
$dropout_4_2/cond/dropout/keep_prob:0
dropout_4_2/cond/dropout/mul:0
7dropout_4_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_4_2/cond/dropout/random_uniform/max:0
-dropout_4_2/cond/dropout/random_uniform/min:0
-dropout_4_2/cond/dropout/random_uniform/mul:0
-dropout_4_2/cond/dropout/random_uniform/sub:0
)dropout_4_2/cond/dropout/random_uniform:0
dropout_4_2/cond/mul/Switch:1
dropout_4_2/cond/mul/y:0
dropout_4_2/cond/mul:0
dropout_4_2/cond/pred_id:0
dropout_4_2/cond/switch_t:05
activation_5_2/Elu:0dropout_4_2/cond/mul/Switch:1

dropout_4_2/cond/cond_text_1dropout_4_2/cond/pred_id:0dropout_4_2/cond/switch_f:0*¾
activation_5_2/Elu:0
dropout_4_2/cond/Switch_1:0
dropout_4_2/cond/Switch_1:1
dropout_4_2/cond/pred_id:0
dropout_4_2/cond/switch_f:03
activation_5_2/Elu:0dropout_4_2/cond/Switch_1:0

dropout_5_2/cond/cond_textdropout_5_2/cond/pred_id:0dropout_5_2/cond/switch_t:0 *Į
activation_6_2/Elu:0
 dropout_5_2/cond/dropout/Floor:0
 dropout_5_2/cond/dropout/Shape:0
dropout_5_2/cond/dropout/add:0
dropout_5_2/cond/dropout/div:0
$dropout_5_2/cond/dropout/keep_prob:0
dropout_5_2/cond/dropout/mul:0
7dropout_5_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_5_2/cond/dropout/random_uniform/max:0
-dropout_5_2/cond/dropout/random_uniform/min:0
-dropout_5_2/cond/dropout/random_uniform/mul:0
-dropout_5_2/cond/dropout/random_uniform/sub:0
)dropout_5_2/cond/dropout/random_uniform:0
dropout_5_2/cond/mul/Switch:1
dropout_5_2/cond/mul/y:0
dropout_5_2/cond/mul:0
dropout_5_2/cond/pred_id:0
dropout_5_2/cond/switch_t:05
activation_6_2/Elu:0dropout_5_2/cond/mul/Switch:1

dropout_5_2/cond/cond_text_1dropout_5_2/cond/pred_id:0dropout_5_2/cond/switch_f:0*¾
activation_6_2/Elu:0
dropout_5_2/cond/Switch_1:0
dropout_5_2/cond/Switch_1:1
dropout_5_2/cond/pred_id:0
dropout_5_2/cond/switch_f:03
activation_6_2/Elu:0dropout_5_2/cond/Switch_1:0

dropout_6_2/cond/cond_textdropout_6_2/cond/pred_id:0dropout_6_2/cond/switch_t:0 *Į
activation_7_2/Elu:0
 dropout_6_2/cond/dropout/Floor:0
 dropout_6_2/cond/dropout/Shape:0
dropout_6_2/cond/dropout/add:0
dropout_6_2/cond/dropout/div:0
$dropout_6_2/cond/dropout/keep_prob:0
dropout_6_2/cond/dropout/mul:0
7dropout_6_2/cond/dropout/random_uniform/RandomUniform:0
-dropout_6_2/cond/dropout/random_uniform/max:0
-dropout_6_2/cond/dropout/random_uniform/min:0
-dropout_6_2/cond/dropout/random_uniform/mul:0
-dropout_6_2/cond/dropout/random_uniform/sub:0
)dropout_6_2/cond/dropout/random_uniform:0
dropout_6_2/cond/mul/Switch:1
dropout_6_2/cond/mul/y:0
dropout_6_2/cond/mul:0
dropout_6_2/cond/pred_id:0
dropout_6_2/cond/switch_t:05
activation_7_2/Elu:0dropout_6_2/cond/mul/Switch:1

dropout_6_2/cond/cond_text_1dropout_6_2/cond/pred_id:0dropout_6_2/cond/switch_f:0*¾
activation_7_2/Elu:0
dropout_6_2/cond/Switch_1:0
dropout_6_2/cond/Switch_1:1
dropout_6_2/cond/pred_id:0
dropout_6_2/cond/switch_f:03
activation_7_2/Elu:0dropout_6_2/cond/Switch_1:0

dropout_1_3/cond/cond_textdropout_1_3/cond/pred_id:0dropout_1_3/cond/switch_t:0 *Į
activation_2_3/Elu:0
 dropout_1_3/cond/dropout/Floor:0
 dropout_1_3/cond/dropout/Shape:0
dropout_1_3/cond/dropout/add:0
dropout_1_3/cond/dropout/div:0
$dropout_1_3/cond/dropout/keep_prob:0
dropout_1_3/cond/dropout/mul:0
7dropout_1_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_1_3/cond/dropout/random_uniform/max:0
-dropout_1_3/cond/dropout/random_uniform/min:0
-dropout_1_3/cond/dropout/random_uniform/mul:0
-dropout_1_3/cond/dropout/random_uniform/sub:0
)dropout_1_3/cond/dropout/random_uniform:0
dropout_1_3/cond/mul/Switch:1
dropout_1_3/cond/mul/y:0
dropout_1_3/cond/mul:0
dropout_1_3/cond/pred_id:0
dropout_1_3/cond/switch_t:05
activation_2_3/Elu:0dropout_1_3/cond/mul/Switch:1

dropout_1_3/cond/cond_text_1dropout_1_3/cond/pred_id:0dropout_1_3/cond/switch_f:0*¾
activation_2_3/Elu:0
dropout_1_3/cond/Switch_1:0
dropout_1_3/cond/Switch_1:1
dropout_1_3/cond/pred_id:0
dropout_1_3/cond/switch_f:03
activation_2_3/Elu:0dropout_1_3/cond/Switch_1:0

dropout_2_3/cond/cond_textdropout_2_3/cond/pred_id:0dropout_2_3/cond/switch_t:0 *Į
activation_3_3/Elu:0
 dropout_2_3/cond/dropout/Floor:0
 dropout_2_3/cond/dropout/Shape:0
dropout_2_3/cond/dropout/add:0
dropout_2_3/cond/dropout/div:0
$dropout_2_3/cond/dropout/keep_prob:0
dropout_2_3/cond/dropout/mul:0
7dropout_2_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_2_3/cond/dropout/random_uniform/max:0
-dropout_2_3/cond/dropout/random_uniform/min:0
-dropout_2_3/cond/dropout/random_uniform/mul:0
-dropout_2_3/cond/dropout/random_uniform/sub:0
)dropout_2_3/cond/dropout/random_uniform:0
dropout_2_3/cond/mul/Switch:1
dropout_2_3/cond/mul/y:0
dropout_2_3/cond/mul:0
dropout_2_3/cond/pred_id:0
dropout_2_3/cond/switch_t:05
activation_3_3/Elu:0dropout_2_3/cond/mul/Switch:1

dropout_2_3/cond/cond_text_1dropout_2_3/cond/pred_id:0dropout_2_3/cond/switch_f:0*¾
activation_3_3/Elu:0
dropout_2_3/cond/Switch_1:0
dropout_2_3/cond/Switch_1:1
dropout_2_3/cond/pred_id:0
dropout_2_3/cond/switch_f:03
activation_3_3/Elu:0dropout_2_3/cond/Switch_1:0
±
dropout_3_3/cond/cond_textdropout_3_3/cond/pred_id:0dropout_3_3/cond/switch_t:0 *×
 dropout_3_3/cond/dropout/Floor:0
 dropout_3_3/cond/dropout/Shape:0
dropout_3_3/cond/dropout/add:0
dropout_3_3/cond/dropout/div:0
$dropout_3_3/cond/dropout/keep_prob:0
dropout_3_3/cond/dropout/mul:0
7dropout_3_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_3_3/cond/dropout/random_uniform/max:0
-dropout_3_3/cond/dropout/random_uniform/min:0
-dropout_3_3/cond/dropout/random_uniform/mul:0
-dropout_3_3/cond/dropout/random_uniform/sub:0
)dropout_3_3/cond/dropout/random_uniform:0
dropout_3_3/cond/mul/Switch:1
dropout_3_3/cond/mul/y:0
dropout_3_3/cond/mul:0
dropout_3_3/cond/pred_id:0
dropout_3_3/cond/switch_t:0
max_pooling2d_1_3/transpose_1:0@
max_pooling2d_1_3/transpose_1:0dropout_3_3/cond/mul/Switch:1
®
dropout_3_3/cond/cond_text_1dropout_3_3/cond/pred_id:0dropout_3_3/cond/switch_f:0*Ō
dropout_3_3/cond/Switch_1:0
dropout_3_3/cond/Switch_1:1
dropout_3_3/cond/pred_id:0
dropout_3_3/cond/switch_f:0
max_pooling2d_1_3/transpose_1:0>
max_pooling2d_1_3/transpose_1:0dropout_3_3/cond/Switch_1:0

dropout_4_3/cond/cond_textdropout_4_3/cond/pred_id:0dropout_4_3/cond/switch_t:0 *Į
activation_5_3/Elu:0
 dropout_4_3/cond/dropout/Floor:0
 dropout_4_3/cond/dropout/Shape:0
dropout_4_3/cond/dropout/add:0
dropout_4_3/cond/dropout/div:0
$dropout_4_3/cond/dropout/keep_prob:0
dropout_4_3/cond/dropout/mul:0
7dropout_4_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_4_3/cond/dropout/random_uniform/max:0
-dropout_4_3/cond/dropout/random_uniform/min:0
-dropout_4_3/cond/dropout/random_uniform/mul:0
-dropout_4_3/cond/dropout/random_uniform/sub:0
)dropout_4_3/cond/dropout/random_uniform:0
dropout_4_3/cond/mul/Switch:1
dropout_4_3/cond/mul/y:0
dropout_4_3/cond/mul:0
dropout_4_3/cond/pred_id:0
dropout_4_3/cond/switch_t:05
activation_5_3/Elu:0dropout_4_3/cond/mul/Switch:1

dropout_4_3/cond/cond_text_1dropout_4_3/cond/pred_id:0dropout_4_3/cond/switch_f:0*¾
activation_5_3/Elu:0
dropout_4_3/cond/Switch_1:0
dropout_4_3/cond/Switch_1:1
dropout_4_3/cond/pred_id:0
dropout_4_3/cond/switch_f:03
activation_5_3/Elu:0dropout_4_3/cond/Switch_1:0

dropout_5_3/cond/cond_textdropout_5_3/cond/pred_id:0dropout_5_3/cond/switch_t:0 *Į
activation_6_3/Elu:0
 dropout_5_3/cond/dropout/Floor:0
 dropout_5_3/cond/dropout/Shape:0
dropout_5_3/cond/dropout/add:0
dropout_5_3/cond/dropout/div:0
$dropout_5_3/cond/dropout/keep_prob:0
dropout_5_3/cond/dropout/mul:0
7dropout_5_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_5_3/cond/dropout/random_uniform/max:0
-dropout_5_3/cond/dropout/random_uniform/min:0
-dropout_5_3/cond/dropout/random_uniform/mul:0
-dropout_5_3/cond/dropout/random_uniform/sub:0
)dropout_5_3/cond/dropout/random_uniform:0
dropout_5_3/cond/mul/Switch:1
dropout_5_3/cond/mul/y:0
dropout_5_3/cond/mul:0
dropout_5_3/cond/pred_id:0
dropout_5_3/cond/switch_t:05
activation_6_3/Elu:0dropout_5_3/cond/mul/Switch:1

dropout_5_3/cond/cond_text_1dropout_5_3/cond/pred_id:0dropout_5_3/cond/switch_f:0*¾
activation_6_3/Elu:0
dropout_5_3/cond/Switch_1:0
dropout_5_3/cond/Switch_1:1
dropout_5_3/cond/pred_id:0
dropout_5_3/cond/switch_f:03
activation_6_3/Elu:0dropout_5_3/cond/Switch_1:0

dropout_6_3/cond/cond_textdropout_6_3/cond/pred_id:0dropout_6_3/cond/switch_t:0 *Į
activation_7_3/Elu:0
 dropout_6_3/cond/dropout/Floor:0
 dropout_6_3/cond/dropout/Shape:0
dropout_6_3/cond/dropout/add:0
dropout_6_3/cond/dropout/div:0
$dropout_6_3/cond/dropout/keep_prob:0
dropout_6_3/cond/dropout/mul:0
7dropout_6_3/cond/dropout/random_uniform/RandomUniform:0
-dropout_6_3/cond/dropout/random_uniform/max:0
-dropout_6_3/cond/dropout/random_uniform/min:0
-dropout_6_3/cond/dropout/random_uniform/mul:0
-dropout_6_3/cond/dropout/random_uniform/sub:0
)dropout_6_3/cond/dropout/random_uniform:0
dropout_6_3/cond/mul/Switch:1
dropout_6_3/cond/mul/y:0
dropout_6_3/cond/mul:0
dropout_6_3/cond/pred_id:0
dropout_6_3/cond/switch_t:05
activation_7_3/Elu:0dropout_6_3/cond/mul/Switch:1

dropout_6_3/cond/cond_text_1dropout_6_3/cond/pred_id:0dropout_6_3/cond/switch_f:0*¾
activation_7_3/Elu:0
dropout_6_3/cond/Switch_1:0
dropout_6_3/cond/Switch_1:1
dropout_6_3/cond/pred_id:0
dropout_6_3/cond/switch_f:03
activation_7_3/Elu:0dropout_6_3/cond/Switch_1:0"
trainable_variablesõņ
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
C
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0

lr:0	lr/Assign	lr/read:0
%
decay:0decay/Assigndecay/read:0
4
iterations:0iterations/Assigniterations/read:0
"
lr_1:0lr_1/Assignlr_1/read:0
+
	decay_1:0decay_1/Assigndecay_1/read:0
:
iterations_1:0iterations_1/Assigniterations_1/read:0
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
4
Variable_2:0Variable_2/AssignVariable_2/read:0
4
Variable_3:0Variable_3/AssignVariable_3/read:0
4
Variable_4:0Variable_4/AssignVariable_4/read:0
4
Variable_5:0Variable_5/AssignVariable_5/read:0
4
Variable_6:0Variable_6/AssignVariable_6/read:0
4
Variable_7:0Variable_7/AssignVariable_7/read:0
"
lr_2:0lr_2/Assignlr_2/read:0
+
	decay_2:0decay_2/Assigndecay_2/read:0
:
iterations_2:0iterations_2/Assigniterations_2/read:0
4
Variable_8:0Variable_8/AssignVariable_8/read:0
4
Variable_9:0Variable_9/AssignVariable_9/read:0
7
Variable_10:0Variable_10/AssignVariable_10/read:0
7
Variable_11:0Variable_11/AssignVariable_11/read:0
7
Variable_12:0Variable_12/AssignVariable_12/read:0
7
Variable_13:0Variable_13/AssignVariable_13/read:0
7
Variable_14:0Variable_14/AssignVariable_14/read:0
7
Variable_15:0Variable_15/AssignVariable_15/read:0
"
lr_3:0lr_3/Assignlr_3/read:0
+
	decay_3:0decay_3/Assigndecay_3/read:0
:
iterations_3:0iterations_3/Assigniterations_3/read:0
7
Variable_16:0Variable_16/AssignVariable_16/read:0
7
Variable_17:0Variable_17/AssignVariable_17/read:0
7
Variable_18:0Variable_18/AssignVariable_18/read:0
7
Variable_19:0Variable_19/AssignVariable_19/read:0
7
Variable_20:0Variable_20/AssignVariable_20/read:0
7
Variable_21:0Variable_21/AssignVariable_21/read:0
7
Variable_22:0Variable_22/AssignVariable_22/read:0
7
Variable_23:0Variable_23/AssignVariable_23/read:0 čģ       	āł	8SÖA*

val_acc=
?8ćĪ       ēĪų	Øł	8SÖA*


accµ¼±>õ        ČĮ	ńł	8SÖA*

val_loss6 ?g       £K"	'ł	8SÖA*

loss£²@:č×V       `/ß#	{9J
8SÖA*

val_accÉ/V?ĢŪ|       ń(	;J
8SÖA*


accJ?¾÷ķ       ŁÜ2	ą;J
8SÖA*

val_loss7Ī*?Ś¢h,       Ų-	<J
8SÖA*

lossŁ?½Sßõ       `/ß#	Ó
8SÖA*

val_acc
×c? iĒ*       ń(	
8SÖA*


accĀ"?h®±į       ŁÜ2	¾
8SÖA*

val_loss/7ą>?ī¹       Ų-	ē
8SÖA*

loss]?jŪsÖ       `/ß#	y/ń
8SÖA*

val_acc8Æf?+ĘŅ       ń(	J0ń
8SÖA*


acciČ9?¦ß<       ŁÜ2	¹:ń
8SÖA*

val_loss«]Į>Ņi8       Ų-	ž:ń
8SÖA*

loss³¦w?}"#¢       `/ß#	Ó!J8SÖA*

val_accĮl?EŌÄ       ń(	ä"J8SÖA*


acc®G?gßn       ŁÜ2	P#J8SÖA*

val_lossŗ\>ü'       Ų-	£#J8SÖA*

lossÉ)@?Zg°       `/ß#	5£8SÖA*

val_accšĶk?1ūĘ       ń(	Z£8SÖA*


accėQ?QŪ­(       ŁÜ2	£8SÖA*

val_lossKÅ>éōļ       Ų-	Ā£8SÖA*

loss>?#?gf       `/ß#		É÷8SÖA*

val_accļīn?!jŅ       ń(	¼É÷8SÖA*


accŲT?ģSĢ       ŁÜ2	ōÉ÷8SÖA*

val_loss£nd>¤£       Ų-	Ź÷8SÖA*

lossv?Ū       `/ß#	,F8SÖA*

val_accĄ7o?Ķd«       ń(	åF8SÖA*


accY?V¬X       ŁÜ2	F8SÖA*

val_lossżŅU>Ba       Ų-	HF8SÖA*

lossDÅ’>`dš/       `/ß#	g`8SÖA*

val_acc”r?÷%"       ń(	9a8SÖA*


acc×^?ĆMZå       ŁÜ2	a8SÖA*

val_loss$M>óß	Į       Ų-	Āa8SÖA*

loss1­å>Ø-&¬       `/ß#	eķ8SÖA	*

val_acccÉo?w­ĖW       ń(	fķ8SÖA	*


accćfa?³
       ŁÜ2	åfķ8SÖA	*

val_loss,!V>®×įv       Ų-	,gķ8SÖA	*

lossDrĮ>źD       `/ß#	£~>8SÖA
*

val_acc4p?^       ń(	P>8SÖA
*


accüg?»®bļ       ŁÜ2	>8SÖA
*

val_lossöV_>ßŠZ7       Ų-	¾>8SÖA
*

loss+¢>īäō       `/ß#	{8SÖA*

val_acc×£p?Npłż       ń(	d8SÖA*


accųi?Ē=dø       ŁÜ2	¼8SÖA*

val_lossŠåN>ćKo$       Ų-	8SÖA*

lossj} >`¬š       `/ß#	ā8SÖA*

val_accK~q?×FM       ń(	lā8SÖA*


acc2½l?ūĻ}       ŁÜ2	¼ā8SÖA*

val_loss¦"I>B&Po       Ų-	żā8SÖA*

lossöŹ>9°±ż       `/ß#	Å18SÖA*

val_acc”r?Üāi(       ń(	ĘÅ18SÖA*


accOn?
       ŁÜ2	ūÅ18SÖA*

val_lossm?>_`(       Ų-	'Ę18SÖA*

loss­=y>Ql
9       `/ß#	lS8SÖA*

val_accbźr?9­z:       ń(	¾T8SÖA*


accŪ¶m?āŃ
       ŁÜ2	U8SÖA*

val_lossz}J>æns       Ų-	GU8SÖA*

lossśs{>ķ/m6       `/ß#	Ū8SÖA*

val_accčt?p.Č       ń(	TŪ8SÖA*


accLo?²,õ       ŁÜ2	Ū8SÖA*

val_lossõĻI>ØŻĄ       Ų-	ĖŪ8SÖA*

losss i>
Üp       `/ß#	Ŗy)8SÖA*

val_acc”r?i\š       ń(	`z)8SÖA*


acc=Ļs??¢+       ŁÜ2	z)8SÖA*

val_lossĆ8P>a       Ų-	Įz)8SÖA*

loss381>,       `/ß#	Ļt8SÖA*

val_acc§t?z       ń(	at8SÖA*


accÓs?bI»£       ŁÜ2	t8SÖA*

val_loss<@K>Śxŗ7       Ų-	Ōt8SÖA*

loss@~'>	ßC       `/ß#	¾=æ8SÖA*

val_acc|s?k3       ń(	c>æ8SÖA*


acc_¶r?ØĄ7       ŁÜ2	¤>æ8SÖA*

val_loss2?>mh       Ų-	Ż>æ8SÖA*

loss6ōG>i06/       `/ß#	E8SÖA*

val_accbźr?,ÖĆ       ń(	K8SÖA*


accPu?GüŪŃ       ŁÜ2	8SÖA*

val_lossyÅQ>1żŖÜ       Ų-	ß8SÖA*

loss2>ß Śŗ       `/ß#	n_8SÖA*

val_accčt?ryĻ       ń(	n_8SÖA*


accęČt?ĢIż       ŁÜ2	Żn_8SÖA*

val_loss?¢S>Ž7`       Ų-	o_8SÖA*

loss
%>r¤X       `/ß#	ø,®8SÖA*

val_accJt?£xķ       ń(	 -®8SÖA*


accĀu?`µ¼       ŁÜ2	ę-®8SÖA*

val_loss_?>įŠA       Ų-	 .®8SÖA*

loss)ē>ė»K©       `/ß#	Å"8SÖA*

val_accĀu?šsM       ń(	E#8SÖA*


accPu?³m¶$       ŁÜ2	z#8SÖA*

val_lossö7>¾B;       Ų-	¦#8SÖA*

lossk >ńI2ė       `/ß#	ßR8SÖA*

val_accv?U<x       ń(	R8SÖA*


accĪ}v?ÅzĄĀ       ŁÜ2	·R8SÖA*

val_lossļōA>m²£       Ų-	įR8SÖA*

loss2½>1Ä        `/ß#	FŃ¤8SÖA*

val_accv?µŹ2       ń(	Ņ¤8SÖA*


accāµw?”Ŗ³!       ŁÜ2	BŅ¤8SÖA*

val_loss0L>A@v       Ų-	sŅ¤8SÖA*

lossūĶ=°²$m       `/ß#	ęū8SÖA*

val_accĀu?Šķmķ       ń(	t”ū8SÖA*


acc!qx?lØ       ŁÜ2	e¢ū8SÖA*

val_loss?EF>ÆŪ«       Ų-	8£ū8SÖA*

loss¹īŃ=šB       `/ß#	ZsN8SÖA*

val_accav?“-Ź       ń(	ösN8SÖA*


acc!qx?Ī®Y(       ŁÜ2	:tN8SÖA*

val_lossp(Q>!4Ų       Ų-	stN8SÖA*

lossßĪ=j§¾       `/ß#	Ń”8SÖA*

val_accav?’āń       ń(	Ņ”8SÖA*


accģQx?éśĆĢ       ŁÜ2	KŅ”8SÖA*

val_lossÜFM>ąń%       Ų-	uŅ”8SÖA*

loss Ķ×=ŲnZ*       `/ß#	ßŅō8SÖA*

val_accav?nł       ń(	Óō8SÖA*


accKy?;čT       ŁÜ2	×Óō8SÖA*

val_lossT>3ąń       Ų-	
Ōō8SÖA*

lossĘOÕ=ėŁ}       `/ß#	øI8SÖA*

val_accĀu?±@       ń(	¤I8SÖA*


accsdz?Ż'3w       ŁÜ2	I8SÖA*

val_lossÅ`_>õWj©       Ų-	QI8SÖA*

loss=¦I«®       `/ß#	©8SÖA*

val_acc2Tv?£Ēī       ń(	J8SÖA*


acc	&z?AaŌp       ŁÜ2	8SÖA*

val_lossz\Q>n’5Y       Ų-	Ķ8SÖA*

lossdž”=æą¹       `/ß#	h ņ8SÖA*

val_acc¦.w?ī%       ń(	R”ņ8SÖA*


acc} {?P¢h       ŁÜ2	„”ņ8SÖA*

val_loss}_K>ųå>;       Ų-	ē”ņ8SÖA*

lossĖl=²9       `/ß#	³/A8SÖA *

val_acc2Tv?óµXQ       ń(	w0A8SÖA *


acc`,y?Ōe,*       ŁÜ2	Ś0A8SÖA *

val_lossÄCG>Öfü’       Ų-	%1A8SÖA *

lossā©ø=)Ł¢y       `/ß#	(č8SÖA!*

val_accav?!Ś¬$       ń(	ėč8SÖA!*


acc} {?Pč       ŁÜ2	Fé8SÖA!*

val_lossŹM>wj       Ų-	é8SÖA!*

loss}=A       `/ß#	]ź8SÖA"*

val_accv?Æ       ń(	ź8SÖA"*


acc0|?aCy       ŁÜ2	9ź8SÖA"*

val_loss”¬T>        Ų-	bź8SÖA"*

lossn_@=1;!       `/ß#	kĪ<8SÖA#*

val_acc¾yu?ķ       ń(	žĪ<8SÖA#*


accsdz?ųõßĶ       ŁÜ2	>Ļ<8SÖA#*

val_lossÓH`>\šWI       Ų-	rĻ<8SÖA#*

loss8=ÕĪćS       `/ß#	*Ī8SÖA$*

val_accĀu?<)y       ń(	æĪ8SÖA$*


acc&ś{?Q[Žm       ŁÜ2	’Ī8SÖA$*

val_loss³|p>Q6       Ų-	2Ļ8SÖA$*

loss.Y=$H¾       `/ß#	Żį8SÖA%*

val_accav?Oŗ}O       ń(	Žį8SÖA%*


acc[|?FBPļ       ŁÜ2	UŽį8SÖA%*

val_lossiŲa>aBĻ9       Ų-	Žį8SÖA%*

lossæ£m=ų¢Ł       `/ß#	dČ18SÖA&*

val_accv?µ=ó       ń(	ōČ18SÖA&*


acc	&z? Ģ„ē       ŁÜ2	.É18SÖA&*

val_lossG#`>|ąį²       Ų-	^É18SÖA&*

lossŚ=Å
},       `/ß#	P,8SÖA'*

val_acc2Tv?0Öw       ń(	-8SÖA'*


acc^{?Põ       ŁÜ2	O-8SÖA'*

val_lossQ#[>4Ń        Ų-	-8SÖA'*

loss.«y=%ż1Ū       `/ß#	1Ņ8SÖA(*

val_acc2Tv?3|       ń(	2Ņ8SÖA(*


accē>{?
       ŁÜ2	3Ņ8SÖA(*

val_loss¢R>ņšį^       Ų-	3Ņ8SÖA(*

lossŅr=JWÆī       `/ß#	#8SÖA)*

val_acc2Tv?Č­       ń(	ī#8SÖA)*


accQ}{?Q0       ŁÜ2	_#8SÖA)*

val_loss[tY>«µ;       Ų-	æ#8SÖA)*

lossWT=RĒ'       `/ß#	cs8SÖA**

val_acc¦.w?"ņū	       ń(	Qds8SÖA**


accūv|?RN
       ŁÜ2	ds8SÖA**

val_lossž*[>ÉŖ       Ų-	Ųds8SÖA**

lossNxM=_<       `/ß#	ĢÄ8SÖA+*

val_accwww?(čæ       ń(		Ä8SÖA+*


acc8|?üĶµ       ŁÜ2	²	Ä8SÖA+*

val_lossgWf>­{m       Ų-	5
Ä8SÖA+*

lossÕ"'=ņU£Ķ       `/ß#	ž#8SÖA,*

val_acc2Tv??wāT       ń(	ø$8SÖA,*


acc0|?M!#       ŁÜ2	š$8SÖA,*

val_lossJv>÷=%       Ų-	%8SÖA,*

losso@G=Ī<-Ń       `/ß#	n8SÖA-*

val_acc	x?õņÅ       ń(	jn8SÖA-*


accÅW|?»uÜ       ŁÜ2	n8SÖA-*

val_lossla>Ūį[±       Ų-	n8SÖA-*

loss÷e~=PŲ®       `/ß#	Ft¼8SÖA.*

val_accwww?š±ž       ń(	Ūt¼8SÖA.*


accÅW|?¹ ©       ŁÜ2	u¼8SÖA.*

val_loss>£_>Ń·*       Ų-	Eu¼8SÖA.*

loss÷`=óG       `/ß#	Ū	8SÖA/*

val_accwww?uQK       ń(	kÜ	8SÖA/*


accĻó|?¾ø}Õ       ŁÜ2	ĄÜ	8SÖA/*

val_losseõi>’Ąō       Ų-	Ż	8SÖA/*

loss.„"=FųĄ       `/ß#	śĄW8SÖA0*

val_accÕåv?§¾Ē       ń(	ÆĮW8SÖA0*


acc}?ø­C       ŁÜ2	ēĮW8SÖA0*

val_lossųéj>Õ¦Øų       Ų-	ĀW8SÖA0*

lossŽY=bRŃ       `/ß#	=”8SÖA1*

val_accwww?’;8       ń(	Ü=”8SÖA1*


acc0|?!kŹŅ       ŁÜ2	8>”8SÖA1*

val_loss°nj>¦«       Ų-	>”8SÖA1*

loss`ę<OĮĀn       `/ß#	śbļ8SÖA2*

val_accÕåv?³”       ń(	Łcļ8SÖA2*


accoQ}?g       ŁÜ2	.dļ8SÖA2*

val_losszĢh>x×l¶       Ų-	sdļ8SÖA2*

lossfĀ=Ū<m       `/ß#	¹`>8SÖA3*

val_accv?mÅM       ń(	Ļa>8SÖA3*


acc¤p}?ÄÕ^7       ŁÜ2	)b>8SÖA3*

val_loss3n>ŽUĶ       Ų-	ob>8SÖA3*

loss°ņ)=Mą7       `/ß#	~«8SÖA4*

val_accv?¶ō²Ķ       ń(	A¬8SÖA4*


acc~?WB'ē       ŁÜ2	¬8SÖA4*

val_lossĘ6n>}ī       Ų-	ŗ¬8SÖA4*

loss?«<½ø       `/ß#	ĢvŚ8SÖA5*

val_acc2Tv?EĮ       ń(	ĢwŚ8SÖA5*


acc~?«IK       ŁÜ2	)xŚ8SÖA5*

val_loss">MŅ6       Ų-	sxŚ8SÖA5*

losslµ<ü°1       `/ß#	l·&8SÖA6*

val_accv?åFp:       ń(	ø&8SÖA6*


accoQ}?ĮøE       ŁÜ2	Pø&8SÖA6*

val_lossä¹>Ėz©       Ų-	ø&8SÖA6*

loss§Įļ<8Kū       `/ß#	ęėt8SÖA7*

val_accĀu?ń¢       ń(	ķt8SÖA7*


acc}?g¦f       ŁÜ2	„ķt8SÖA7*

val_lossJ+>wÅ       Ų-	!īt8SÖA7*

lossV^=KFØ       `/ß#	"SĖ8SÖA8*

val_accÕåv?Vv       ń(	SĖ8SÖA8*


accCĪ}?ģP»       ŁÜ2	ĆSĖ8SÖA8*

val_lossĮ>>ü©±ō       Ų-	ėSĖ8SÖA8*

lossŻæ<©³°       `/ß#	o8SÖA9*

val_accĀu?jWqŚ       ń(	Źp8SÖA9*


accK~?]ĮX       ŁÜ2	lq8SÖA9*

val_lossÉĻ>¹W{       Ų-	īq8SÖA9*

loss¬=QŽn       `/ß#	·j8SÖA:*

val_accķ0u?µp       ń(	>øj8SÖA:*


accMj~?yÆrś       ŁÜ2	øj8SÖA:*

val_loss1½>bßŪf       Ų-	Äøj8SÖA:*

loss^<
A       `/ß#	aø8SÖA;*

val_accÕåv?”ŗ        ń(	>bø8SÖA;*


accxķ}?’a       ŁÜ2	Ēbø8SÖA;*

val_lossÉx>ŹĀZ       Ų-	2cø8SÖA;*

lossńē<+v&q       `/ß#	68SÖA<*

val_acc2Tv?¹H       ń(	a88SÖA<*


accCĪ}?Ź¾Ź       ŁÜ2	98SÖA<*

val_lossiy}>%!%       Ų-	98SÖA<*

loss-Į<)Bų/       `/ß#	0½U8SÖA=*

val_accĀu?'Ś²       ń(	Ä½U8SÖA=*


accć+~?ź\.+       ŁÜ2	¾U8SÖA=*

val_lossRļ>¦{Ī&       Ų-	7¾U8SÖA=*

lossµ¦³<ö        `/ß#	¢8SÖA>*

val_accav?ęć(       ń(	ń¢8SÖA>*


accxķ}?ķč­       ŁÜ2	] ¢8SÖA>*

val_lossŚń>[ėI       Ų-	Æ ¢8SÖA>*

lossiD =Ø¼°       `/ß#	S÷8SÖA?*

val_accav?’æĒ       ń(	G÷8SÖA?*


accW?g¤        ŁÜ2	÷8SÖA?*

val_loss >0	       Ų-	ā÷8SÖA?*

loss;tØ<4ÓžĢ       `/ß#	@>E8SÖA@*

val_accÕåv?'=³_       ń(	ņ>E8SÖA@*


accoQ}?Į`Ü       ŁÜ2	@?E8SÖA@*

val_loss¾{>35ä       Ų-	?E8SÖA@*

lossH`=Śō       `/ß#	%8SÖAA*

val_acc¦.w?Fw{       ń(	B&8SÖAA*


accK~?Ś	       ŁÜ2	&8SÖAA*

val_lossŁŹz>$*ņ       Ų-	Ņ&8SÖAA*

lossuUĀ<5       `/ß#	_Źę8SÖAB*

val_acc2Tv?qŌŪ       ń(	ŲŹę8SÖAB*


accÆ}?"Ā²       ŁÜ2	
Ėę8SÖAB*

val_lossB>zr©e       Ų-	3Ėę8SÖAB*

lossvd=ścw       `/ß#	d<8SÖAC*

val_accv?÷oŠ       ń(	<8SÖAC*


accĮD?©|Z       ŁÜ2	<8SÖAC*

val_lossŽ >ŌR{       Ų-	u<8SÖAC*

lossWf<ÕŅEĻ       `/ß#	Č¬8SÖAD*

val_accÕåv?z„°       ń(	­8SÖAD*


accŁ}?Lų       ŁÜ2	Ż­8SÖAD*

val_loss[„>ģ*       Ų-	®8SÖAD*

losswÉ<]¤ĢS       `/ß#	zį8SÖAE*

val_accv?Ė6µ       ń(	B{į8SÖAE*


acc®~?`ÅÜ       ŁÜ2	{į8SÖAE*

val_loss>ČŖ¶ģ       Ų-	ŗ{į8SÖAE*

lossŁč<~e¹č       `/ß#	12 8SÖAF*

val_acc¦.w?:bø       ń(	±2 8SÖAF*


accK~?7B^       ŁÜ2	ä2 8SÖAF*

val_loss#o>E[       Ų-	2 8SÖAF*

lossĢ”<g÷ś       `/ß#	ūų 8SÖAG*

val_acc2Tv?ŹrĖ£       ń(	¦ł 8SÖAG*


accMj~?SĶĪų       ŁÜ2	ķł 8SÖAG*

val_lossŽ>Ė@Ś       Ų-	&ś 8SÖAG*

lossNR<e}}Ö       `/ß#	\YŌ 8SÖAH*

val_accÕåv?šG       ń(	ŚYŌ 8SÖAH*


accxķ}?pK$8       ŁÜ2	ZŌ 8SÖAH*

val_lossc>äN       Ų-	3ZŌ 8SÖAH*

lossĖ²=z       `/ß#	8÷$!8SÖAI*

val_accav?¹]x       ń(	Ų÷$!8SÖAI*


accMj~?Ģ       ŁÜ2	ų$!8SÖAI*

val_lossŚ>Źķ|       Ų-	Tų$!8SÖAI*

loss²<0²c       `/ß#	 °v!8SÖAJ*

val_acc2Tv?²cyÉ       ń(	¢°v!8SÖAJ*


accMj~?M       ŁÜ2	Ö°v!8SÖAJ*

val_loss”>P5ē^       Ų-	ž°v!8SÖAJ*

loss¼Ę¾<?EC       `/ß#	#2Ć!8SÖAK*

val_acc2Tv?Xé       ń(	s3Ć!8SÖAK*


accW?pCņ       ŁÜ2	,4Ć!8SÖAK*

val_lossd>Ćü6       Ų-	Ć4Ć!8SÖAK*

lossr<ć	D'       `/ß#	I "8SÖAL*

val_acc¦.w?Ņż°       ń(	 "8SÖAL*


accK~?rąÅ       ŁÜ2	`"8SÖAL*

val_lossĀć>}       Ų-	Ī"8SÖAL*

lossė
²<cŖt       `/ß#	ČMf"8SÖAM*

val_accÕåv? W       ń(	KNf"8SÖAM*


accK~?„³Ģr       ŁÜ2	Nf"8SÖAM*

val_loss°g>Ē.Č       Ų-	«Nf"8SÖAM*

lossb7¤<Ą?źY       `/ß#	»g¶"8SÖAN*

val_accv?9V        ń(	h¶"8SÖAN*


accW?mĪ       ŁÜ2	i¶"8SÖAN*

val_lossĒh>üå       Ų-	Wi¶"8SÖAN*

lossĶK<ž ¾8       `/ß#	oZ#8SÖAO*

val_accIĄw?Ļš;	       ń(	[#8SÖAO*


acc"ē~?oóó4       ŁÜ2	D[#8SÖAO*

val_loss>_E&       Ų-	n[#8SÖAO*

loss;É<Lćk       `/ß#	U#8SÖAP*

val_acc¦.w?ńÓ       ń(	U#8SÖAP*


accW?£}Å       ŁÜ2	6U#8SÖAP*

val_loss2R>žŲŅ¬       Ų-	^U#8SÖAP*

lossQD<Ć*üÅ       `/ß#	5h¤#8SÖAQ*

val_acc¦.w?©+(       ń(	^i¤#8SÖAQ*


accģĒ~?¼V       ŁÜ2	ųi¤#8SÖAQ*

val_lossĪR>Ŗ3$Z       Ų-	yj¤#8SÖAQ*

loss;åI<^Ö!Ō       `/ß#	]Č÷#8SÖAR*

val_acc¦.w?¤5|       ń(	ėČ÷#8SÖAR*


acc®~?”jšĢ       ŁÜ2	&É÷#8SÖAR*

val_lossDr>ż4       Ų-	VÉ÷#8SÖAR*

loss0sł<Ya'ā       `/ß#	E$8SÖAS*

val_accwww?pÜæ       ń(	E$8SÖAS*


accxķ}?QXz       ŁÜ2	ÜE$8SÖAS*

val_lossPi>WrN       Ų-	E$8SÖAS*

lossf£Ż<Aō?%       `/ß#	 z$8SÖAT*

val_accwww?M ÷       ń(	Ķz$8SÖAT*


accöc?é|       ŁÜ2	{$8SÖAT*

val_loss^y>ļ¾       Ų-	*{$8SÖAT*

lossÜČ¬<cĪŌ       `/ß#	Õńę$8SÖAU*

val_acc¦.w?(“g       ń(	 óę$8SÖAU*


acc~?«]½       ŁÜ2	¤óę$8SÖAU*

val_loss>ŽJ£é       Ų-	ōę$8SÖAU*

loss©<v33       `/ß#	;9%8SÖAV*

val_accÕåv?Ķ¶Ć;       ń(	p<9%8SÖAV*


accMj~?ņpŅ       ŁÜ2	Ź<9%8SÖAV*

val_loss#{>õ       Ų-	=9%8SÖAV*

lossżn<ŌLĖ       `/ß#	%8SÖAW*

val_acc¦.w?Żģž       ń(	-%8SÖAW*


acc%?OR       ŁÜ2	p%8SÖAW*

val_loss#k>żGĻ       Ų-	Ŗ%8SÖAW*

loss7ōl<įåĆ       `/ß#	WčÖ%8SÖAX*

val_acc¦.w?bS       ń(	żčÖ%8SÖAX*


accģĒ~?wųq       ŁÜ2	BéÖ%8SÖAX*

val_loss>)·        Ų-	yéÖ%8SÖAX*

lossLO¤<>[       `/ß#	0Ż#&8SÖAY*

val_acc½x?¬n5       ń(	ÅŻ#&8SÖAY*


accĮD?¾eÆ       ŁÜ2	
Ž#&8SÖAY*

val_lossŖßu>¤ŪĢ       Ų-	EŽ#&8SÖAY*

loss„@"<¶G       `/ß#		ts&8SÖAZ*

val_accÕåv?b„på       ń(	ts&8SÖAZ*


accģĒ~?äpĢ#       ŁÜ2	Åts&8SÖAZ*

val_lossūĪy>(õ       Ų-	ńts&8SÖAZ*

loss6~<ķR„„       `/ß#	¹Ą&8SÖA[*

val_accav?Óø       ń(	¹Ą&8SÖA[*


accĮD?k=|¾       ŁÜ2	Ą¹Ą&8SÖA[*

val_lossW>Üe|       Ų-	é¹Ą&8SÖA[*

lossĆ4<g?Ł       `/ß#	č9'8SÖA\*

val_accÕåv?qwNå       ń(	ź:'8SÖA\*


accöc?óö       ŁÜ2	h;'8SÖA\*

val_loss>Äņ¦       Ų-	Š;'8SÖA\*

lossqģ'<õ3N³       `/ß#	.
f'8SÖA]*

val_accav?·tłN       ń(	f'8SÖA]*


accMj~?K&Į       ŁÜ2	wf'8SÖA]*

val_lossqį>ļgżļ       Ų-	Ļf'8SÖA]*

losse#=ĮĄ¤       `/ß#	|n·'8SÖA^*

val_accÕåv?:ßV       ń(	o·'8SÖA^*


acc·Ø~?zŲQŗ       ŁÜ2	Lo·'8SÖA^*

val_lossĒx>Z       Ų-	o·'8SÖA^*

loss±Ł<*(nÜ       `/ß#	Õ(8SÖA_*

val_acc¦.w?ż~       ń(	³(8SÖA_*


acc%?é       ŁÜ2	 (8SÖA_*

val_losslEx>ā¢       Ų-	x(8SÖA_*

lossÄ¬<¶7§       `/ß#	^W(8SÖA`*

val_accwww? X       ń(	W(8SÖA`*


accMj~?Éj?ć       ŁÜ2	`W(8SÖA`*

val_loss;ū>=:       Ų-	£W(8SÖA`*

lossē<4F       `/ß#	;j§(8SÖAa*

val_acc¦.w?ŚÖ       ń(	Ėj§(8SÖAa*


accW?='        ŁÜ2	k§(8SÖAa*

val_lossV}>Ź¬ä       Ų-	8k§(8SÖAa*

lossq<š¦|       `/ß#	÷(8SÖAb*

val_accv?¬)Õ       ń(	÷(8SÖAb*


accK~?N|       ŁÜ2	Ź÷(8SÖAb*

val_loss Š>5cŠM       Ų-	õ÷(8SÖAb*

lossųĒü<oĖū       `/ß#	ĮP)8SÖAc*

val_accav?g^$       ń(	æĆP)8SÖAc*


acca¢?UŃG       ŁÜ2	ąÄP)8SÖAc*

val_lossG>Ļ(       Ų-	żÅP)8SÖAc*

loss.ś;cĆ'ū