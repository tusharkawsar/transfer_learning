       ЃK"	   ?7SжAbrain.Event:2ВїO     Т2Џ{	W0?7SжA"ъ	

conv2d_1_inputPlaceholder*
dtype0*$
shape:џџџџџџџџџ  */
_output_shapes
:џџџџџџџџџ  
v
conv2d_1/random_uniform/shapeConst*%
valueB"         @   *
_output_shapes
:*
dtype0
`
conv2d_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЖhЯН
`
conv2d_1/random_uniform/maxConst*
valueB
 *ЖhЯ=*
dtype0*
_output_shapes
: 
Б
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*&
_output_shapes
:@*
seed2P*
T0*
seedБџх)*
dtype0
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
:@

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
:@

conv2d_1/kernel
VariableV2*&
_output_shapes
:@*
	container *
shape:@*
dtype0*
shared_name 
Ш
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@*"
_class
loc:@conv2d_1/kernel

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:@*
T0
p
conv2d_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_1/transpose	Transposeconv2d_1_inputconv2d_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ  *
T0
s
conv2d_1/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   
s
"conv2d_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
к
conv2d_1/convolutionConv2Dconv2d_1/transposeconv2d_1/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides

r
conv2d_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_1/transpose_1	Transposeconv2d_1/convolutionconv2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
g
activation_1/EluEluconv2d_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
T0
v
conv2d_2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
`
conv2d_2/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
conv2d_2/random_uniform/maxConst*
valueB
 *:Э=*
_output_shapes
: *
dtype0
В
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:@@*
seed2НСћ
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
_output_shapes
: *
T0
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
	container *
dtype0*
shared_name *
shape:@@
Ш
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
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@
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
:џџџџџџџџџ@*
T0
s
conv2d_2/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
к
conv2d_2/convolutionConv2Dconv2d_2/transposeconv2d_2/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
r
conv2d_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_2/transpose_1	Transposeconv2d_2/convolutionconv2d_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
g
activation_2/EluEluconv2d_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
Ч
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*
T0*#
_class
loc:@activation_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
_output_shapes
:*
out_type0
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
 *  ?*
dtype0*
_output_shapes
: 
Ш
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ@*
seed2шЩА
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
М
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Є
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@
{
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Х
dropout_1/cond/Switch_1Switchactivation_2/Eludropout_1/cond/pred_id*
T0*#
_class
loc:@activation_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ@: 
v
conv2d_3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
conv2d_3/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:ЭН
`
conv2d_3/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
В
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:@@*
seed2ЇЭ
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
T0*
_output_shapes
: 
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
VariableV2*
shared_name *
dtype0*
shape:@@*&
_output_shapes
:@@*
	container 
Ш
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
use_locking(*
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel

conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
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
:џџџџџџџџџ@
s
conv2d_3/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
s
"conv2d_3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
к
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID
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
:џџџџџџџџџ@*
T0
g
activation_3/EluEluconv2d_3/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
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
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
:
e
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ч
dropout_2/cond/mul/SwitchSwitchactivation_3/Eludropout_2/cond/pred_id*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ@

 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ч
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2йЋ*
T0*
seedБџх)*
dtype0
Ї
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
М
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Є
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@
{
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Х
dropout_2/cond/Switch_1Switchactivation_3/Eludropout_2/cond/pred_id*
T0*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
v
conv2d_4/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
`
conv2d_4/random_uniform/minConst*
valueB
 *ЋЊЊН*
dtype0*
_output_shapes
: 
`
conv2d_4/random_uniform/maxConst*
valueB
 *ЋЊЊ=*
_output_shapes
: *
dtype0
В
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*
dtype0*
seedБџх)*
T0*&
_output_shapes
:@ *
seed2Їз
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
VariableV2*&
_output_shapes
:@ *
	container *
shape:@ *
dtype0*
shared_name 
Ш
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
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:@ 
p
conv2d_4/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4/transpose	Transposedropout_2/cond/Mergeconv2d_4/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
s
conv2d_4/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @       
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
к
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*/
_output_shapes
:џџџџџџџџџ *
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
:џџџџџџџџџ *
T0
g
activation_4/EluEluconv2d_4/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ 
w
max_pooling2d_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

max_pooling2d_1/transpose	Transposeactivation_4/Elumax_pooling2d_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0
Ъ
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*
ksize
*
T0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
data_formatNHWC*
strides

y
 max_pooling2d_1/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
Њ
max_pooling2d_1/transpose_1	Transposemax_pooling2d_1/MaxPool max_pooling2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
_output_shapes
:*
T0

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
 *  ?*
_output_shapes
: *
dtype0
н
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *.
_class$
" loc:@max_pooling2d_1/transpose_1

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 
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
Ш
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ *
seed2ђЎД
Ї
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ *
T0
М
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ 
Є
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ 
{
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3/cond/dropout/divRealDivdropout_3/cond/mul dropout_3/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ 
л
dropout_3/cond/Switch_1Switchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *
T0

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ : 
c
flatten_1/ShapeShapedropout_3/cond/Merge*
_output_shapes
:*
out_type0*
T0
g
flatten_1/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
i
flatten_1/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
i
flatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Џ
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
valueB: *
_output_shapes
:*
dtype0
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
\
flatten_1/stack/0Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
_output_shapes
:*
N*

axis *
T0

flatten_1/ReshapeReshapedropout_3/cond/Mergeflatten_1/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_1/random_uniform/minConst*
valueB
 *7Н*
_output_shapes
: *
dtype0
_
dense_1/random_uniform/maxConst*
valueB
 *7=*
dtype0*
_output_shapes
: 
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape* 
_output_shapes
:
$*
seed2вр*
dtype0*
T0*
seedБџх)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
$*
T0
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
	container *
shape:
$*
dtype0*
shared_name 
О
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Z
activation_5/EluEludense_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
Й
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_5/Elu*
T0

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2Ш№в*
T0*
seedБџх)*
dtype0
Ї
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Е
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4/cond/dropout/divRealDivdropout_4/cond/mul dropout_4/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
З
dropout_4/cond/Switch_1Switchactivation_5/Eludropout_4/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_5/Elu

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_2/random_uniform/minConst*
valueB
 *ѓЕН*
_output_shapes
: *
dtype0
_
dense_2/random_uniform/maxConst*
valueB
 *ѓЕ=*
dtype0*
_output_shapes
: 
Љ
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape* 
_output_shapes
:
*
seed2т:*
dtype0*
T0*
seedБџх)
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
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min* 
_output_shapes
:
*
T0

dense_2/kernel
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
О
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_2/kernel*
T0*
use_locking(
}
dense_2/kernel/readIdentitydense_2/kernel* 
_output_shapes
:
*!
_class
loc:@dense_2/kernel*
T0

dense_2/MatMulMatMuldropout_4/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Z
activation_6/EluEludense_2/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
_output_shapes
:*
T0

e
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Й
dropout_5/cond/mul/SwitchSwitchactivation_6/Eludropout_5/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_6/Elu

dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

 dropout_5/cond/dropout/keep_probConst^dropout_5/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
С
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2кљ*
T0*
seedБџх)*
dtype0
Ї
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
У
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Е
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5/cond/dropout/addAdd dropout_5/cond/dropout/keep_prob%dropout_5/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5/cond/dropout/divRealDivdropout_5/cond/mul dropout_5/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/divdropout_5/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
З
dropout_5/cond/Switch_1Switchactivation_6/Eludropout_5/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_6/Elu

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
m
dense_3/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
_
dense_3/random_uniform/minConst*
valueB
 *   О*
dtype0*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Њ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
dtype0*
seedБџх)*
T0* 
_output_shapes
:
*
seed2Й
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
_output_shapes
: *
T0

dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub* 
_output_shapes
:
*
T0

dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min* 
_output_shapes
:
*
T0
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
О
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
:џџџџџџџџџ*
transpose_a( *
T0
Z
activation_7/EluEludense_3/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
_output_shapes
:*
T0

]
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
_output_shapes
:*
T0

e
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
s
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Й
dropout_6/cond/mul/SwitchSwitchactivation_7/Eludropout_6/cond/pred_id*
T0*#
_class
loc:@activation_7/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

 dropout_6/cond/dropout/keep_probConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
T0*
out_type0*
_output_shapes
:

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2І 
Ї
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Е
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/addAdd dropout_6/cond/dropout/keep_prob%dropout_6/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/divRealDivdropout_6/cond/mul dropout_6/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/divdropout_6/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
З
dropout_6/cond/Switch_1Switchactivation_7/Eludropout_6/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_7/Elu

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
m
dense_4/random_uniform/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
_
dense_4/random_uniform/minConst*
valueB
 *ЭUО*
_output_shapes
: *
dtype0
_
dense_4/random_uniform/maxConst*
valueB
 *ЭU>*
_output_shapes
: *
dtype0
Љ
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
_output_shapes
:	
*
seed2Жю*
T0*
seedБџх)*
dtype0
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
T0*
_output_shapes
: 

dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
_output_shapes
:	
*
T0
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
	container *
dtype0*
shared_name *
shape:	

Н
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
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
:	


dense_4/MatMulMatMuldropout_6/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
*
transpose_a( 
a
activation_8/SoftmaxSoftmaxdense_4/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ

i
activation_1_1/EluEluconv2d_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
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
:џџџџџџџџџ@
u
conv2d_2_1/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_2_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
о
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
t
conv2d_2_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2_1/transpose_1	Transposeconv2d_2_1/convolutionconv2d_2_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_2_1/EluEluconv2d_2_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
T0
*
_output_shapes
:
a
dropout_1_1/cond/switch_fIdentitydropout_1_1/cond/Switch*
_output_shapes
:*
T0

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
Я
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_1_1/cond/mulMuldropout_1_1/cond/mul/Switch:1dropout_1_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_1_1/cond/dropout/keep_probConst^dropout_1_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_1_1/cond/dropout/ShapeShapedropout_1_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ы
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2Т*
dtype0*
T0*
seedБџх)
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
Т
'dropout_1_1/cond/dropout/random_uniformAdd+dropout_1_1/cond/dropout/random_uniform/mul+dropout_1_1/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Њ
dropout_1_1/cond/dropout/addAdd"dropout_1_1/cond/dropout/keep_prob'dropout_1_1/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/FloorFloordropout_1_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/divRealDivdropout_1_1/cond/mul"dropout_1_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Э
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
r
conv2d_3_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_3_1/transpose	Transposedropout_1_1/cond/Mergeconv2d_3_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_3_1/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_3_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
о
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ@*
use_cudnn_on_gpu(
t
conv2d_3_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_1/transpose_1	Transposeconv2d_3_1/convolutionconv2d_3_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_3_1/EluEluconv2d_3_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
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
dropout_2_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_2_1/cond/mul/yConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Я
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2_1/cond/mulMuldropout_2_1/cond/mul/Switch:1dropout_2_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_2_1/cond/dropout/keep_probConst^dropout_2_1/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_2_1/cond/dropout/ShapeShapedropout_2_1/cond/mul*
out_type0*
_output_shapes
:*
T0
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
Ь
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*/
_output_shapes
:џџџџџџџџџ@*
seed2Сом
­
+dropout_2_1/cond/dropout/random_uniform/subSub+dropout_2_1/cond/dropout/random_uniform/max+dropout_2_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_2_1/cond/dropout/random_uniform/mulMul5dropout_2_1/cond/dropout/random_uniform/RandomUniform+dropout_2_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
Т
'dropout_2_1/cond/dropout/random_uniformAdd+dropout_2_1/cond/dropout/random_uniform/mul+dropout_2_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Њ
dropout_2_1/cond/dropout/addAdd"dropout_2_1/cond/dropout/keep_prob'dropout_2_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_1/cond/dropout/FloorFloordropout_2_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_1/cond/dropout/divRealDivdropout_2_1/cond/mul"dropout_2_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_1/cond/dropout/mulMuldropout_2_1/cond/dropout/divdropout_2_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Э
dropout_2_1/cond/Switch_1Switchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_3_1/Elu

dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
N*
T0
r
conv2d_4_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_1/transpose	Transposedropout_2_1/cond/Mergeconv2d_4_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_4_1/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @       
u
$conv2d_4_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
о
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ *
use_cudnn_on_gpu(
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
:џџџџџџџџџ *
T0
k
activation_4_1/EluEluconv2d_4_1/transpose_1*/
_output_shapes
:џџџџџџџџџ *
T0
y
 max_pooling2d_1_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Ѕ
max_pooling2d_1_1/transpose	Transposeactivation_4_1/Elu max_pooling2d_1_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0
Ю
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
ksize
*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides
*
paddingVALID
{
"max_pooling2d_1_1/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
А
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_3_1/cond/switch_tIdentitydropout_3_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_3_1/cond/switch_fIdentitydropout_3_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_3_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_3_1/cond/mul/yConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
х
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*
T0

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ *
T0

"dropout_3_1/cond/dropout/keep_probConst^dropout_3_1/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_3_1/cond/dropout/ShapeShapedropout_3_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_3_1/cond/dropout/random_uniform/minConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_3_1/cond/dropout/random_uniform/maxConst^dropout_3_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ь
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ *
seed2з§
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ 
Т
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ 
Њ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_1/cond/dropout/FloorFloordropout_3_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/dropout/divRealDivdropout_3_1/cond/mul"dropout_3_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_1/cond/dropout/mulMuldropout_3_1/cond/dropout/divdropout_3_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ 
у
dropout_3_1/cond/Switch_1Switchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*
T0

dropout_3_1/cond/MergeMergedropout_3_1/cond/Switch_1dropout_3_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ : 
g
flatten_1_1/ShapeShapedropout_3_1/cond/Merge*
T0*
out_type0*
_output_shapes
:
i
flatten_1_1/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
k
!flatten_1_1/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
k
!flatten_1_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Й
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
end_mask*
ellipsis_mask *

begin_mask *
shrink_axis_mask *
_output_shapes
:*
new_axis_mask *
Index0*
T0
[
flatten_1_1/ConstConst*
valueB: *
_output_shapes
:*
dtype0

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
^
flatten_1_1/stack/0Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_5_1/EluEludense_1_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
 *  ?*
_output_shapes
: *
dtype0
С
dropout_4_1/cond/mul/SwitchSwitchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4_1/cond/mulMuldropout_4_1/cond/mul/Switch:1dropout_4_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_4_1/cond/dropout/keep_probConst^dropout_4_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Х
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2Ѕк*
dtype0*
T0*
seedБџх)
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4_1/cond/dropout/divRealDivdropout_4_1/cond/mul"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_1/cond/dropout/mulMuldropout_4_1/cond/dropout/divdropout_4_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
T0

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
 
dense_2_1/MatMulMatMuldropout_4_1/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_6_1/EluEludense_2_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
dropout_5_1/cond/switch_fIdentitydropout_5_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_5_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_5_1/cond/mul/yConst^dropout_5_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
С
dropout_5_1/cond/mul/SwitchSwitchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_5_1/cond/mulMuldropout_5_1/cond/mul/Switch:1dropout_5_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_5_1/cond/dropout/keep_probConst^dropout_5_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_5_1/cond/dropout/ShapeShapedropout_5_1/cond/mul*
out_type0*
_output_shapes
:*
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
Х
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*(
_output_shapes
:џџџџџџџџџ*
seed2юЕ­
­
+dropout_5_1/cond/dropout/random_uniform/subSub+dropout_5_1/cond/dropout/random_uniform/max+dropout_5_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Щ
+dropout_5_1/cond/dropout/random_uniform/mulMul5dropout_5_1/cond/dropout/random_uniform/RandomUniform+dropout_5_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_5_1/cond/dropout/random_uniformAdd+dropout_5_1/cond/dropout/random_uniform/mul+dropout_5_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_5_1/cond/dropout/addAdd"dropout_5_1/cond/dropout/keep_prob'dropout_5_1/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_5_1/cond/dropout/FloorFloordropout_5_1/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5_1/cond/dropout/divRealDivdropout_5_1/cond/mul"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_1/cond/dropout/mulMuldropout_5_1/cond/dropout/divdropout_5_1/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
 
dense_3_1/MatMulMatMuldropout_5_1/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_7_1/EluEludense_3_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
dropout_6_1/cond/mul/yConst^dropout_6_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
С
dropout_6_1/cond/mul/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu

dropout_6_1/cond/mulMuldropout_6_1/cond/mul/Switch:1dropout_6_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_6_1/cond/dropout/keep_probConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
r
dropout_6_1/cond/dropout/ShapeShapedropout_6_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Х
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2бТј
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Щ
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_6_1/cond/dropout/random_uniformAdd+dropout_6_1/cond/dropout/random_uniform/mul+dropout_6_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_6_1/cond/dropout/addAdd"dropout_6_1/cond/dropout/keep_prob'dropout_6_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
x
dropout_6_1/cond/dropout/FloorFloordropout_6_1/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6_1/cond/dropout/divRealDivdropout_6_1/cond/mul"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6_1/cond/dropout/mulMuldropout_6_1/cond/dropout/divdropout_6_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_6_1/cond/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_6_1/cond/MergeMergedropout_6_1/cond/Switch_1dropout_6_1/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N

dense_4_1/MatMulMatMuldropout_6_1/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
*
transpose_a( 
e
activation_8_1/SoftmaxSoftmaxdense_4_1/MatMul*'
_output_shapes
:џџџџџџџџџ
*
T0
U
lr/initial_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
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
	lr/AssignAssignlrlr/initial_value*
_class
	loc:@lr*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
O
lr/readIdentitylr*
_class
	loc:@lr*
_output_shapes
: *
T0
X
decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
i
decay
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

decay/AssignAssigndecaydecay/initial_value*
_class

loc:@decay*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
X

decay/readIdentitydecay*
_class

loc:@decay*
_output_shapes
: *
T0
]
iterations/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
n

iterations
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
Њ
iterations/AssignAssign
iterationsiterations/initial_value*
use_locking(*
T0*
_class
loc:@iterations*
validate_shape(*
_output_shapes
: 
g
iterations/readIdentity
iterations*
T0*
_class
loc:@iterations*
_output_shapes
: 
v
activation_8_sample_weightsPlaceholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ

activation_8_targetPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ
W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

SumSumactivation_8_1/SoftmaxSum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims(
a
truedivRealDivactivation_8_1/SoftmaxSum*'
_output_shapes
:џџџџџџџџџ
*
T0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
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
:џџџџџџџџџ

h
clip_by_valueMaximumclip_by_value/MinimumConst*'
_output_shapes
:џџџџџџџџџ
*
T0
K
LogLogclip_by_value*'
_output_shapes
:џџџџџџџџџ
*
T0
V
mulMulactivation_8_targetLog*
T0*'
_output_shapes
:џџџџџџџџџ

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
:џџџџџџџџџ
?
NegNegSum_1*
T0*#
_output_shapes
:џџџџџџџџџ
Y
Mean/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
t
MeanMeanNegMean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
]
mul_1MulMeanactivation_8_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
O

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
NotEqualNotEqualactivation_8_sample_weights
NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ
S
CastCastNotEqual*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
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
	truediv_1RealDivmul_1Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
`
Mean_2Mean	truediv_1Const_2*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
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
ArgMaxArgMaxactivation_8_targetArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
R
Cast_1CastEqual*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_3Const*
dtype0*
_output_shapes
:*
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
Ќ
AssignAssignconv2d_1/kernelPlaceholder*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:@
n
Placeholder_1Placeholder*
dtype0*
shape:@@*&
_output_shapes
:@@
А
Assign_1Assignconv2d_2/kernelPlaceholder_1*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:@@
n
Placeholder_2Placeholder*
shape:@@*
dtype0*&
_output_shapes
:@@
А
Assign_2Assignconv2d_3/kernelPlaceholder_2*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@*
T0*
validate_shape(*
use_locking( 
n
Placeholder_3Placeholder*&
_output_shapes
:@ *
shape:@ *
dtype0
А
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
$*
shape:
$*
dtype0
Ј
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
_output_shapes
:
*
dtype0*
shape:

Ј
Assign_5Assigndense_2/kernelPlaceholder_5*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

b
Placeholder_6Placeholder* 
_output_shapes
:
*
dtype0*
shape:

Ј
Assign_6Assigndense_3/kernelPlaceholder_6* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_3/kernel*
T0*
use_locking( 
`
Placeholder_7Placeholder*
_output_shapes
:	
*
dtype0*
shape:	

Ї
Assign_7Assigndense_4/kernelPlaceholder_7*
use_locking( *
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
џ
initNoOp^conv2d_1/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign
^lr/Assign^decay/Assign^iterations/Assign
W
lr_1/initial_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
h
lr_1
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 

lr_1/AssignAssignlr_1lr_1/initial_value*
_class
	loc:@lr_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
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
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 

decay_1/AssignAssigndecay_1decay_1/initial_value*
_output_shapes
: *
validate_shape(*
_class
loc:@decay_1*
T0*
use_locking(
^
decay_1/readIdentitydecay_1*
_class
loc:@decay_1*
_output_shapes
: *
T0
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
В
iterations_1/AssignAssigniterations_1iterations_1/initial_value*
_class
loc:@iterations_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
iterations_1/readIdentityiterations_1*
_class
loc:@iterations_1*
_output_shapes
: *
T0
x
activation_8_sample_weights_1Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

activation_8_target_1Placeholder*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Y
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

Sum_2Sumactivation_8_1/SoftmaxSum_2/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims(
e
	truediv_2RealDivactivation_8_1/SoftmaxSum_2*
T0*'
_output_shapes
:џџџџџџџџџ

L
Const_4Const*
valueB
 *Пж3*
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
sub_1Subsub_1/xConst_4*
_output_shapes
: *
T0
f
clip_by_value_1/MinimumMinimum	truediv_2sub_1*'
_output_shapes
:џџџџџџџџџ
*
T0
n
clip_by_value_1Maximumclip_by_value_1/MinimumConst_4*'
_output_shapes
:џџџџџџџџџ
*
T0
O
Log_1Logclip_by_value_1*
T0*'
_output_shapes
:џџџџџџџџџ

\
mul_3Mulactivation_8_target_1Log_1*
T0*'
_output_shapes
:џџџџџџџџџ

Y
Sum_3/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
w
Sum_3Summul_3Sum_3/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
A
Neg_1NegSum_3*
T0*#
_output_shapes
:џџџџџџџџџ
[
Mean_4/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
z
Mean_4MeanNeg_1Mean_4/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
a
mul_4MulMean_4activation_8_sample_weights_1*
T0*#
_output_shapes
:џџџџџџџџџ
Q
NotEqual_1/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
q

NotEqual_1NotEqualactivation_8_sample_weights_1NotEqual_1/y*
T0*#
_output_shapes
:џџџџџџџџџ
W
Cast_2Cast
NotEqual_1*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
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
	truediv_3RealDivmul_4Mean_5*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_6Const*
dtype0*
_output_shapes
:*
valueB: 
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
mul_5Mulmul_5/xMean_6*
_output_shapes
: *
T0
T
ArgMax_2/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_3/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMax_3ArgMaxactivation_8_1/SoftmaxArgMax_3/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
R
Equal_1EqualArgMax_2ArgMax_3*#
_output_shapes
:џџџџџџџџџ*
T0	
T
Cast_3CastEqual_1*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
Q
Const_7Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_7MeanCast_3Const_7*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
#

group_depsNoOp^mul_5^Mean_7
l
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@mul_5
n
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?*
_class

loc:@mul_5
s
gradients/FillFillgradients/Shapegradients/Const*
T0*
_class

loc:@mul_5*
_output_shapes
: 
w
gradients/mul_5_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@mul_5
y
gradients/mul_5_grad/Shape_1Const*
valueB *
_class

loc:@mul_5*
dtype0*
_output_shapes
: 
д
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0*
_class

loc:@mul_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
_output_shapes
: *
_class

loc:@mul_5*
T0
П
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
_class

loc:@mul_5*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
І
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: 
u
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Fill*
T0*
_output_shapes
: *
_class

loc:@mul_5
Х
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class

loc:@mul_5
Ќ
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*
_class

loc:@mul_5

#gradients/Mean_6_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@Mean_6
Л
gradients/Mean_6_grad/ReshapeReshapegradients/mul_5_grad/Reshape_1#gradients/Mean_6_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_6*
_output_shapes
:

gradients/Mean_6_grad/ShapeShape	truediv_3*
T0*
out_type0*
_class
loc:@Mean_6*
_output_shapes
:
Й
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_6*
T0*

Tmultiples0

gradients/Mean_6_grad/Shape_1Shape	truediv_3*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6*
T0
{
gradients/Mean_6_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@Mean_6

gradients/Mean_6_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_6
З
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
_output_shapes
: *
_class
loc:@Mean_6*
T0*
	keep_dims( *

Tidx0

gradients/Mean_6_grad/Const_1Const*
valueB: *
_class
loc:@Mean_6*
_output_shapes
:*
dtype0
Л
gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_6
|
gradients/Mean_6_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_6*
_output_shapes
: *
dtype0
Ѓ
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
_output_shapes
: *
_class
loc:@Mean_6*
T0
Ё
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
Љ
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
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
 gradients/truediv_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@truediv_3
ф
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0*
_class
loc:@truediv_3*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3
г
gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
_class
loc:@truediv_3*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
У
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
T0*
Tshape0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ
v
gradients/truediv_3_grad/NegNegmul_4*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3*
T0
В
gradients/truediv_3_grad/mulMulgradients/Mean_6_grad/truediv"gradients/truediv_3_grad/RealDiv_2*
T0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ
г
gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@truediv_3*
T0*
	keep_dims( *

Tidx0
М
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
Tshape0*
_class
loc:@truediv_3*
_output_shapes
: *
T0
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
gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
_output_shapes
:*
out_type0*
_class

loc:@mul_4*
T0
д
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
_class

loc:@mul_4*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ј
gradients/mul_4_grad/mulMul gradients/truediv_3_grad/Reshapeactivation_8_sample_weights_1*
T0*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ
П
gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_4*
T0*
	keep_dims( *

Tidx0
Г
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class

loc:@mul_4*
T0

gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*
T0*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ
Х
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_4*
_output_shapes
:
Й
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ
{
gradients/Mean_4_grad/ShapeShapeNeg_1*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:*
T0
w
gradients/Mean_4_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4

gradients/Mean_4_grad/addAddMean_4/reduction_indicesgradients/Mean_4_grad/Size*
_class
loc:@Mean_4*
_output_shapes
: *
T0
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
!gradients/Mean_4_grad/range/startConst*
_output_shapes
: *
dtype0*
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
Щ
gradients/Mean_4_grad/rangeRange!gradients/Mean_4_grad/range/startgradients/Mean_4_grad/Size!gradients/Mean_4_grad/range/delta*

Tidx0*
_output_shapes
:*
_class
loc:@Mean_4
}
 gradients/Mean_4_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
Ё
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
T0*
_output_shapes
: *
_class
loc:@Mean_4
ї
#gradients/Mean_4_grad/DynamicStitchDynamicStitchgradients/Mean_4_grad/rangegradients/Mean_4_grad/modgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Fill*
T0*
_class
loc:@Mean_4*
N*#
_output_shapes
:џџџџџџџџџ
|
gradients/Mean_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
З
gradients/Mean_4_grad/MaximumMaximum#gradients/Mean_4_grad/DynamicStitchgradients/Mean_4_grad/Maximum/y*
T0*
_class
loc:@Mean_4*#
_output_shapes
:џџџџџџџџџ
Џ
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Maximum*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4*
T0
З
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
Tshape0*
_class
loc:@Mean_4*
_output_shapes
:*
T0
Б
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/floordiv*
_class
loc:@Mean_4*
_output_shapes
:*
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
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_4

gradients/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_4
З
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_4
Л
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_3gradients/Mean_4_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_4*
_output_shapes
: 
~
!gradients/Mean_4_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
Ї
gradients/Mean_4_grad/Maximum_1Maximumgradients/Mean_4_grad/Prod_1!gradients/Mean_4_grad/Maximum_1/y*
_output_shapes
: *
_class
loc:@Mean_4*
T0
Ѕ
 gradients/Mean_4_grad/floordiv_1FloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum_1*
_output_shapes
: *
_class
loc:@Mean_4*
T0

gradients/Mean_4_grad/CastCast gradients/Mean_4_grad/floordiv_1*

SrcT0*
_class
loc:@Mean_4*
_output_shapes
: *

DstT0
Љ
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0*
_class
loc:@Mean_4*#
_output_shapes
:џџџџџџџџџ

gradients/Neg_1_grad/NegNeggradients/Mean_4_grad/truediv*
_class

loc:@Neg_1*#
_output_shapes
:џџџџџџџџџ*
T0
y
gradients/Sum_3_grad/ShapeShapemul_3*
T0*
_output_shapes
:*
out_type0*
_class

loc:@Sum_3
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
gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*
_class

loc:@Sum_3*
_output_shapes
: 

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_3
y
gradients/Sum_3_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@Sum_3
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
 gradients/Sum_3_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3
Ф
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
loc:@Sum_3*
dtype0*
_output_shapes
: 

gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
_output_shapes
: *
_class

loc:@Sum_3*
T0
ё
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
N*
T0*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_3
z
gradients/Sum_3_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3
Г
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_3*
T0
Ђ
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*
_class

loc:@Sum_3*
_output_shapes
:
А
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_3
М
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ
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
gradients/mul_3_grad/Shape_1ShapeLog_1*
out_type0*
_class

loc:@mul_3*
_output_shapes
:*
T0
д
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_3*
T0

gradients/mul_3_grad/mulMulgradients/Sum_3_grad/TileLog_1*
T0*
_class

loc:@mul_3*'
_output_shapes
:џџџџџџџџџ

П
gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
_class

loc:@mul_3*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Р
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
Tshape0*
_class

loc:@mul_3*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gradients/mul_3_grad/mul_1Mulactivation_8_target_1gradients/Sum_3_grad/Tile*
_class

loc:@mul_3*'
_output_shapes
:џџџџџџџџџ
*
T0
Х
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_3*
T0*
	keep_dims( *

Tidx0
Н
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
Tshape0*
_class

loc:@mul_3*'
_output_shapes
:џџџџџџџџџ
*
T0
Ћ
gradients/Log_1_grad/Reciprocal
Reciprocalclip_by_value_1^gradients/mul_3_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Log_1*
T0
Ќ
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*
T0*
_class

loc:@Log_1*'
_output_shapes
:џџџџџџџџџ


$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
out_type0*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0

&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *"
_class
loc:@clip_by_value_1*
_output_shapes
: *
dtype0
Ђ
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1*
T0

*gradients/clip_by_value_1_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@clip_by_value_1
ж
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
Г
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1*
T0
ќ
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*"
_class
loc:@clip_by_value_1
ђ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
Б
)gradients/clip_by_value_1_grad/LogicalNot
LogicalNot+gradients/clip_by_value_1_grad/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
ђ
'gradients/clip_by_value_1_grad/Select_1Select)gradients/clip_by_value_1_grad/LogicalNotgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
ъ
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*"
_class
loc:@clip_by_value_1
п
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*"
_class
loc:@clip_by_value_1
№
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
д
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0*"
_class
loc:@clip_by_value_1*
_output_shapes
: 
Ё
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:

.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB **
_class 
loc:@clip_by_value_1/Minimum
Р
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
T0*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:
Ѓ
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@clip_by_value_1/Minimum
і
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ


<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ**
_class 
loc:@clip_by_value_1/Minimum*
T0

-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
Ц
1gradients/clip_by_value_1/Minimum_grad/LogicalNot
LogicalNot0gradients/clip_by_value_1/Minimum_grad/LessEqual*'
_output_shapes
:џџџџџџџџџ
**
_class 
loc:@clip_by_value_1/Minimum
 
/gradients/clip_by_value_1/Minimum_grad/Select_1Select1gradients/clip_by_value_1/Minimum_grad/LogicalNot&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
**
_class 
loc:@clip_by_value_1/Minimum

*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:
џ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ


,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:**
_class 
loc:@clip_by_value_1/Minimum
є
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
: 

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_2

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:*
T0
ф
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_2
В
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

г
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_2
Ч
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@truediv_2

gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Ђ
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ј
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ч
gradients/truediv_2_grad/mulMul.gradients/clip_by_value_1/Minimum_grad/Reshape"gradients/truediv_2_grad/RealDiv_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

г
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_2*
_output_shapes
:
Э
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class
loc:@truediv_2
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
gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
_output_shapes
: *
_class

loc:@Sum_2*
T0
y
gradients/Sum_2_grad/Shape_1Const*
valueB *
_class

loc:@Sum_2*
_output_shapes
: *
dtype0
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
 gradients/Sum_2_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 
Ф
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*
_class

loc:@Sum_2*
_output_shapes
:*

Tidx0
{
gradients/Sum_2_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 

gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
_class

loc:@Sum_2*
_output_shapes
: *
T0
ё
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*
_class

loc:@Sum_2*
N*#
_output_shapes
:џџџџџџџџџ
z
gradients/Sum_2_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_2
Г
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_2*
T0
Ђ
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*
_class

loc:@Sum_2*
_output_shapes
:
К
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_2*
T0
М
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0*
_class

loc:@Sum_2*'
_output_shapes
:џџџџџџџџџ

Ќ
gradients/AddNAddN gradients/truediv_2_grad/Reshapegradients/Sum_2_grad/Tile*'
_output_shapes
:џџџџџџџџџ
*
N*
_class
loc:@truediv_2*
T0
Е
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0
А
;gradients/activation_8_1/Softmax_grad/Sum/reduction_indicesConst*
valueB:*)
_class
loc:@activation_8_1/Softmax*
dtype0*
_output_shapes
:

)gradients/activation_8_1/Softmax_grad/SumSum)gradients/activation_8_1/Softmax_grad/mul;gradients/activation_8_1/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*)
_class
loc:@activation_8_1/Softmax*
T0*
	keep_dims( *

Tidx0
Џ
3gradients/activation_8_1/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   *)
_class
loc:@activation_8_1/Softmax

-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*)
_class
loc:@activation_8_1/Softmax*
T0
Ь
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_1/Softmax*
T0
в
+gradients/activation_8_1/Softmax_grad/mul_1Mul)gradients/activation_8_1/Softmax_grad/subactivation_8_1/Softmax*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0
№
&gradients/dense_4_1/MatMul_grad/MatMulMatMul+gradients/activation_8_1/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_4_1/MatMul
ь
(gradients/dense_4_1/MatMul_grad/MatMul_1MatMuldropout_6_1/cond/Merge+gradients/activation_8_1/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_4_1/MatMul*
_output_shapes
:	
*
transpose_a(
ч
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_4_1/MatMul
Ж
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
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
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
т
2gradients/dropout_6_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_6_1/cond/Merge_grad/cond_gradgradients/zeros*
T0*%
_class
loc:@activation_7_1/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
О
1gradients/dropout_6_1/cond/dropout/mul_grad/ShapeShapedropout_6_1/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
Т
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
А
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
э
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
э
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
Ё
1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:*
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
:џџџџџџџџџ
Ж
1gradients/dropout_6_1/cond/dropout/div_grad/ShapeShapedropout_6_1/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
Ї
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div*
dtype0*
_output_shapes
: 
А
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ћ
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
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
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
А
/gradients/dropout_6_1/cond/dropout/div_grad/NegNegdropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
љ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_6_1/cond/dropout/div_grad/Neg"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
џ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

1gradients/dropout_6_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_6_1/cond/dropout/div_grad/mulCgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
: 
Џ
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
9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul*
T0
з
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul
ћ
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:
є
+gradients/dropout_6_1/cond/mul_grad/ReshapeReshape'gradients/dropout_6_1/cond/mul_grad/Sum)gradients/dropout_6_1/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
р
)gradients/dropout_6_1/cond/mul_grad/mul_1Muldropout_6_1/cond/mul/Switch:13gradients/dropout_6_1/cond/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul*
T0

)gradients/dropout_6_1/cond/mul_grad/Sum_1Sum)gradients/dropout_6_1/cond/mul_grad/mul_1;gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_6_1/cond/mul*
T0*
	keep_dims( *

Tidx0
ш
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
: *
T0
И
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/Shape_2Shapegradients/Switch_1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_1/Elu

gradients/zeros_1/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
т
4gradients/dropout_6_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_6_1/cond/mul_grad/Reshapegradients/zeros_1*
T0*%
_class
loc:@activation_7_1/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
х
gradients/AddN_1AddN2gradients/dropout_6_1/cond/Switch_1_grad/cond_grad4gradients/dropout_6_1/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_1/Elu*
N*(
_output_shapes
:џџџџџџџџџ
Д
)gradients/activation_7_1/Elu_grad/EluGradEluGradgradients/AddN_1activation_7_1/Elu*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
ю
&gradients/dense_3_1/MatMul_grad/MatMulMatMul)gradients/activation_7_1/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*#
_class
loc:@dense_3_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
ы
(gradients/dense_3_1/MatMul_grad/MatMul_1MatMuldropout_5_1/cond/Merge)gradients/activation_7_1/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_3_1/MatMul
ч
/gradients/dropout_5_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_3_1/MatMul_grad/MatMuldropout_5_1/cond/pred_id*
T0*#
_class
loc:@dense_3_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
И
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu*
T0

gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*%
_class
loc:@activation_6_1/Elu*
_output_shapes
:

gradients/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_1/Elu

gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ
ф
2gradients/dropout_5_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_5_1/cond/Merge_grad/cond_gradgradients/zeros_2*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_1/Elu
О
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:
Т
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:
А
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
э
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
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
3gradients/dropout_5_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/mul_grad/Sum1gradients/dropout_5_1/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
э
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ё
1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
Ж
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:
Ї
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div
А
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ћ
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_5_1/cond/dropout/div_grad/SumSum3gradients/dropout_5_1/cond/dropout/div_grad/RealDivAgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:*
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
:џџџџџџџџџ
А
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
љ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
џ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0

1gradients/dropout_5_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_5_1/cond/dropout/div_grad/mulCgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_5_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/div_grad/Sum_13gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
Џ
)gradients/dropout_5_1/cond/mul_grad/ShapeShapedropout_5_1/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_1/cond/mul

+gradients/dropout_5_1/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_5_1/cond/mul

9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_5_1/cond/mul_grad/Shape+gradients/dropout_5_1/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_5_1/cond/mul*
T0
з
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ћ
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_5_1/cond/mul*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
р
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0

)gradients/dropout_5_1/cond/mul_grad/Sum_1Sum)gradients/dropout_5_1/cond/mul_grad/mul_1;gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_5_1/cond/mul*
T0*
	keep_dims( *

Tidx0
ш
-gradients/dropout_5_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_5_1/cond/mul_grad/Sum_1+gradients/dropout_5_1/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
: 
И
gradients/Switch_3Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu*
T0

gradients/Shape_4Shapegradients/Switch_3*
T0*
out_type0*%
_class
loc:@activation_6_1/Elu*
_output_shapes
:

gradients/zeros_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_1/Elu

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu
т
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3**
_output_shapes
:џџџџџџџџџ: *
N*%
_class
loc:@activation_6_1/Elu*
T0
х
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0*
N
Д
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ
ю
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*#
_class
loc:@dense_2_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
ы
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_1/MatMul
ч
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_2_1/MatMul*
T0
И
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/Shape_5Shapegradients/Switch_4:1*
out_type0*%
_class
loc:@activation_5_1/Elu*
_output_shapes
:*
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
:џџџџџџџџџ
ф
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4**
_output_shapes
:џџџџџџџџџ: *
N*%
_class
loc:@activation_5_1/Elu*
T0
О
1gradients/dropout_4_1/cond/dropout/mul_grad/ShapeShapedropout_4_1/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
Т
3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1Shapedropout_4_1/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
А
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
э
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_4_1/cond/dropout/mul_grad/SumSum/gradients/dropout_4_1/cond/dropout/mul_grad/mulAgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul

3gradients/dropout_4_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/mul_grad/Sum1gradients/dropout_4_1/cond/dropout/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
э
1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Muldropout_4_1/cond/dropout/div1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
Ё
1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_4_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_13gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
Ж
1gradients/dropout_4_1/cond/dropout/div_grad/ShapeShapedropout_4_1/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:
Ї
3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
: *
dtype0
А
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
ћ
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

/gradients/dropout_4_1/cond/dropout/div_grad/SumSum3gradients/dropout_4_1/cond/dropout/div_grad/RealDivAgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/div

3gradients/dropout_4_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/div_grad/Sum1gradients/dropout_4_1/cond/dropout/div_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
А
/gradients/dropout_4_1/cond/dropout/div_grad/NegNegdropout_4_1/cond/mul*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
љ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
џ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
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
5gradients/dropout_4_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/div_grad/Sum_13gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
: *
T0
Џ
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
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul
з
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*
T0*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
ћ
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
T0
р
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ш
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_1/cond/mul
И
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/Shape_6Shapegradients/Switch_5*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_1/Elu*
T0

gradients/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
т
4gradients/dropout_4_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_4_1/cond/mul_grad/Reshapegradients/zeros_5*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_5_1/Elu
х
gradients/AddN_3AddN2gradients/dropout_4_1/cond/Switch_1_grad/cond_grad4gradients/dropout_4_1/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu
Д
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*
T0*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ
ю
&gradients/dense_1_1/MatMul_grad/MatMulMatMul)gradients/activation_5_1/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*#
_class
loc:@dense_1_1/MatMul*(
_output_shapes
:џџџџџџџџџ$*
transpose_a( *
T0
ш
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
_output_shapes
:
$*
dtype0*
valueB
$*    

Variable
VariableV2*
shape:
$*
shared_name *
dtype0* 
_output_shapes
:
$*
	container 
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
valueB
*    * 
_output_shapes
:
*
dtype0


Variable_1
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Ѓ
Variable_1/AssignAssign
Variable_1Const_9*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_1
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
_output_shapes
:
*
dtype0*
valueB
*    
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
Є
Variable_2/AssignAssign
Variable_2Const_10*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2
q
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2* 
_output_shapes
:

_
Const_11Const*
valueB	
*    *
_output_shapes
:	
*
dtype0


Variable_3
VariableV2*
_output_shapes
:	
*
	container *
dtype0*
shared_name *
shape:	

Ѓ
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
Variable_3*
_class
loc:@Variable_3*
_output_shapes
:	
*
T0
a
Const_12Const*
valueB
$*    * 
_output_shapes
:
$*
dtype0
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
Є
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
_output_shapes
:
$*
_class
loc:@Variable_4
a
Const_13Const*
valueB
*    *
dtype0* 
_output_shapes
:



Variable_5
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
Є
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
_output_shapes
:
*
_class
loc:@Variable_5*
T0
a
Const_14Const* 
_output_shapes
:
*
dtype0*
valueB
*    


Variable_6
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Є
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
Variable_6*
T0*
_class
loc:@Variable_6* 
_output_shapes
:

_
Const_15Const*
valueB	
*    *
dtype0*
_output_shapes
:	



Variable_7
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
Ѓ
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
_output_shapes
:	
*
_class
loc:@Variable_7
L
mul_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
O
mul_6Mulmul_6/xVariable/read*
T0* 
_output_shapes
:
$
e
SquareSquare(gradients/dense_1_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
$
L
mul_7/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
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
 *wЬ+2*
_output_shapes
: *
dtype0
Q
add_1AddVariable_4/readadd_1/y* 
_output_shapes
:
$*
T0
M
Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_17Const*
valueB
 *  *
_output_shapes
: *
dtype0
^
clip_by_value_2/MinimumMinimumadd_1Const_17*
T0* 
_output_shapes
:
$
h
clip_by_value_2Maximumclip_by_value_2/MinimumConst_16* 
_output_shapes
:
$*
T0
H
SqrtSqrtclip_by_value_2* 
_output_shapes
:
$*
T0
g
mul_8Mul(gradients/dense_1_1/MatMul_grad/MatMul_1Sqrt* 
_output_shapes
:
$*
T0
L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
E
add_2Addaddadd_2/y*
T0* 
_output_shapes
:
$
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
clip_by_value_3/MinimumMinimumadd_2Const_19*
T0* 
_output_shapes
:
$
h
clip_by_value_3Maximumclip_by_value_3/MinimumConst_18* 
_output_shapes
:
$*
T0
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
sub_2Subdense_1/kernel/readmul_9*
T0* 
_output_shapes
:
$
 
Assign_9Assigndense_1/kernelsub_2*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel
M
mul_10/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_10Mulmul_10/xVariable_4/read* 
_output_shapes
:
$*
T0
H
Square_1Square	truediv_4* 
_output_shapes
:
$*
T0
M
mul_11/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
L
mul_11Mulmul_11/xSquare_1*
T0* 
_output_shapes
:
$
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
Square_2Square(gradients/dense_2_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_13/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
L
mul_13Mulmul_13/xSquare_2* 
_output_shapes
:
*
T0
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
 *wЬ+2*
dtype0*
_output_shapes
: 
Q
add_5AddVariable_5/readadd_5/y*
T0* 
_output_shapes
:

M
Const_20Const*
_output_shapes
: *
dtype0*
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
clip_by_value_4Maximumclip_by_value_4/MinimumConst_20*
T0* 
_output_shapes
:

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
add_6/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
G
add_6Addadd_4add_6/y* 
_output_shapes
:
*
T0
M
Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
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
Ё
	Assign_12Assigndense_2/kernelsub_3*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
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
 *ЭЬL=*
_output_shapes
: *
dtype0
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
Square_4Square(gradients/dense_3_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_19/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
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
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(* 
_output_shapes
:

L
add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
Q
add_9AddVariable_6/readadd_9/y*
T0* 
_output_shapes
:

M
Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_25Const*
_output_shapes
: *
dtype0*
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
Sqrt_4Sqrtclip_by_value_6* 
_output_shapes
:
*
T0
j
mul_20Mul(gradients/dense_3_1/MatMul_grad/MatMul_1Sqrt_4* 
_output_shapes
:
*
T0
M
add_10/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
I
add_10Addadd_8add_10/y*
T0* 
_output_shapes
:

M
Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_27Const*
dtype0*
_output_shapes
: *
valueB
 *  
_
clip_by_value_7/MinimumMinimumadd_10Const_27* 
_output_shapes
:
*
T0
h
clip_by_value_7Maximumclip_by_value_7/MinimumConst_26* 
_output_shapes
:
*
T0
J
Sqrt_5Sqrtclip_by_value_7*
T0* 
_output_shapes
:

O
	truediv_6RealDivmul_20Sqrt_5*
T0* 
_output_shapes
:

N
mul_21Mul	lr_1/read	truediv_6* 
_output_shapes
:
*
T0
T
sub_4Subdense_3/kernel/readmul_21*
T0* 
_output_shapes
:

Ё
	Assign_15Assigndense_3/kernelsub_4*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:

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
Square_5Square	truediv_6*
T0* 
_output_shapes
:

M
mul_23/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
L
mul_23Mulmul_23/xSquare_5* 
_output_shapes
:
*
T0
H
add_11Addmul_22mul_23* 
_output_shapes
:
*
T0
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
mul_24/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
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
mul_25/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
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
add_13/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
R
add_13AddVariable_7/readadd_13/y*
T0*
_output_shapes
:	

M
Const_28Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_29Const*
dtype0*
_output_shapes
: *
valueB
 *  
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
mul_26Mul(gradients/dense_4_1/MatMul_grad/MatMul_1Sqrt_6*
_output_shapes
:	
*
T0
M
add_14/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
I
add_14Addadd_12add_14/y*
_output_shapes
:	
*
T0
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
 *  *
dtype0*
_output_shapes
: 
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
mul_29/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
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
Variable_7add_15*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_7
Г
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
с
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign"XЫќў     ј'Јщ	?7SжAJёЗ

Ѓ!!
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
Ш
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
Х
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
shared_namestring *1.2.02v1.2.0-rc2-21-g12f033dъ	

conv2d_1_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ  *$
shape:џџџџџџџџџ  *
dtype0
v
conv2d_1/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   
`
conv2d_1/random_uniform/minConst*
valueB
 *ЖhЯН*
_output_shapes
: *
dtype0
`
conv2d_1/random_uniform/maxConst*
valueB
 *ЖhЯ=*
dtype0*
_output_shapes
: 
Б
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
seedБџх)*
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
conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
:@
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
Ш
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:@

conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*&
_output_shapes
:@*"
_class
loc:@conv2d_1/kernel
p
conv2d_1/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_1/transpose	Transposeconv2d_1_inputconv2d_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ  *
T0
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
к
conv2d_1/convolutionConv2Dconv2d_1/transposeconv2d_1/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:џџџџџџџџџ@
r
conv2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_1/transpose_1	Transposeconv2d_1/convolutionconv2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
g
activation_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
v
conv2d_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
conv2d_2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:ЭН
`
conv2d_2/random_uniform/maxConst*
valueB
 *:Э=*
dtype0*
_output_shapes
: 
В
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*&
_output_shapes
:@@*
seed2НСћ*
T0*
seedБџх)*
dtype0
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
_output_shapes
: *
T0
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
	container *
dtype0*
shared_name *
shape:@@
Ш
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*&
_output_shapes
:@@*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
T0*
use_locking(

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@*
T0
p
conv2d_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_2/transpose	Transposeactivation_1/Eluconv2d_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
s
conv2d_2/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
s
"conv2d_2/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
к
conv2d_2/convolutionConv2Dconv2d_2/transposeconv2d_2/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides
*
T0*
paddingVALID
r
conv2d_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2/transpose_1	Transposeconv2d_2/convolutionconv2d_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
g
activation_2/EluEluconv2d_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
c
dropout_1/keras_learning_phasePlaceholder*
shape:*
dtype0
*
_output_shapes
:

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
:*
T0

]
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
:*
T0

e
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ч
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*#
_class
loc:@activation_2/Elu

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ш
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ@*
seed2шЩА
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ъ
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
М
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Є
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@
{
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Х
dropout_1/cond/Switch_1Switchactivation_2/Eludropout_1/cond/pred_id*
T0*#
_class
loc:@activation_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
v
conv2d_3/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:ЭН
`
conv2d_3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Э=
В
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*&
_output_shapes
:@@*
seed2ЇЭ*
T0*
seedБџх)*
dtype0
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
T0*
_output_shapes
: 
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
VariableV2*
shared_name *
dtype0*
shape:@@*&
_output_shapes
:@@*
	container 
Ш
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*&
_output_shapes
:@@*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
T0*
use_locking(
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
:џџџџџџџџџ@
s
conv2d_3/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
s
"conv2d_3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
к
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ@*
use_cudnn_on_gpu(
r
conv2d_3/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3/transpose_1	Transposeconv2d_3/convolutionconv2d_3/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
g
activation_3/EluEluconv2d_3/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
 *  ?*
dtype0*
_output_shapes
: 
Ч
dropout_2/cond/mul/SwitchSwitchactivation_3/Eludropout_2/cond/pred_id*
T0*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
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
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ч
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*/
_output_shapes
:џџџџџџџџџ@*
seed2йЋ
Ї
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
М
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Є
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0
{
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Х
dropout_2/cond/Switch_1Switchactivation_3/Eludropout_2/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*#
_class
loc:@activation_3/Elu

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
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
 *ЋЊЊН*
dtype0*
_output_shapes
: 
`
conv2d_4/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЋЊЊ=
В
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*&
_output_shapes
:@ *
seed2Їз*
T0*
seedБџх)*
dtype0
}
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
T0*
_output_shapes
: 
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
VariableV2*&
_output_shapes
:@ *
	container *
dtype0*
shared_name *
shape:@ 
Ш
conv2d_4/kernel/AssignAssignconv2d_4/kernelconv2d_4/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@ 

conv2d_4/kernel/readIdentityconv2d_4/kernel*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel*
T0
p
conv2d_4/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4/transpose	Transposedropout_2/cond/Mergeconv2d_4/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
s
conv2d_4/convolution/ShapeConst*%
valueB"      @       *
_output_shapes
:*
dtype0
s
"conv2d_4/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
к
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ *
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
:џџџџџџџџџ *
T0
g
activation_4/EluEluconv2d_4/transpose_1*/
_output_shapes
:џџџџџџџџџ *
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
:џџџџџџџџџ 
Ъ
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
ksize
*
data_formatNHWC*
strides
*
T0
y
 max_pooling2d_1/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
Њ
max_pooling2d_1/transpose_1	Transposemax_pooling2d_1/MaxPool max_pooling2d_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
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
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
н
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*
T0*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ 

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*/
_output_shapes
:џџџџџџџџџ *
T0
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
Ш
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ *
seed2ђЎД
Ї
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ *
T0
М
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ 
Є
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ *
T0
{
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3/cond/dropout/divRealDivdropout_3/cond/mul dropout_3/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ *
T0
л
dropout_3/cond/Switch_1Switchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *.
_class$
" loc:@max_pooling2d_1/transpose_1*
T0

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ : 
c
flatten_1/ShapeShapedropout_3/cond/Merge*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
Index0*
T0*
new_axis_mask *
_output_shapes
:*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
end_mask
Y
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
\
flatten_1/stack/0Const*
valueB :
џџџџџџџџџ*
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
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
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
 *7Н*
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
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seedБџх)*
T0*
dtype0* 
_output_shapes
:
$*
seed2вр
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0
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
	container *
shape:
$*
dtype0*
shared_name 
О
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform* 
_output_shapes
:
$*
validate_shape(*!
_class
loc:@dense_1/kernel*
T0*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Z
activation_5/EluEludense_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0
*
_output_shapes
:
e
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

s
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Й
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_5/Elu*
T0

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
T0*
_output_shapes
:*
out_type0
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
 *  ?*
_output_shapes
: *
dtype0
С
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2Ш№в*
T0*
seedБџх)*
dtype0
Ї
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
У
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Е
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4/cond/dropout/divRealDivdropout_4/cond/mul dropout_4/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
З
dropout_4/cond/Switch_1Switchactivation_5/Eludropout_4/cond/pred_id*
T0*#
_class
loc:@activation_5/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
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
 *ѓЕН*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *ѓЕ=*
_output_shapes
: *
dtype0
Љ
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seedБџх)*
T0*
dtype0* 
_output_shapes
:
*
seed2т:
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
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
О
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_2/kernel*
T0*
use_locking(
}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


dense_2/MatMulMatMuldropout_4/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Z
activation_6/EluEludense_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Й
dropout_5/cond/mul/SwitchSwitchactivation_6/Eludropout_5/cond/pred_id*#
_class
loc:@activation_6/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

 dropout_5/cond/dropout/keep_probConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2кљ*
dtype0*
T0*
seedБџх)
Ї
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
У
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Е
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5/cond/dropout/addAdd dropout_5/cond/dropout/keep_prob%dropout_5/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5/cond/dropout/divRealDivdropout_5/cond/mul dropout_5/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/divdropout_5/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
З
dropout_5/cond/Switch_1Switchactivation_6/Eludropout_5/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_6/Elu

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N
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
 *   О
_
dense_3/random_uniform/maxConst*
valueB
 *   >*
_output_shapes
: *
dtype0
Њ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape* 
_output_shapes
:
*
seed2Й*
T0*
seedБџх)*
dtype0
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
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min* 
_output_shapes
:
*
T0

dense_3/kernel
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 
О
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


dense_3/MatMulMatMuldropout_5/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Z
activation_7/EluEludense_3/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
_
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
_output_shapes
:*
T0

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
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Й
dropout_6/cond/mul/SwitchSwitchactivation_7/Eludropout_6/cond/pred_id*#
_class
loc:@activation_7/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

 dropout_6/cond/dropout/keep_probConst^dropout_6/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
С
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*(
_output_shapes
:џџџџџџџџџ*
seed2І 
Ї
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Е
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/addAdd dropout_6/cond/dropout/keep_prob%dropout_6/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/divRealDivdropout_6/cond/mul dropout_6/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/divdropout_6/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
З
dropout_6/cond/Switch_1Switchactivation_7/Eludropout_6/cond/pred_id*#
_class
loc:@activation_7/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
m
dense_4/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЭUО
_
dense_4/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЭU>
Љ
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes
:	
*
seed2Жю
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
T0*
_output_shapes
: 
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
Н
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
dense_4/kernel/readIdentitydense_4/kernel*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel

dense_4/MatMulMatMuldropout_6/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
*
transpose_a( *
T0
a
activation_8/SoftmaxSoftmaxdense_4/MatMul*'
_output_shapes
:џџџџџџџџџ
*
T0
i
activation_1_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
r
conv2d_2_1/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2_1/transpose	Transposeactivation_1_1/Eluconv2d_2_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
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
о
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides
*
T0*
paddingVALID
t
conv2d_2_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_1/transpose_1	Transposeconv2d_2_1/convolutionconv2d_2_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_2_1/EluEluconv2d_2_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
T0
*
_output_shapes
:
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
Я
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_1_1/cond/mulMuldropout_1_1/cond/mul/Switch:1dropout_1_1/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ@

"dropout_1_1/cond/dropout/keep_probConst^dropout_1_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_1_1/cond/dropout/ShapeShapedropout_1_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ы
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2Т*
T0*
seedБџх)*
dtype0
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
Т
'dropout_1_1/cond/dropout/random_uniformAdd+dropout_1_1/cond/dropout/random_uniform/mul+dropout_1_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Њ
dropout_1_1/cond/dropout/addAdd"dropout_1_1/cond/dropout/keep_prob'dropout_1_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_1/cond/dropout/FloorFloordropout_1_1/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_1/cond/dropout/divRealDivdropout_1_1/cond/mul"dropout_1_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Э
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ@: 
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
:џџџџџџџџџ@*
T0
u
conv2d_3_1/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_3_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
о
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
T0*
use_cudnn_on_gpu(
t
conv2d_3_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_3_1/transpose_1	Transposeconv2d_3_1/convolutionconv2d_3_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_3_1/EluEluconv2d_3_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
dropout_2_1/cond/mul/yConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Я
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2_1/cond/mulMuldropout_2_1/cond/mul/Switch:1dropout_2_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_2_1/cond/dropout/keep_probConst^dropout_2_1/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_2_1/cond/dropout/ShapeShapedropout_2_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_2_1/cond/dropout/random_uniform/minConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_2_1/cond/dropout/random_uniform/maxConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ь
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*/
_output_shapes
:џџџџџџџџџ@*
seed2Сом
­
+dropout_2_1/cond/dropout/random_uniform/subSub+dropout_2_1/cond/dropout/random_uniform/max+dropout_2_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_2_1/cond/dropout/random_uniform/mulMul5dropout_2_1/cond/dropout/random_uniform/RandomUniform+dropout_2_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
Т
'dropout_2_1/cond/dropout/random_uniformAdd+dropout_2_1/cond/dropout/random_uniform/mul+dropout_2_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Њ
dropout_2_1/cond/dropout/addAdd"dropout_2_1/cond/dropout/keep_prob'dropout_2_1/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_1/cond/dropout/FloorFloordropout_2_1/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_1/cond/dropout/divRealDivdropout_2_1/cond/mul"dropout_2_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_1/cond/dropout/mulMuldropout_2_1/cond/dropout/divdropout_2_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Э
dropout_2_1/cond/Switch_1Switchactivation_3_1/Eludropout_2_1/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_3_1/Elu*
T0

dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
N*
T0
r
conv2d_4_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4_1/transpose	Transposedropout_2_1/cond/Mergeconv2d_4_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_4_1/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
u
$conv2d_4_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
о
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
data_formatNHWC*
strides

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
:џџџџџџџџџ *
T0
k
activation_4_1/EluEluconv2d_4_1/transpose_1*/
_output_shapes
:џџџџџџџџџ *
T0
y
 max_pooling2d_1_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             
Ѕ
max_pooling2d_1_1/transpose	Transposeactivation_4_1/Elu max_pooling2d_1_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0
Ю
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
T0*
ksize

{
"max_pooling2d_1_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
А
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0
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
 *  ?*
dtype0*
_output_shapes
: 
х
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*
T0*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ 

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 

"dropout_3_1/cond/dropout/keep_probConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
r
dropout_3_1/cond/dropout/ShapeShapedropout_3_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_3_1/cond/dropout/random_uniform/minConst^dropout_3_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_3_1/cond/dropout/random_uniform/maxConst^dropout_3_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ь
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ *
seed2з§
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ *
T0
Т
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ 
Њ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_1/cond/dropout/FloorFloordropout_3_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/dropout/divRealDivdropout_3_1/cond/mul"dropout_3_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_1/cond/dropout/mulMuldropout_3_1/cond/dropout/divdropout_3_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ 
у
dropout_3_1/cond/Switch_1Switchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *0
_class&
$"loc:@max_pooling2d_1_1/transpose_1

dropout_3_1/cond/MergeMergedropout_3_1/cond/Switch_1dropout_3_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ : *
T0*
N
g
flatten_1_1/ShapeShapedropout_3_1/cond/Merge*
out_type0*
_output_shapes
:*
T0
i
flatten_1_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Й
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
shrink_axis_mask *
_output_shapes
:*
Index0*
T0*
end_mask*
new_axis_mask *
ellipsis_mask *

begin_mask 
[
flatten_1_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
flatten_1_1/stack/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_5_1/EluEludense_1_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
dropout_4_1/cond/mul/yConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
С
dropout_4_1/cond/mul/SwitchSwitchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_4_1/cond/mulMuldropout_4_1/cond/mul/Switch:1dropout_4_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_4_1/cond/dropout/keep_probConst^dropout_4_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Х
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2Ѕк
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4_1/cond/dropout/divRealDivdropout_4_1/cond/mul"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_1/cond/dropout/mulMuldropout_4_1/cond/dropout/divdropout_4_1/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
 
dense_2_1/MatMulMatMuldropout_4_1/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_6_1/EluEludense_2_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_5_1/cond/switch_tIdentitydropout_5_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_5_1/cond/switch_fIdentitydropout_5_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_5_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_5_1/cond/mul/yConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
dropout_5_1/cond/mul/SwitchSwitchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu

dropout_5_1/cond/mulMuldropout_5_1/cond/mul/Switch:1dropout_5_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_5_1/cond/dropout/keep_probConst^dropout_5_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_5_1/cond/dropout/ShapeShapedropout_5_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_5_1/cond/dropout/random_uniform/minConst^dropout_5_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_5_1/cond/dropout/random_uniform/maxConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2юЕ­*
T0*
seedБџх)*
dtype0
­
+dropout_5_1/cond/dropout/random_uniform/subSub+dropout_5_1/cond/dropout/random_uniform/max+dropout_5_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_5_1/cond/dropout/random_uniform/mulMul5dropout_5_1/cond/dropout/random_uniform/RandomUniform+dropout_5_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_5_1/cond/dropout/random_uniformAdd+dropout_5_1/cond/dropout/random_uniform/mul+dropout_5_1/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_5_1/cond/dropout/addAdd"dropout_5_1/cond/dropout/keep_prob'dropout_5_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
x
dropout_5_1/cond/dropout/FloorFloordropout_5_1/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_1/cond/dropout/divRealDivdropout_5_1/cond/mul"dropout_5_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5_1/cond/dropout/mulMuldropout_5_1/cond/dropout/divdropout_5_1/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
 
dense_3_1/MatMulMatMuldropout_5_1/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_7_1/EluEludense_3_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
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
С
dropout_6_1/cond/mul/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0

dropout_6_1/cond/mulMuldropout_6_1/cond/mul/Switch:1dropout_6_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

"dropout_6_1/cond/dropout/keep_probConst^dropout_6_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
dropout_6_1/cond/dropout/ShapeShapedropout_6_1/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Х
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*(
_output_shapes
:џџџџџџџџџ*
seed2бТј
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Щ
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_6_1/cond/dropout/random_uniformAdd+dropout_6_1/cond/dropout/random_uniform/mul+dropout_6_1/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_6_1/cond/dropout/addAdd"dropout_6_1/cond/dropout/keep_prob'dropout_6_1/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_6_1/cond/dropout/FloorFloordropout_6_1/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_1/cond/dropout/divRealDivdropout_6_1/cond/mul"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_1/cond/dropout/mulMuldropout_6_1/cond/dropout/divdropout_6_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_6_1/cond/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0

dropout_6_1/cond/MergeMergedropout_6_1/cond/Switch_1dropout_6_1/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 

dense_4_1/MatMulMatMuldropout_6_1/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
*
transpose_a( 
e
activation_8_1/SoftmaxSoftmaxdense_4_1/MatMul*'
_output_shapes
:џџџџџџџџџ
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
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 

	lr/AssignAssignlrlr/initial_value*
use_locking(*
T0*
_class
	loc:@lr*
validate_shape(*
_output_shapes
: 
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
dtype0*
shared_name *
shape: 

decay/AssignAssigndecaydecay/initial_value*
_class

loc:@decay*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
X

decay/readIdentitydecay*
T0*
_output_shapes
: *
_class

loc:@decay
]
iterations/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
n

iterations
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
Њ
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
T0*
_class
loc:@iterations*
_output_shapes
: 
v
activation_8_sample_weightsPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

activation_8_targetPlaceholder*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

SumSumactivation_8_1/SoftmaxSum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
a
truedivRealDivactivation_8_1/SoftmaxSum*
T0*'
_output_shapes
:џџџџџџџџџ

J
ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
J
sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
9
subSubsub/xConst*
T0*
_output_shapes
: 
`
clip_by_value/MinimumMinimumtruedivsub*
T0*'
_output_shapes
:џџџџџџџџџ

h
clip_by_valueMaximumclip_by_value/MinimumConst*
T0*'
_output_shapes
:џџџџџџџџџ

K
LogLogclip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ

V
mulMulactivation_8_targetLog*'
_output_shapes
:џџџџџџџџџ
*
T0
Y
Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
u
Sum_1SummulSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
?
NegNegSum_1*
T0*#
_output_shapes
:џџџџџџџџџ
Y
Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
t
MeanMeanNegMean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
]
mul_1MulMeanactivation_8_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
O

NotEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
NotEqualNotEqualactivation_8_sample_weights
NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ
S
CastCastNotEqual*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

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
	truediv_1RealDivmul_1Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
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
mul_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
>
mul_2Mulmul_2/xMean_2*
_output_shapes
: *
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
q
ArgMaxArgMaxactivation_8_targetArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
x
ArgMax_1ArgMaxactivation_8_1/SoftmaxArgMax_1/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:џџџџџџџџџ*
T0	
R
Cast_1CastEqual*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
]
Mean_3MeanCast_1Const_3*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
l
PlaceholderPlaceholder*
shape:@*
dtype0*&
_output_shapes
:@
Ќ
AssignAssignconv2d_1/kernelPlaceholder*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:@
n
Placeholder_1Placeholder*&
_output_shapes
:@@*
dtype0*
shape:@@
А
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
:@@*
shape:@@*
dtype0
А
Assign_2Assignconv2d_3/kernelPlaceholder_2*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel
n
Placeholder_3Placeholder*&
_output_shapes
:@ *
shape:@ *
dtype0
А
Assign_3Assignconv2d_4/kernelPlaceholder_3*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel
b
Placeholder_4Placeholder*
shape:
$*
dtype0* 
_output_shapes
:
$
Ј
Assign_4Assigndense_1/kernelPlaceholder_4*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
$
b
Placeholder_5Placeholder* 
_output_shapes
:
*
dtype0*
shape:

Ј
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
dtype0*
shape:
* 
_output_shapes
:

Ј
Assign_6Assigndense_3/kernelPlaceholder_6* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_3/kernel*
T0*
use_locking( 
`
Placeholder_7Placeholder*
dtype0*
shape:	
*
_output_shapes
:	

Ї
Assign_7Assigndense_4/kernelPlaceholder_7*
use_locking( *
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
џ
initNoOp^conv2d_1/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign
^lr/Assign^decay/Assign^iterations/Assign
W
lr_1/initial_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
h
lr_1
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 

lr_1/AssignAssignlr_1lr_1/initial_value*
_output_shapes
: *
validate_shape(*
_class
	loc:@lr_1*
T0*
use_locking(
U
	lr_1/readIdentitylr_1*
T0*
_class
	loc:@lr_1*
_output_shapes
: 
Z
decay_1/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
decay_1
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
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
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
В
iterations_1/AssignAssigniterations_1iterations_1/initial_value*
use_locking(*
T0*
_class
loc:@iterations_1*
validate_shape(*
_output_shapes
: 
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
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

activation_8_target_1Placeholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0
Y
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

Sum_2Sumactivation_8_1/SoftmaxSum_2/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
e
	truediv_2RealDivactivation_8_1/SoftmaxSum_2*
T0*'
_output_shapes
:џџџџџџџџџ

L
Const_4Const*
valueB
 *Пж3*
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
:џџџџџџџџџ

n
clip_by_value_1Maximumclip_by_value_1/MinimumConst_4*
T0*'
_output_shapes
:џџџџџџџџџ

O
Log_1Logclip_by_value_1*'
_output_shapes
:џџџџџџџџџ
*
T0
\
mul_3Mulactivation_8_target_1Log_1*
T0*'
_output_shapes
:џџџџџџџџџ

Y
Sum_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
w
Sum_3Summul_3Sum_3/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
A
Neg_1NegSum_3*
T0*#
_output_shapes
:џџџџџџџџџ
[
Mean_4/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
z
Mean_4MeanNeg_1Mean_4/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
a
mul_4MulMean_4activation_8_sample_weights_1*
T0*#
_output_shapes
:џџџџџџџџџ
Q
NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
q

NotEqual_1NotEqualactivation_8_sample_weights_1NotEqual_1/y*#
_output_shapes
:џџџџџџџџџ*
T0
W
Cast_2Cast
NotEqual_1*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
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
:џџџџџџџџџ*
T0
Q
Const_6Const*
valueB: *
_output_shapes
:*
dtype0
`
Mean_6Mean	truediv_3Const_6*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
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
ArgMax_2/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_3/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
x
ArgMax_3ArgMaxactivation_8_1/SoftmaxArgMax_3/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
R
Equal_1EqualArgMax_2ArgMax_3*
T0	*#
_output_shapes
:џџџџџџџџџ
T
Cast_3CastEqual_1*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_7Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_7MeanCast_3Const_7*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
#

group_depsNoOp^mul_5^Mean_7
l
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@mul_5
n
gradients/ConstConst*
valueB
 *  ?*
_class

loc:@mul_5*
dtype0*
_output_shapes
: 
s
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: *
_class

loc:@mul_5
w
gradients/mul_5_grad/ShapeConst*
dtype0*
_output_shapes
: *
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
д
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0*
_class

loc:@mul_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
T0*
_output_shapes
: *
_class

loc:@mul_5
П
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
_class

loc:@mul_5*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
І
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
_output_shapes
: *
Tshape0*
_class

loc:@mul_5*
T0
u
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Fill*
_output_shapes
: *
_class

loc:@mul_5*
T0
Х
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_5*
_output_shapes
:
Ќ
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
_output_shapes
: *
Tshape0*
_class

loc:@mul_5*
T0

#gradients/Mean_6_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@Mean_6
Л
gradients/Mean_6_grad/ReshapeReshapegradients/mul_5_grad/Reshape_1#gradients/Mean_6_grad/Reshape/shape*
Tshape0*
_class
loc:@Mean_6*
_output_shapes
:*
T0

gradients/Mean_6_grad/ShapeShape	truediv_3*
out_type0*
_class
loc:@Mean_6*
_output_shapes
:*
T0
Й
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_6*#
_output_shapes
:џџџџџџџџџ

gradients/Mean_6_grad/Shape_1Shape	truediv_3*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6*
T0
{
gradients/Mean_6_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@Mean_6

gradients/Mean_6_grad/ConstConst*
valueB: *
_class
loc:@Mean_6*
dtype0*
_output_shapes
:
З
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_6

gradients/Mean_6_grad/Const_1Const*
valueB: *
_class
loc:@Mean_6*
_output_shapes
:*
dtype0
Л
gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_6*
_output_shapes
: 
|
gradients/Mean_6_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_6
Ѓ
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
T0*
_output_shapes
: *
_class
loc:@Mean_6
Ё
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
_output_shapes
: *
_class
loc:@Mean_6*
T0

gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*

SrcT0*
_class
loc:@Mean_6*
_output_shapes
: *

DstT0
Љ
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_6*
T0

gradients/truediv_3_grad/ShapeShapemul_4*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_3

 gradients/truediv_3_grad/Shape_1Const*
valueB *
_class
loc:@truediv_3*
dtype0*
_output_shapes
: 
ф
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_3

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3
г
gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_3*
T0*
	keep_dims( *

Tidx0
У
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class
loc:@truediv_3
v
gradients/truediv_3_grad/NegNegmul_4*
T0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
T0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ
Ѕ
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3
В
gradients/truediv_3_grad/mulMulgradients/Mean_6_grad/truediv"gradients/truediv_3_grad/RealDiv_2*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3
г
gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@truediv_3
М
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
Tshape0*
_class
loc:@truediv_3*
_output_shapes
: *
T0
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
gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
T0*
_output_shapes
:*
out_type0*
_class

loc:@mul_4
д
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_4
Ј
gradients/mul_4_grad/mulMul gradients/truediv_3_grad/Reshapeactivation_8_sample_weights_1*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ*
T0
П
gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_4*
_output_shapes
:
Г
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class

loc:@mul_4*
T0

gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@mul_4*
T0
Х
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_4*
T0*
	keep_dims( *

Tidx0
Й
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class

loc:@mul_4*
T0
{
gradients/Mean_4_grad/ShapeShapeNeg_1*
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:
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
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/modFloorModgradients/Mean_4_grad/addgradients/Mean_4_grad/Size*
_class
loc:@Mean_4*
_output_shapes
: *
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
!gradients/Mean_4_grad/range/startConst*
value	B : *
_class
loc:@Mean_4*
_output_shapes
: *
dtype0
~
!gradients/Mean_4_grad/range/deltaConst*
value	B :*
_class
loc:@Mean_4*
_output_shapes
: *
dtype0
Щ
gradients/Mean_4_grad/rangeRange!gradients/Mean_4_grad/range/startgradients/Mean_4_grad/Size!gradients/Mean_4_grad/range/delta*

Tidx0*
_class
loc:@Mean_4*
_output_shapes
:
}
 gradients/Mean_4_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_4
Ё
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
T0*
_output_shapes
: *
_class
loc:@Mean_4
ї
#gradients/Mean_4_grad/DynamicStitchDynamicStitchgradients/Mean_4_grad/rangegradients/Mean_4_grad/modgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
_class
loc:@Mean_4*
T0
|
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
З
gradients/Mean_4_grad/MaximumMaximum#gradients/Mean_4_grad/DynamicStitchgradients/Mean_4_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4*
T0
Џ
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Maximum*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4*
T0
З
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_4
Б
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
З
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_4

gradients/Mean_4_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_4
Л
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_3gradients/Mean_4_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_4*
T0*
	keep_dims( *

Tidx0
~
!gradients/Mean_4_grad/Maximum_1/yConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
Ї
gradients/Mean_4_grad/Maximum_1Maximumgradients/Mean_4_grad/Prod_1!gradients/Mean_4_grad/Maximum_1/y*
T0*
_class
loc:@Mean_4*
_output_shapes
: 
Ѕ
 gradients/Mean_4_grad/floordiv_1FloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum_1*
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/CastCast gradients/Mean_4_grad/floordiv_1*

SrcT0*
_class
loc:@Mean_4*
_output_shapes
: *

DstT0
Љ
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
_class
loc:@Mean_4*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/Neg_1_grad/NegNeggradients/Mean_4_grad/truediv*
T0*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Neg_1
y
gradients/Sum_3_grad/ShapeShapemul_3*
T0*
out_type0*
_class

loc:@Sum_3*
_output_shapes
:
u
gradients/Sum_3_grad/SizeConst*
value	B :*
_class

loc:@Sum_3*
dtype0*
_output_shapes
: 

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
_output_shapes
: *
_class

loc:@Sum_3*
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
loc:@Sum_3*
dtype0*
_output_shapes
: 
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
 gradients/Sum_3_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3
Ф
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*
_output_shapes
:*
_class

loc:@Sum_3
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
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
_class

loc:@Sum_3*
_output_shapes
: *
T0
ё
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
_class

loc:@Sum_3*
T0
z
gradients/Sum_3_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3
Г
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*
_class

loc:@Sum_3*#
_output_shapes
:џџџџџџџџџ
Ђ
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_3
А
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_3*
T0
М
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*
_class

loc:@Sum_3*'
_output_shapes
:џџџџџџџџџ
*
T0*

Tmultiples0

gradients/mul_3_grad/ShapeShapeactivation_8_target_1*
out_type0*
_class

loc:@mul_3*
_output_shapes
:*
T0
{
gradients/mul_3_grad/Shape_1ShapeLog_1*
out_type0*
_class

loc:@mul_3*
_output_shapes
:*
T0
д
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0*
_class

loc:@mul_3*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/mul_3_grad/mulMulgradients/Sum_3_grad/TileLog_1*
_class

loc:@mul_3*'
_output_shapes
:џџџџџџџџџ
*
T0
П
gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_3*
T0*
	keep_dims( *

Tidx0
Р
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
_class

loc:@mul_3

gradients/mul_3_grad/mul_1Mulactivation_8_target_1gradients/Sum_3_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@mul_3
Х
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_3*
T0*
	keep_dims( *

Tidx0
Н
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class

loc:@mul_3*
T0
Ћ
gradients/Log_1_grad/Reciprocal
Reciprocalclip_by_value_1^gradients/mul_3_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Log_1
Ќ
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*
_class

loc:@Log_1*'
_output_shapes
:џџџџџџџџџ
*
T0

$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
out_type0*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0

&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *"
_class
loc:@clip_by_value_1*
_output_shapes
: *
dtype0
Ђ
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
out_type0*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0

*gradients/clip_by_value_1_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@clip_by_value_1
ж
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
Г
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
*
T0
ќ
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0*"
_class
loc:@clip_by_value_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
*
T0
Б
)gradients/clip_by_value_1_grad/LogicalNot
LogicalNot+gradients/clip_by_value_1_grad/GreaterEqual*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ

ђ
'gradients/clip_by_value_1_grad/Select_1Select)gradients/clip_by_value_1_grad/LogicalNotgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*
T0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ

ъ
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
_output_shapes
:*"
_class
loc:@clip_by_value_1*
T0*
	keep_dims( *

Tidx0
п
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
Tshape0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
*
T0
№
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*"
_class
loc:@clip_by_value_1*
T0*
	keep_dims( *

Tidx0
д
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
_output_shapes
: *
Tshape0*"
_class
loc:@clip_by_value_1*
T0
Ё
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:

.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB **
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
: *
dtype0
Р
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
_output_shapes
:*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
T0
Ѓ
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    **
_class 
loc:@clip_by_value_1/Minimum
і
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ

­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ


<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ**
_class 
loc:@clip_by_value_1/Minimum*
T0

-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
Ц
1gradients/clip_by_value_1/Minimum_grad/LogicalNot
LogicalNot0gradients/clip_by_value_1/Minimum_grad/LessEqual**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ

 
/gradients/clip_by_value_1/Minimum_grad/Select_1Select1gradients/clip_by_value_1/Minimum_grad/LogicalNot&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*'
_output_shapes
:џџџџџџџџџ
**
_class 
loc:@clip_by_value_1/Minimum*
T0

*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:**
_class 
loc:@clip_by_value_1/Minimum*
T0*
	keep_dims( *

Tidx0
џ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ
*
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
є
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
T0

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:*
T0
ф
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_2
В
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2
г
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
_class
loc:@truediv_2*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@truediv_2

gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2*
T0
Ђ
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ј
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ч
gradients/truediv_2_grad/mulMul.gradients/clip_by_value_1/Minimum_grad/Reshape"gradients/truediv_2_grad/RealDiv_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

г
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@truediv_2*
T0*
	keep_dims( *

Tidx0
Э
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
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
loc:@Sum_2*
_output_shapes
: *
dtype0

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*
_class

loc:@Sum_2*
_output_shapes
: 

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_2
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
Ф
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_2*

Tidx0
{
gradients/Sum_2_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_2*
dtype0*
_output_shapes
: 

gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
_class

loc:@Sum_2*
_output_shapes
: *
T0
ё
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*
_class

loc:@Sum_2*
N*#
_output_shapes
:џџџџџџџџџ
z
gradients/Sum_2_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_2
Г
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_2*
T0
Ђ
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_2
К
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_2*
_output_shapes
:*
T0
М
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*
_class

loc:@Sum_2*'
_output_shapes
:џџџџџџџџџ
*
T0*

Tmultiples0
Ќ
gradients/AddNAddN gradients/truediv_2_grad/Reshapegradients/Sum_2_grad/Tile*
N*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2
Е
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*
T0*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_1/Softmax
А
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
:џџџџџџџџџ*
T0*
	keep_dims( *

Tidx0
Џ
3gradients/activation_8_1/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   *)
_class
loc:@activation_8_1/Softmax

-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*
T0*
Tshape0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ
Ь
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_1/Softmax*
T0
в
+gradients/activation_8_1/Softmax_grad/mul_1Mul)gradients/activation_8_1/Softmax_grad/subactivation_8_1/Softmax*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ

№
&gradients/dense_4_1/MatMul_grad/MatMulMatMul+gradients/activation_8_1/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_4_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
ь
(gradients/dense_4_1/MatMul_grad/MatMul_1MatMuldropout_6_1/cond/Merge+gradients/activation_8_1/Softmax_grad/mul_1*
transpose_b( *#
_class
loc:@dense_4_1/MatMul*
_output_shapes
:	
*
transpose_a(*
T0
ч
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*
T0*#
_class
loc:@dense_4_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
Ж
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
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
T0*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:џџџџџџџџџ
т
2gradients/dropout_6_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_6_1/cond/Merge_grad/cond_gradgradients/zeros*%
_class
loc:@activation_7_1/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
О
1gradients/dropout_6_1/cond/dropout/mul_grad/ShapeShapedropout_6_1/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
Т
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
А
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
э
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_6_1/cond/dropout/mul_grad/SumSum/gradients/dropout_6_1/cond/dropout/mul_grad/mulAgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_6_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/mul_grad/Sum1gradients/dropout_6_1/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
э
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ё
1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:

5gradients/dropout_6_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_13gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
Ж
1gradients/dropout_6_1/cond/dropout/div_grad/ShapeShapedropout_6_1/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
Ї
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div
А
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ћ
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_6_1/cond/dropout/div_grad/SumSum3gradients/dropout_6_1/cond/dropout/div_grad/RealDivAgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

3gradients/dropout_6_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/div_grad/Sum1gradients/dropout_6_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
А
/gradients/dropout_6_1/cond/dropout/div_grad/NegNegdropout_6_1/cond/mul*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
љ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_6_1/cond/dropout/div_grad/Neg"dropout_6_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
џ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

1gradients/dropout_6_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_6_1/cond/dropout/div_grad/mulCgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
Џ
)gradients/dropout_6_1/cond/mul_grad/ShapeShapedropout_6_1/cond/mul/Switch:1*
T0*
out_type0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:

+gradients/dropout_6_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_6_1/cond/mul*
dtype0*
_output_shapes
: 

9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul*
T0
з
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul
ћ
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_6_1/cond/mul_grad/ReshapeReshape'gradients/dropout_6_1/cond/mul_grad/Sum)gradients/dropout_6_1/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
р
)gradients/dropout_6_1/cond/mul_grad/mul_1Muldropout_6_1/cond/mul/Switch:13gradients/dropout_6_1/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
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
ш
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_6_1/cond/mul
И
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
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
gradients/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_7_1/Elu

gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*%
_class
loc:@activation_7_1/Elu*(
_output_shapes
:џџџџџџџџџ
т
4gradients/dropout_6_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_6_1/cond/mul_grad/Reshapegradients/zeros_1*
T0*%
_class
loc:@activation_7_1/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
х
gradients/AddN_1AddN2gradients/dropout_6_1/cond/Switch_1_grad/cond_grad4gradients/dropout_6_1/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:џџџџџџџџџ*
N*%
_class
loc:@activation_7_1/Elu*
T0
Д
)gradients/activation_7_1/Elu_grad/EluGradEluGradgradients/AddN_1activation_7_1/Elu*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
ю
&gradients/dense_3_1/MatMul_grad/MatMulMatMul)gradients/activation_7_1/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*#
_class
loc:@dense_3_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
ы
(gradients/dense_3_1/MatMul_grad/MatMul_1MatMuldropout_5_1/cond/Merge)gradients/activation_7_1/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_3_1/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ч
/gradients/dropout_5_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_3_1/MatMul_grad/MatMuldropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_3_1/MatMul
И
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu*
T0

gradients/Shape_3Shapegradients/Switch_2:1*
out_type0*%
_class
loc:@activation_6_1/Elu*
_output_shapes
:*
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
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu
ф
2gradients/dropout_5_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_5_1/cond/Merge_grad/cond_gradgradients/zeros_2*
T0*%
_class
loc:@activation_6_1/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
О
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
Т
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:*
T0
А
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
э
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
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
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
э
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ё
1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ж
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:*
T0
Ї
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div
А
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ћ
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div

/gradients/dropout_5_1/cond/dropout/div_grad/SumSum3gradients/dropout_5_1/cond/dropout/div_grad/RealDivAgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/div

3gradients/dropout_5_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/div_grad/Sum1gradients/dropout_5_1/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
А
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
љ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
џ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

1gradients/dropout_5_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_5_1/cond/dropout/div_grad/mulCgradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/div

5gradients/dropout_5_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/div_grad/Sum_13gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
Џ
)gradients/dropout_5_1/cond/mul_grad/ShapeShapedropout_5_1/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_1/cond/mul

+gradients/dropout_5_1/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_5_1/cond/mul

9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_5_1/cond/mul_grad/Shape+gradients/dropout_5_1/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_5_1/cond/mul
з
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_5_1/cond/mul*
T0
ћ
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_5_1/cond/mul*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
T0
р
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
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
ш
-gradients/dropout_5_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_5_1/cond/mul_grad/Sum_1+gradients/dropout_5_1/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
: 
И
gradients/Switch_3Switchactivation_6_1/Eludropout_5_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
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
gradients/zeros_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_1/Elu

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
т
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_1/Elu
х
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_6_1/Elu*
N*(
_output_shapes
:џџџџџџџџџ
Д
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ
ю
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_2_1/MatMul*
T0
ы
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_1/MatMul
ч
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*
T0*#
_class
loc:@dense_2_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
И
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_5Shapegradients/Switch_4:1*
T0*
out_type0*%
_class
loc:@activation_5_1/Elu*
_output_shapes
:

gradients/zeros_4/ConstConst*
_output_shapes
: *
dtype0*
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
:џџџџџџџџџ
ф
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4*%
_class
loc:@activation_5_1/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
О
1gradients/dropout_4_1/cond/dropout/mul_grad/ShapeShapedropout_4_1/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:
Т
3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1Shapedropout_4_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:
А
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
э
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_4_1/cond/dropout/mul_grad/SumSum/gradients/dropout_4_1/cond/dropout/mul_grad/mulAgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

3gradients/dropout_4_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/mul_grad/Sum1gradients/dropout_4_1/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
э
1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Muldropout_4_1/cond/dropout/div1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ё
1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_4_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

5gradients/dropout_4_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_13gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
Ж
1gradients/dropout_4_1/cond/dropout/div_grad/ShapeShapedropout_4_1/cond/mul*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:*
T0
Ї
3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_1/cond/dropout/div
А
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ћ
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
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
3gradients/dropout_4_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/div_grad/Sum1gradients/dropout_4_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
А
/gradients/dropout_4_1/cond/dropout/div_grad/NegNegdropout_4_1/cond/mul*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
љ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
џ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

1gradients/dropout_4_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_4_1/cond/dropout/div_grad/mulCgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:

5gradients/dropout_4_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/div_grad/Sum_13gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
Џ
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
loc:@dropout_4_1/cond/mul*
_output_shapes
: *
dtype0

9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_4_1/cond/mul_grad/Shape+gradients/dropout_4_1/cond/mul_grad/Shape_1*'
_class
loc:@dropout_4_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
з
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*
T0*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
ћ
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
T0
р
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_4_1/cond/mul
ш
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
: *
T0
И
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_6Shapegradients/Switch_5*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_1/Elu*
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
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu
т
4gradients/dropout_4_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_4_1/cond/mul_grad/Reshapegradients/zeros_5*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_5_1/Elu
х
gradients/AddN_3AddN2gradients/dropout_4_1/cond/Switch_1_grad/cond_grad4gradients/dropout_4_1/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu
Д
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu
ю
&gradients/dense_1_1/MatMul_grad/MatMulMatMul)gradients/activation_5_1/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_1_1/MatMul*(
_output_shapes
:џџџџџџџџџ$*
transpose_a( 
ш
(gradients/dense_1_1/MatMul_grad/MatMul_1MatMulflatten_1_1/Reshape)gradients/activation_5_1/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
$*
transpose_a(*#
_class
loc:@dense_1_1/MatMul*
T0
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
	container *
shape:
$*
dtype0*
shared_name 
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
_output_shapes
:
*
dtype0*
valueB
*    


Variable_1
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Ѓ
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
_output_shapes
:
*
_class
loc:@Variable_1*
T0
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
Є
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
_output_shapes
:
*
_class
loc:@Variable_2*
T0
_
Const_11Const*
valueB	
*    *
_output_shapes
:	
*
dtype0
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
Ѓ
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
Variable_3*
_output_shapes
:	
*
_class
loc:@Variable_3*
T0
a
Const_12Const*
valueB
$*    * 
_output_shapes
:
$*
dtype0
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
Є
Variable_4/AssignAssign
Variable_4Const_12* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_4*
T0*
use_locking(
q
Variable_4/readIdentity
Variable_4*
T0* 
_output_shapes
:
$*
_class
loc:@Variable_4
a
Const_13Const*
valueB
*    * 
_output_shapes
:
*
dtype0
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
Є
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
Variable_5*
T0*
_class
loc:@Variable_5* 
_output_shapes
:

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
	container *
dtype0*
shared_name *
shape:

Є
Variable_6/AssignAssign
Variable_6Const_14* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_6*
T0*
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
dtype0*
_output_shapes
:	
*
valueB	
*    


Variable_7
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 
Ѓ
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
Variable_7*
_class
loc:@Variable_7*
_output_shapes
:	
*
T0
L
mul_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
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
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
H
mul_7Mulmul_7/xSquare* 
_output_shapes
:
$*
T0
C
addAddmul_6mul_7*
T0* 
_output_shapes
:
$

Assign_8AssignVariableadd*
_class
loc:@Variable* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
L
add_1/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
Q
add_1AddVariable_4/readadd_1/y* 
_output_shapes
:
$*
T0
M
Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_17Const*
valueB
 *  *
dtype0*
_output_shapes
: 
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
 *wЬ+2*
dtype0*
_output_shapes
: 
E
add_2Addaddadd_2/y*
T0* 
_output_shapes
:
$
M
Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *    
M
Const_19Const*
_output_shapes
: *
dtype0*
valueB
 *  
^
clip_by_value_3/MinimumMinimumadd_2Const_19*
T0* 
_output_shapes
:
$
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
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*!
_class
loc:@dense_1/kernel
M
mul_10/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_10Mulmul_10/xVariable_4/read*
T0* 
_output_shapes
:
$
H
Square_1Square	truediv_4*
T0* 
_output_shapes
:
$
M
mul_11/xConst*
valueB
 *ЭЬL=*
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
mul_12/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_12Mulmul_12/xVariable_1/read*
T0* 
_output_shapes
:

g
Square_2Square(gradients/dense_2_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_13/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
L
mul_13Mulmul_13/xSquare_2* 
_output_shapes
:
*
T0
G
add_4Addmul_12mul_13* 
_output_shapes
:
*
T0

	Assign_11Assign
Variable_1add_4*
_class
loc:@Variable_1* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
L
add_5/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
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
clip_by_value_4/MinimumMinimumadd_5Const_21*
T0* 
_output_shapes
:

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
mul_14Mul(gradients/dense_2_1/MatMul_grad/MatMul_1Sqrt_2* 
_output_shapes
:
*
T0
L
add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
Const_23Const*
dtype0*
_output_shapes
: *
valueB
 *  
^
clip_by_value_5/MinimumMinimumadd_6Const_23* 
_output_shapes
:
*
T0
h
clip_by_value_5Maximumclip_by_value_5/MinimumConst_22*
T0* 
_output_shapes
:

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
sub_3Subdense_2/kernel/readmul_15*
T0* 
_output_shapes
:

Ё
	Assign_12Assigndense_2/kernelsub_3*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
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
Square_3Square	truediv_5* 
_output_shapes
:
*
T0
M
mul_17/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
L
mul_17Mulmul_17/xSquare_3* 
_output_shapes
:
*
T0
G
add_7Addmul_16mul_17* 
_output_shapes
:
*
T0

	Assign_13Assign
Variable_5add_7*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_5
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
 *ЭЬL=
L
mul_19Mulmul_19/xSquare_4*
T0* 
_output_shapes
:

G
add_8Addmul_18mul_19* 
_output_shapes
:
*
T0
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
add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
Q
add_9AddVariable_6/readadd_9/y*
T0* 
_output_shapes
:

M
Const_24Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_25Const*
valueB
 *  *
_output_shapes
: *
dtype0
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
add_10/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
I
add_10Addadd_8add_10/y*
T0* 
_output_shapes
:

M
Const_26Const*
valueB
 *    *
_output_shapes
: *
dtype0
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
mul_21Mul	lr_1/read	truediv_6*
T0* 
_output_shapes
:

T
sub_4Subdense_3/kernel/readmul_21*
T0* 
_output_shapes
:

Ё
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
mul_22/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_22Mulmul_22/xVariable_6/read*
T0* 
_output_shapes
:

H
Square_5Square	truediv_6*
T0* 
_output_shapes
:

M
mul_23/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
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
Square_6Square(gradients/dense_4_1/MatMul_grad/MatMul_1*
_output_shapes
:	
*
T0
M
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
K
mul_25Mulmul_25/xSquare_6*
_output_shapes
:	
*
T0
G
add_12Addmul_24mul_25*
_output_shapes
:	
*
T0
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
 *wЬ+2*
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
Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_29Const*
dtype0*
_output_shapes
: *
valueB
 *  
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
mul_26Mul(gradients/dense_4_1/MatMul_grad/MatMul_1Sqrt_6*
_output_shapes
:	
*
T0
M
add_14/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
I
add_14Addadd_12add_14/y*
T0*
_output_shapes
:	

M
Const_30Const*
_output_shapes
: *
dtype0*
valueB
 *    
M
Const_31Const*
valueB
 *  *
dtype0*
_output_shapes
: 
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
 *33s?*
_output_shapes
: *
dtype0
R
mul_28Mulmul_28/xVariable_7/read*
_output_shapes
:	
*
T0
G
Square_7Square	truediv_7*
_output_shapes
:	
*
T0
M
mul_29/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
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
_class
loc:@Variable_7*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
Г
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
с
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign""п	
	variablesб	Ю	
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
Variable_7:0Variable_7/AssignVariable_7/read:0"щ	
trainable_variablesб	Ю	
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
Variable_7:0Variable_7/AssignVariable_7/read:0"c
cond_contextћbјb
э
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
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*А
activation_2/Elu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0/
activation_2/Elu:0dropout_1/cond/Switch_1:0
э
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
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*А
activation_3/Elu:0
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0/
activation_3/Elu:0dropout_2/cond/Switch_1:0

dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *Џ
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
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*Ц
dropout_3/cond/Switch_1:0
dropout_3/cond/Switch_1:1
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:0
max_pooling2d_1/transpose_1:0:
max_pooling2d_1/transpose_1:0dropout_3/cond/Switch_1:0
э
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
dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*А
activation_5/Elu:0
dropout_4/cond/Switch_1:0
dropout_4/cond/Switch_1:1
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:0/
activation_5/Elu:0dropout_4/cond/Switch_1:0
э
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
dropout_5/cond/cond_text_1dropout_5/cond/pred_id:0dropout_5/cond/switch_f:0*А
activation_6/Elu:0
dropout_5/cond/Switch_1:0
dropout_5/cond/Switch_1:1
dropout_5/cond/pred_id:0
dropout_5/cond/switch_f:0/
activation_6/Elu:0dropout_5/cond/Switch_1:0
э
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
dropout_6/cond/cond_text_1dropout_6/cond/pred_id:0dropout_6/cond/switch_f:0*А
activation_7/Elu:0
dropout_6/cond/Switch_1:0
dropout_6/cond/Switch_1:1
dropout_6/cond/pred_id:0
dropout_6/cond/switch_f:0/
activation_7/Elu:0dropout_6/cond/Switch_1:0

dropout_1_1/cond/cond_textdropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_t:0 *С
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
dropout_1_1/cond/cond_text_1dropout_1_1/cond/pred_id:0dropout_1_1/cond/switch_f:0*О
activation_2_1/Elu:0
dropout_1_1/cond/Switch_1:0
dropout_1_1/cond/Switch_1:1
dropout_1_1/cond/pred_id:0
dropout_1_1/cond/switch_f:03
activation_2_1/Elu:0dropout_1_1/cond/Switch_1:0

dropout_2_1/cond/cond_textdropout_2_1/cond/pred_id:0dropout_2_1/cond/switch_t:0 *С
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
dropout_2_1/cond/cond_text_1dropout_2_1/cond/pred_id:0dropout_2_1/cond/switch_f:0*О
activation_3_1/Elu:0
dropout_2_1/cond/Switch_1:0
dropout_2_1/cond/Switch_1:1
dropout_2_1/cond/pred_id:0
dropout_2_1/cond/switch_f:03
activation_3_1/Elu:0dropout_2_1/cond/Switch_1:0
Б
dropout_3_1/cond/cond_textdropout_3_1/cond/pred_id:0dropout_3_1/cond/switch_t:0 *з
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
Ў
dropout_3_1/cond/cond_text_1dropout_3_1/cond/pred_id:0dropout_3_1/cond/switch_f:0*д
dropout_3_1/cond/Switch_1:0
dropout_3_1/cond/Switch_1:1
dropout_3_1/cond/pred_id:0
dropout_3_1/cond/switch_f:0
max_pooling2d_1_1/transpose_1:0>
max_pooling2d_1_1/transpose_1:0dropout_3_1/cond/Switch_1:0

dropout_4_1/cond/cond_textdropout_4_1/cond/pred_id:0dropout_4_1/cond/switch_t:0 *С
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
dropout_4_1/cond/cond_text_1dropout_4_1/cond/pred_id:0dropout_4_1/cond/switch_f:0*О
activation_5_1/Elu:0
dropout_4_1/cond/Switch_1:0
dropout_4_1/cond/Switch_1:1
dropout_4_1/cond/pred_id:0
dropout_4_1/cond/switch_f:03
activation_5_1/Elu:0dropout_4_1/cond/Switch_1:0

dropout_5_1/cond/cond_textdropout_5_1/cond/pred_id:0dropout_5_1/cond/switch_t:0 *С
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
dropout_5_1/cond/cond_text_1dropout_5_1/cond/pred_id:0dropout_5_1/cond/switch_f:0*О
activation_6_1/Elu:0
dropout_5_1/cond/Switch_1:0
dropout_5_1/cond/Switch_1:1
dropout_5_1/cond/pred_id:0
dropout_5_1/cond/switch_f:03
activation_6_1/Elu:0dropout_5_1/cond/Switch_1:0

dropout_6_1/cond/cond_textdropout_6_1/cond/pred_id:0dropout_6_1/cond/switch_t:0 *С
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
dropout_6_1/cond/cond_text_1dropout_6_1/cond/pred_id:0dropout_6_1/cond/switch_f:0*О
activation_7_1/Elu:0
dropout_6_1/cond/Switch_1:0
dropout_6_1/cond/Switch_1:1
dropout_6_1/cond/pred_id:0
dropout_6_1/cond/switch_f:03
activation_7_1/Elu:0dropout_6_1/cond/Switch_1:0Зй0       	H8@7SжA*

val_accnP?шЅ;.       чЮј	п8@7SжA*


accУѕш>ЯJSC       ШС	9@7SжA*

val_loss@I? Э'ь       ЃK"	=9@7SжA*

lossQкf@]2       `/п#	9A7SжA*

val_acca?дh8_       ё(	9A7SжA*


accЪЅ<?U{	       йм2	а9A7SжA*

val_lossD3Ь>­ФЂ       и-	љ9A7SжA*

lossvљk?2іЅ§       `/п#	ўмA7SжA*

val_accціg?tЏс       ё(	нA7SжA*


accF0Q?FE`       йм2	"нA7SжA*

val_losso­>).d       и-	онA7SжA*

lossр?KХЫ       `/п#	`^B7SжA*

val_accЯf?3Ж       ё(	b`B7SжA*


acc[\?jњчХ       йм2	[aB7SжA*

val_loss{]Ќ>љЗ У       и-	bB7SжA*

loss`ѓ>сЏ>-       `/п#	ДC+C7SжA*

val_accBj?­Ќ       ё(	№E+C7SжA*


accоa?)tUі       йм2	ќF+C7SжA*

val_lossU[>WКdі       и-	ЫG+C7SжA*

lossЭ>їKhМ       `/п#	(ЩдC7SжA*

val_accp^m?H9       ё(	&ЫдC7SжA*


acc~Бd?5xэш       йм2	ЬдC7SжA*

val_lossХ7>FыC;       и-	лЬдC7SжA*

loss8МЌ>ЛЬчG       `/п#	XDD7SжA*

val_accЊЫm?ЄФ       ё(	ЉFD7SжA*


accБi?О       йм2	яGD7SжA*

val_lossь>дќI       и-	ГHD7SжA*

loss§>зBЌЮ       `/п#	B%E7SжA*

val_acc5ёl?№jФГ       ё(	ЧB%E7SжA*


accqxm?нШ       йм2	ўB%E7SжA*

val_loss->kлП]       и-	(C%E7SжA*

lossпm>фЯn]       `/п#	ЅsаE7SжA*

val_acccЩo?ў Ј       ё(	]vаE7SжA*


accЋхm?гbф       йм2	ЕwаE7SжA*

val_lossє#>Фb(ў       и-	gxаE7SжA*

loss>|g>дў8*       `/п#	$зyF7SжA	*

val_accЬэo?ZLЪ       ё(	йyF7SжA	*


acc_q?bRу       йм2	кyF7SжA	*

val_loss=I>U]5       и-	ЩкyF7SжA	*

loss"ЮL>3        `/п#	№ G7SжA
*

val_accЪn?}\6Х       ё(	ц G7SжA
*


accUr?С28y       йм2	ж G7SжA
*

val_lossЬ>AЪЈ       и-	 G7SжA
*

lossЊ8>?:т]       `/п#	РG7SжA*

val_accњЄo?Э&       ё(	XРG7SжA*


acc#s?`       йм2	РG7SжA*

val_lossњ>+ЎюА       и-	КРG7SжA*

lossЅ>`С       `/п#	§дiH7SжA*

val_acc[p?<с
_       ё(	)хiH7SжA*


accЇt?%"СЯ       йм2	цiH7SжA*

val_lossЭ>cЕ:P       и-	~чiH7SжA*

lossш>8       `/п#	ї2I7SжA*

val_accЈьp?яТ       ё(	3I7SжA*


accЛEu?йСRУ       йм2	Я3I7SжA*

val_lossђ>ПЧЃ       и-	ј3I7SжA*

loss{@њ=2яF/       `/п#	'ёЕI7SжA*

val_accзЃp?4ЎЪk       ё(	ѓЕI7SжA*


accw?ЄЗHћ       йм2	аєЕI7SжA*

val_lossU>­$M       и-	ѕЕI7SжA*

lossЩт=ќ"       `/п#	pUJ7SжA*

val_acc@Шp?Бzpх       ё(	ЉpUJ7SжA*


acc9Мv?3-дG       йм2	юpUJ7SжA*

val_loss>IЖ`r       и-	'qUJ7SжA*

lossэ{џ=КUРг       `/п#	gіJ7SжA*

val_acc)\o?ХW       ё(	gіJ7SжA*


acc=
w?р       йм2	ЫgіJ7SжA*

val_lossЖqЁ>П:д       и-	њgіJ7SжA*

lossнъ=ЕЕі       `/п#	)<ЃK7SжA*

val_acc[p?k3ќ       ё(	>ЃK7SжA*


accРЮx?<ы       йм2	?ЃK7SжA*

val_loss#ы>А       и-	N@ЃK7SжA*

losscЄХ=БЖx       `/п#	у*HL7SжA*

val_accтYq?6ѓk       ё(	д+HL7SжA*


accњ;y?}o       йм2	',HL7SжA*

val_loss^І>	Q+e       и-	l,HL7SжA*

lossQЉ=/№f       `/п#	ЖцL7SжA*

val_accњЄo?рж-О       ё(	YцL7SжA*


accy?_"I       йм2	цL7SжA*

val_lossЋ>щsл       и-	ЙцL7SжA*

loss =ННЪ4       `/п#	бщM7SжA*

val_acc[p?Д_       ё(	тъM7SжA*


acc>Ez?ЈQм       йм2	.ыM7SжA*

val_loss$ХБ>Љ(Є       и-	iыM7SжA*

lossПэq=Йїzџ       `/п#	|N7SжA*

val_acc6p?8(ѕN       ё(	И|N7SжA*


acc9їy?щvбу       йм2	
}N7SжA*

val_lossъЌД>ИІ;       и-	}N7SжA*

lossV=&L       `/п#	KЃЗN7SжA*

val_accnp?ѕЃvm       ё(	ЄЗN7SжA*


accЈz?bЄб       йм2	`ЄЗN7SжA*

val_lossЅВ>p/K       и-	ЄЗN7SжA*

losszR=Мо       `/п#	cSO7SжA*

val_accДЂq?Яj       ё(	зcSO7SжA*


accт№z?G?'F       йм2	dSO7SжA*

val_lossЇ>`Џ.       и-	ZdSO7SжA*

lossжj=ЂЪ       `/п#	 ј№O7SжA*

val_accюr?д|       ё(	ћј№O7SжA*


acc!Ќ{?i§FЭ       йм2	0љ№O7SжA*

val_losspыЊ>эG8м       и-	Zљ№O7SжA*

lossђИI=5Ќ&       `/п#	VqP7SжA*

val_acc@Шp?цbь       ё(	вqP7SжA*


accь{?ІСтЉ       йм2	rP7SжA*

val_lossЌЖІ>§L9м       и-	,rP7SжA*

lossЂ}z=тъЅQ       `/п#	ш$Q7SжA*

val_accДЂq?л       ё(	гш$Q7SжA*


accХW|?Ь V        йм2	щ$Q7SжA*

val_lossЏ>`мЋ       и-	6щ$Q7SжA*

lossh;=Сuал       `/п#	јЩQ7SжA*

val_accЧq?Ѕнg       ё(	XљЩQ7SжA*


accћv|?cw       йм2	ЁљЩQ7SжA*

val_lossИ>c       и-	лљЩQ7SжA*

losssD=йРЕ       `/п#	СeR7SжA*

val_accK~q?4эЋ       ё(	ЧeR7SжA*


acc5ф|?<g$к       йм2	,eR7SжA*

val_lossM~Ж>К(ё       и-	~eR7SжA*

loss>O(=ЖЏ-       `/п#	юvS7SжA*

val_accДЂq?iѕЙ       ё(	wS7SжA*


acc`g|?Jи       йм2	уwS7SжA*

val_loss мИ>ыЈ       и-	#xS7SжA*

lossіУ2=IDШ       `/п#	lЂS7SжA*

val_acc(}r?Uтb       ё(	зlЂS7SжA*


accj}?Д$яц       йм2	mЂS7SжA*

val_lossгА>Уывв       и-	8mЂS7SжA*

loss^ќ<  Ї       `/п#	з8T7SжA*

val_accтYq?Љ}:л       ё(	X8T7SжA*


accj}?EмM       йм2	8T7SжA*

val_loss\Е>яЋШ'       и-	З8T7SжA*

lossК)=5lРz       `/п#	ЮT7SжA *

val_acc(}r?qж       ё(	ЮT7SжA *


acc5ф|?Ј<p       йм2	УЮT7SжA *

val_lossљЙ>Иn       и-	юЮT7SжA *

lossи5=Ќ+k       `/п#	'gU7SжA!*

val_accтYq?РOМ       ё(	чgU7SжA!*


acc>}?ЗЈ/u       йм2	gU7SжA!*

val_losscЛ>лџ-       и-	IgU7SжA!*

lossB=*:І       `/п#	hўU7SжA"*

val_acc@Шp?4       ё(	ўU7SжA"*


accй}?Ђ?       йм2	6ўU7SжA"*

val_loss)Ц>ЗQ6ђ       и-	^ўU7SжA"*

lossPИ=
&ШR       `/п#	ЅV7SжA#*

val_accЧq?Ql       ё(	ЃЅV7SжA#*


accдA}?-м       йм2	пЅV7SжA#*

val_lossЅkМ>JcО       и-	ІV7SжA#*

lossе"=јtY       `/п#	c-W7SжA$*

val_accq?Ci%       ё(	ъ-W7SжA$*


accoQ}?Цћ       йм2	!-W7SжA$*

val_lossлЦ>ўЊћ       и-	O-W7SжA$*

lossйў=Ъ       `/п#	iфХW7SжA%*

val_accЧq?}       ё(	їфХW7SжA%*


accй}?M
б       йм2	/хХW7SжA%*

val_lossыёО>7і       и-	`хХW7SжA%*

loss+ =lм[й       `/п#	AaX7SжA&*

val_accЈьp?Б&N       ё(	)aX7SжA&*


accCЮ}?Ч!       йм2	aX7SжA&*

val_lossЗvЫ>`sM       и-	ЭaX7SжA&*

lossАз<d}О       `/п#	aњX7SжA'*

val_accДЂq?m->       ё(	ЫaњX7SжA'*


acc}?Qщэ       йм2	bњX7SжA'*

val_lossi;Т>OШw	       и-	bbњX7SжA'*

lossкЙ$=ЊЯє       `/п#	QmY7SжA(*

val_accыq?sчя       ё(	юmY7SжA(*


accCЮ}?нm9       йм2	,nY7SжA(*

val_lossЇП>Рcf       и-	^nY7SжA(*

lossљЮа<­e'з       `/п#	0И5Z7SжA)*

val_accV4r?,юs       ё(	щИ5Z7SжA)*


accxэ}?tY       йм2	$Й5Z7SжA)*

val_lossІLУ>ѕРзN       и-	WЙ5Z7SжA)*

losssм<єѕ       `/п#	yџбZ7SжA**

val_accюr?\\ќф       ё(	 вZ7SжA**


accон}?J>I       йм2	вZ7SжA**

val_lossЏvО>OЇ       и-	jвZ7SжA**

loss8wц<P       `/п#	Љцs[7SжA+*

val_accљХr?PЕњ№       ё(	\чs[7SжA+*


accу+~?^иQ       йм2	чs[7SжA+*

val_lossсУМ>ОЗ       и-	Мчs[7SжA+*

loss*№<а       `/п#	)у\7SжA,*

val_accЫs?ZЌ       ё(	іу\7SжA,*


acct}?I       йм2	Nф\7SжA,*

val_lossУЦ>Кѓ       и-	ф\7SжA,*

lossЏг =c0ј       `/п#	ыЊ\7SжA-*

val_acc33s?ЙYю       ё(	\ьЊ\7SжA-*


accЎ~?ЯЃѓY       йм2	ВьЊ\7SжA-*

val_losssР>/ж7л       и-	љьЊ\7SжA-*

lossFЩ<ђ=~       `/п#	I]7SжA.*

val_accV4r?ўЦ       ё(	 I]7SжA.*


acc§}?ЮН<       йм2	1I]7SжA.*

val_lossП>ЙЙ<       и-	WI]7SжA.*

lossБСЧ<gцЉ4       `/п#	!ц]7SжA/*

val_accbъr?Ќ6я       ё(	ц!ц]7SжA/*


accВZ~?њч7       йм2	/"ц]7SжA/*

val_lossvЙ>№aд       и-	h"ц]7SжA/*

lossb§­<gйс       `/п#	6^7SжA0*

val_accюr?0§0       ё(	%7^7SжA0*


accшy~?Nј/       йм2	7^7SжA0*

val_lossЉ"Р>т ф­       и-	з7^7SжA0*

lossрј<и8Q	       `/п#	lG(_7SжA1*

val_accПXr?уГ|       ё(	H(_7SжA1*


accMj~?L}       йм2	mH(_7SжA1*

val_loss]НЧ>IrП       и-	­H(_7SжA1*

losscМ<Ёјв       `/п#	ЦУ_7SжA2*

val_accЫs?№ТC}       ё(	У_7SжA2*


acc~?э0       йм2	ПУ_7SжA2*

val_lossg№С>ІBё       и-	ыУ_7SжA2*

lossЭ<.єIў       `/п#	T`7SжA3*

val_accыq?8I       ё(	T`7SжA3*


acc§}?Lљq       йм2	ST`7SжA3*

val_lossuЧ>эК/       и-	T`7SжA3*

lossЗhЩ< OKO       `/п#	-О№`7SжA4*

val_accЧq?FМњ@       ё(	ДО№`7SжA4*


accCЮ}?д*zI       йм2	эО№`7SжA4*

val_loss8Ы>+MЅх       и-	П№`7SжA4*

lossaэж<r^XЯ       `/п#	Љa7SжA5*

val_accПXr?ъ-       ё(	{Њa7SжA5*


accЎ~?x|B       йм2	мЊa7SжA5*

val_lossЧ>^Ё       и-	*Ћa7SжA5*

lossЉ/Ї<tUШ       `/п#	Qі(b7SжA6*

val_accЧq?Љ
Лr       ё(	ѓї(b7SжA6*


accу+~?ЖYЂ       йм2	Фј(b7SжA6*

val_lossёб>3ч@Т       и-	rљ(b7SжA6*

lossTEУ<д1у       `/п#	>Ъb7SжA7*

val_accV4r?|Н-С       ё(	Ъb7SжA7*


acc};~?ЎИг       йм2	&Ъb7SжA7*

val_lossKе>У(       и-	ЋЪb7SжA7*

lossЛЮФ<и[       `/п#	Іkc7SжA8*

val_acc(}r?OeДн       ё(	vkc7SжA8*


accЗЈ~?CшE[       йм2	Пkc7SжA8*

val_lossїxд>a;сќ       и-	ќkc7SжA8*

lossvлЈ<3       `/п#	d7SжA9*

val_accЧq?б)       ё(	Ѓd7SжA9*


acc~?C;ЯV       йм2	уd7SжA9*

val_loss­љЪ>л<       и-	d7SжA9*

loss|ДЛ<5д       `/п#	NЅd7SжA:*

val_accbъr?> Ф       ё(	Ѕd7SжA:*


accK~?L0Љ       йм2	WЅd7SжA:*

val_loss&<Ч>ЎЏ/       и-	Ѕd7SжA:*

lossy<шА       `/п#	ђ?e7SжA;*

val_accПXr?hї       ё(	7ѓ?e7SжA;*


accЗЈ~?Юѕ!А       йм2	ѓ?e7SжA;*

val_lossEшЫ>o&l<       и-	Сѓ?e7SжA;*

lossбЈ<70)       `/п#	1жe7SжA<*

val_accПXr?Uчѕ       ё(	Ы1жe7SжA<*


acc};~?џ`T       йм2	2жe7SжA<*

val_lossув>dџД       и-	N2жe7SжA<*

loss* <ќ>9v       `/п#	 кjf7SжA=*

val_accbъr?Yй       ё(	#лjf7SжA=*


accK~?[%Ѕљ       йм2	Xлjf7SжA=*

val_lossкЭ>Ђy       и-	лjf7SжA=*

lossф{С<K­        `/п#	xцg7SжA>*

val_accV4r?p!Ь       ё(	чg7SжA>*


acc~?дП       йм2	:чg7SжA>*

val_lossKа>єS       и-	bчg7SжA>*

lossИШ<ю}       `/п#	Уg7SжA?*

val_accV4r?e@,2       ё(	Zg7SжA?*


acc~?с^       йм2	g7SжA?*

val_lossJњЭ>9P[       и-	Ыg7SжA?*

lossд<у6       `/п#	,h0h7SжA@*

val_acc33s?C[       ё(	Si0h7SжA@*


acc~?№4       йм2	кi0h7SжA@*

val_lossеЩ>)эoњ       и-	@j0h7SжA@*

lossVлЃ<ЈЃв       `/п#	cЩh7SжAA*

val_acc(}r?1"4       ё(	)Щh7SжAA*


accшy~?п­#Н       йм2	dЩh7SжAA*

val_loss@Щ>Cu§О       и-	Щh7SжAA*

lossЉ<ИPeщ       `/п#	Oii7SжAB*

val_accПXr?DЪ       ё(	dPii7SжAB*


acc%?N2І       йм2	ОPii7SжAB*

val_lossїЄЪ>tПz       и-	Qii7SжAB*

lossіd5<tЕМ       `/п#	?j7SжAC*

val_accK~q? .q       ё(	гj7SжAC*


accЗЈ~?"эч       йм2	j7SжAC*

val_lossЭ_Я>I0E|       и-	Gj7SжAC*

lossєь{<jї О       `/п#	Сj7SжAD*

val_accюr?­єFш       ё(	j7SжAD*


accЗЈ~?7ЙЎ       йм2	j7SжAD*

val_lossfШз>S!Ю       и-	Kj7SжAD*

lossАЯ<uЯьЮ       `/п#	C<k7SжAE*

val_accДЂq?Їz       ё(	D<k7SжAE*


accз~?Жv,       йм2	?D<k7SжAE*

val_lossвб>эfїЫ       и-	gD<k7SжAE*

loss$P<ё ѓю       `/п#	Жееk7SжAF*

val_accыq?&.Џ       ё(	jжеk7SжAF*


accВZ~?О!Е       йм2	Жжеk7SжAF*

val_lossБЄг>.фm       и-	№жеk7SжAF*

lossT;Ш<Јn8W       `/п#	gtl7SжAG*

val_accz5q?ѓ       ё(	јgtl7SжAG*


accьЧ~?ЉдД*       йм2	ahtl7SжAG*

val_lossњ№ж>gбиV       и-	­htl7SжAG*

loss>F<kR       `/п#	Ф;m7SжAH*

val_accДЂq?nR-п       ё(	<m7SжAH*


acc"ч~?JёX       йм2	т<m7SжAH*

val_lossФCв>њOk       и-	(=m7SжAH*

loss#<ўьэ7       `/п#	Sї­m7SжAI*

val_accz5q?0А+       ё(	зї­m7SжAI*


acc"ч~?Л ~       йм2	ј­m7SжAI*

val_loss	aд>q        и-	.ј­m7SжAI*

losszв.<ш]       `/п#	њHn7SжAJ*

val_accЧq? ПН       ё(	дњHn7SжAJ*


acc%?№0р       йм2	)ћHn7SжAJ*

val_lossг7з>Ќу^~       и-	kћHn7SжAJ*

lossИ<Ю 4§       `/п#	aЇшn7SжAK*

val_accюr?Ђї       ё(	ДЈшn7SжAK*


accз~?yуFб       йм2	\Љшn7SжAK*

val_lossг6н>8uА       и-	шЉшn7SжAK*

lossяј<`АF       `/п#	ЦЧo7SжAL*

val_acc(}r?ђр№A       ё(	RШo7SжAL*


acc%?ІTнZ       йм2	Шo7SжAL*

val_lossfк>MЉ/_       и-	­Шo7SжAL*

lossж2<щОKИ       `/п#	Vc!p7SжAM*

val_accыq?Тћ.Н       ё(	md!p7SжAM*


acc"ч~?Ч       йм2	ѓd!p7SжAM*

val_lossZи>шуD.       и-	\e!p7SжAM*

lossh+h<4Ќк       `/п#	~Сp7SжAN*

val_accz5q?Xн       ё(	с~Сp7SжAN*


acc'5?XаЎ       йм2	)Сp7SжAN*

val_lossЬц>h       и-	cСp7SжAN*

lossЬH<&sжy       `/п#	]bq7SжAO*

val_accПXr?ќG!       ё(	Џ^bq7SжAO*


accьЧ~?ЫV       йм2	2_bq7SжAO*

val_lossЕій>dЌ       и-	_bq7SжAO*

loss5<Q       `/п#	йџq7SжAP*

val_accюr?'l       ё(	Ўџq7SжAP*


accё?k       йм2	ћџq7SжAP*

val_lossЌе>Ѕxѕ       и-	5џq7SжAP*

lossс_<1       `/п#	[Сr7SжAQ*

val_accV4r?be       ё(	Тr7SжAQ*


acc"ч~?Б[h       йм2	mТr7SжAQ*

val_lossёJб>жdDЖ       и-	ЎТr7SжAQ*

loss/(<bBдb       `/п#	ЕL8s7SжAR*

val_accV4r?[qю       ё(	EM8s7SжAR*


accRИ~?iє!t       йм2	|M8s7SжAR*

val_loss92а>%sj       и-	ЈM8s7SжAR*

lossрG<8       `/п#	Ьжs7SжAS*

val_accЧq?Н       ё(	ъЬжs7SжAS*


acc\T?У       йм2	1Эжs7SжAS*

val_lossXЪх>СEяЁ       и-	kЭжs7SжAS*

lossь<ЃLщ       `/п#	эlrt7SжAT*

val_accЁr?§АD       ё(	Лmrt7SжAT*


acc"ч~?рџ       йм2	nrt7SжAT*

val_losscуе>Ьa       и-	`nrt7SжAT*

lossX}<'|яЦ       `/п#	2 u7SжAU*

val_accПXr?Шнѕ       ё(	u7SжAU*


acc\T?вЗU\       йм2	u7SжAU*

val_lossи)ч>[р&C       и-	уu7SжAU*

lossЕё!<k2f       `/п#	loАu7SжAV*

val_acc33s?Ќ       ё(	MpАu7SжAV*


accМі~?FИЇb       йм2	ЙpАu7SжAV*

val_losswз>
џ       и-	qАu7SжAV*

lossГm,<ТЛф       `/п#	фХQv7SжAW*

val_accWs?'sу       ё(	sЦQv7SжAW*


acc"ч~?}Ю[]       йм2	БЦQv7SжAW*

val_lossнбк>-J       и-	хЦQv7SжAW*

lossаДL< Л+       `/п#	юqьv7SжAX*

val_accЫs?pА       ё(	Ўrьv7SжAX*


acc"ч~?p{       йм2	sьv7SжAX*

val_lossпъй>B2Ђ       и-	Jsьv7SжAX*

lossа<!ПЮ       `/п#	ЁTЁw7SжAY*

val_acc(}r?I)?l       ё(	4WЁw7SжAY*


accьЧ~?гEЄg       йм2	йXЁw7SжAY*

val_lossЎыв>SY       и-	ZЁw7SжAY*

loss"њ<pїп	       `/п#	|м9x7SжAZ*

val_accПXr?ќЛ       ё(	^н9x7SжAZ*


acc%?[r       йм2	Шн9x7SжAZ*

val_lossА п>§@ы       и-	о9x7SжAZ*

lossuUh<йAc       `/п#	џ9аx7SжA[*

val_accbъr?X
       ё(	о:аx7SжA[*


accs?Ђ[Г       йм2	/;аx7SжA[*

val_lossnй>Xmя       и-	o;аx7SжA[*

lossеДА;{ч$       `/п#	fy7SжA\*

val_accПXr?Јю'l       ё(	wfy7SжA\*


accМі~?3ѓ       йм2	пfy7SжA\*

val_lossN}о>!Оа       и-	2fy7SжA\*

lossџѓt<GвЗр       `/п#	$њy7SжA]*

val_accюr?хиЖ       ё(	С$њy7SжA]*


accё?dљЉУ       йм2	
%њy7SжA]*

val_lossЌOй>Џ`ич       и-	G%њy7SжA]*

loss~Ѓ6<*ЏЧЮ       `/п#	#z7SжA^*

val_accыq?4ўU       ё(		$z7SжA^*


accМі~?6Lп       йм2	:$z7SжA^*

val_lossXс>*r/       и-	b$z7SжA^*

lossb k<еЗ       `/п#	о!{7SжA_*

val_accЧq?њчхй       ё(	Aп!{7SжA_*


acc%?Ф*       йм2	п!{7SжA_*

val_lossмшю>НJt       и-	Сп!{7SжA_*

lossњ+<<Шут=       `/п#	$bЗ{7SжA`*

val_accыq?*чЮ       ё(	ЙbЗ{7SжA`*


acc"ч~?sею       йм2	їbЗ{7SжA`*

val_lossm№>3Юа       и-	)cЗ{7SжA`*

lossp-<ТQє+       `/п#	аK|7SжAa*

val_accюr?Щi/       ё(	бK|7SжAa*


acc"ч~?\јГю       йм2	вK|7SжAa*

val_lossЋФо>Fх       и-	вK|7SжAa*

loss}<@Н%       `/п#	lОс|7SжAb*

val_accЫs?xFT       ё(	8Пс|7SжAb*


accЦ?Ljр       йм2	Пс|7SжAb*

val_lossю1о>QK%       и-	КПс|7SжAb*

lossє;f%        `/п#	IЫv}7SжAc*

val_accWs?б4       ё(	вЫv}7SжAc*


acc%?3-Ф       йм2	Ьv}7SжAc*

val_lossfІг>'<јa       и-	.Ьv}7SжAc*

lossє%і;Йi­	