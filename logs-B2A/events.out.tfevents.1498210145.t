       ЃK"	  @и7SжAbrain.Event:2=s.ыљ     џЦh	tCи7SжA"оѓ

conv2d_1_inputPlaceholder*$
shape:џџџџџџџџџ  *
dtype0*/
_output_shapes
:џџџџџџџџџ  
v
conv2d_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
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
 *ЖhЯ=*
_output_shapes
: *
dtype0
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
Ш
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*&
_output_shapes
:@*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
T0*
use_locking(

conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*&
_output_shapes
:@*"
_class
loc:@conv2d_1/kernel
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
:џџџџџџџџџ  
s
conv2d_1/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"         @   
s
"conv2d_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
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
conv2d_2/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
`
conv2d_2/random_uniform/minConst*
valueB
 *:ЭН*
_output_shapes
: *
dtype0
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
conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*
T0*&
_output_shapes
:@@

conv2d_2/kernel
VariableV2*
shape:@@*
shared_name *
dtype0*&
_output_shapes
:@@*
	container 
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
:џџџџџџџџџ@*
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
valueB"             *
_output_shapes
:*
dtype0
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
dropout_1/keras_learning_phasePlaceholder*
_output_shapes
:*
dtype0
*
shape:
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
 *  ?*
dtype0*
_output_shapes
: 
Ч
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*#
_class
loc:@activation_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0
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
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ш
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2шЩА*
dtype0*
T0*
seedБџх)
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
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
dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Х
dropout_1/cond/Switch_1Switchactivation_2/Eludropout_1/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*#
_class
loc:@activation_2/Elu*
T0

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
T0*
N
v
conv2d_3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
`
conv2d_3/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
conv2d_3/random_uniform/maxConst*
valueB
 *:Э=*
_output_shapes
: *
dtype0
В
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:@@*
seed2ЇЭ
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
conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*&
_output_shapes
:@@*
T0

conv2d_3/kernel
VariableV2*&
_output_shapes
:@@*
	container *
dtype0*
shared_name *
shape:@@
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
conv2d_3/kernel/readIdentityconv2d_3/kernel*&
_output_shapes
:@@*"
_class
loc:@conv2d_3/kernel*
T0
p
conv2d_3/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3/transpose	Transposedropout_1/cond/Mergeconv2d_3/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
s
conv2d_3/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
к
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides

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
:џџџџџџџџџ@
g
activation_3/EluEluconv2d_3/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
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
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*#
_class
loc:@activation_3/Elu

dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ@
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
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
М
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Є
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@
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
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Х
dropout_2/cond/Switch_1Switchactivation_3/Eludropout_2/cond/pred_id*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
T0*
N
v
conv2d_4/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
`
conv2d_4/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊН
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
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
_output_shapes
: *
T0

conv2d_4/random_uniform/mulMul%conv2d_4/random_uniform/RandomUniformconv2d_4/random_uniform/sub*
T0*&
_output_shapes
:@ 
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
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
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
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ *
use_cudnn_on_gpu(
r
conv2d_4/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4/transpose_1	Transposeconv2d_4/convolutionconv2d_4/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
Ъ
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*
ksize
*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides
*
paddingVALID
y
 max_pooling2d_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
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
 *  ?*
_output_shapes
: *
dtype0
н
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *.
_class$
" loc:@max_pooling2d_1/transpose_1*
T0

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*/
_output_shapes
:џџџџџџџџџ *
T0

 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
out_type0*
_output_shapes
:*
T0
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
 *  ?*
_output_shapes
: *
dtype0
Ш
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2ђЎД*
dtype0*
T0*
seedБџх)
Ї
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ъ
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ 
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
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ *
T0
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
dropout_3/cond/Switch_1Switchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *.
_class$
" loc:@max_pooling2d_1/transpose_1

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ : *
T0*
N
c
flatten_1/ShapeShapedropout_3/cond/Merge*
_output_shapes
:*
out_type0*
T0
g
flatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
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
flatten_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
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
џџџџџџџџџ
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
_output_shapes
:*
N*

axis *
T0

flatten_1/ReshapeReshapedropout_3/cond/Mergeflatten_1/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0
m
dense_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
_
dense_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7Н
_
dense_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *7=
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape* 
_output_shapes
:
$*
seed2вр*
T0*
seedБџх)*
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
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
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
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
_output_shapes
:*
T0

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
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*
T0*#
_class
loc:@activation_5/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ
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
 *    *
_output_shapes
: *
dtype0

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*(
_output_shapes
:џџџџџџџџџ*
seed2Ш№в
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
dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
m
dense_2/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
_
dense_2/random_uniform/minConst*
valueB
 *ѓЕН*
_output_shapes
: *
dtype0
_
dense_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ѓЕ=
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
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Z
activation_6/EluEludense_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Й
dropout_5/cond/mul/SwitchSwitchactivation_6/Eludropout_5/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_6/Elu*
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
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
T0*
out_type0*
_output_shapes
:

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
С
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2кљ
Ї
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
dropout_5/cond/dropout/divRealDivdropout_5/cond/mul dropout_5/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/divdropout_5/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
З
dropout_5/cond/Switch_1Switchactivation_6/Eludropout_5/cond/pred_id*#
_class
loc:@activation_6/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
m
dense_3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
_
dense_3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *   О
_
dense_3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Њ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape* 
_output_shapes
:
*
seed2Й*
dtype0*
T0*
seedБџх)
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
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
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
)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2І *
T0*
seedБџх)*
dtype0
Ї
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
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
dropout_6/cond/dropout/divRealDivdropout_6/cond/mul dropout_6/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/divdropout_6/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
З
dropout_6/cond/Switch_1Switchactivation_7/Eludropout_6/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_7/Elu*
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
dense_4/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЭUО
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
seed2Жю*
dtype0*
T0*
seedБџх)
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
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
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
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
_output_shapes
:	
*
T0
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
activation_1_1/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
:џџџџџџџџџ@*
T0
u
conv2d_2_1/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_2_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
о
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ@*
use_cudnn_on_gpu(
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
dropout_1_1/cond/switch_tIdentitydropout_1_1/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_1_1/cond/switch_fIdentitydropout_1_1/cond/Switch*
_output_shapes
:*
T0

g
dropout_1_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_1_1/cond/mul/yConst^dropout_1_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Я
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_2_1/Elu
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
dropout_1_1/cond/dropout/ShapeShapedropout_1_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ы
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ@*
seed2Т
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_1_1/cond/dropout/random_uniform/mulMul5dropout_1_1/cond/dropout/random_uniform/RandomUniform+dropout_1_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
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
dropout_1_1/cond/dropout/FloorFloordropout_1_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_1/cond/dropout/divRealDivdropout_1_1/cond/mul"dropout_1_1/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Э
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_2_1/Elu

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
T0*
N
r
conv2d_3_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_1/transpose	Transposedropout_1_1/cond/Mergeconv2d_3_1/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_3_1/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_3_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides
*
T0*
paddingVALID
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
dropout_2_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_2_1/cond/mul/yConst^dropout_2_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Я
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_2_1/cond/mulMuldropout_2_1/cond/mul/Switch:1dropout_2_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_2_1/cond/dropout/keep_probConst^dropout_2_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_2_1/cond/dropout/ShapeShapedropout_2_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_2_1/cond/dropout/random_uniform/minConst^dropout_2_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_2_1/cond/dropout/random_uniform/maxConst^dropout_2_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ь
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2Сом*
T0*
seedБџх)*
dtype0
­
+dropout_2_1/cond/dropout/random_uniform/subSub+dropout_2_1/cond/dropout/random_uniform/max+dropout_2_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ@: 
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
:џџџџџџџџџ@
u
conv2d_4_1/convolution/ShapeConst*%
valueB"      @       *
_output_shapes
:*
dtype0
u
$conv2d_4_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:џџџџџџџџџ 
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
:џџџџџџџџџ *
T0
k
activation_4_1/EluEluconv2d_4_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ 
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
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ *
ksize

{
"max_pooling2d_1_1/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             
А
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
х
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*
T0*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ 

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*/
_output_shapes
:џџџџџџџџџ *
T0
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
+dropout_3_1/cond/dropout/random_uniform/minConst^dropout_3_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_3_1/cond/dropout/random_uniform/maxConst^dropout_3_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ь
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2з§*
dtype0*
T0*
seedБџх)
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ 
Т
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ *
T0
Њ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/dropout/FloorFloordropout_3_1/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/dropout/divRealDivdropout_3_1/cond/mul"dropout_3_1/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_1/cond/dropout/mulMuldropout_3_1/cond/dropout/divdropout_3_1/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ *
T0
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
N*
T0
g
flatten_1_1/ShapeShapedropout_3_1/cond/Merge*
T0*
_output_shapes
:*
out_type0
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
!flatten_1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
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
flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
^
flatten_1_1/stack/0Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*

axis *
_output_shapes
:*
T0*
N

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_5_1/EluEludense_1_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_4_1/cond/switch_tIdentitydropout_4_1/cond/Switch:1*
_output_shapes
:*
T0

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
 *   ?*
_output_shapes
: *
dtype0
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2Ѕк
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Щ
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
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
"dropout_5_1/cond/dropout/keep_probConst^dropout_5_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
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
+dropout_5_1/cond/dropout/random_uniform/maxConst^dropout_5_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Х
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2юЕ­*
dtype0*
T0*
seedБџх)
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
dropout_5_1/cond/dropout/FloorFloordropout_5_1/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N
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
dropout_6_1/cond/mul/yConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
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
+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2бТј
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_6_1/cond/dropout/mulMuldropout_6_1/cond/dropout/divdropout_6_1/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_6_1/cond/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0

dropout_6_1/cond/MergeMergedropout_6_1/cond/Switch_1dropout_6_1/cond/dropout/mul*
T0*
N**
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
shape: *
dtype0*
shared_name 
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
lr/readIdentitylr*
T0*
_class
	loc:@lr*
_output_shapes
: 
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
use_locking(*
T0*
_class

loc:@decay*
validate_shape(*
_output_shapes
: 
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
iterations*
_output_shapes
: *
_class
loc:@iterations*
T0
v
activation_8_sample_weightsPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

activation_8_targetPlaceholder*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
W
Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
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
ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
J
sub/xConst*
dtype0*
_output_shapes
: *
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
NegNegSum_1*#
_output_shapes
:џџџџџџџџџ*
T0
Y
Mean/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
t
MeanMeanNegMean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
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
Const_1Const*
_output_shapes
:*
dtype0*
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
valueB: *
dtype0*
_output_shapes
:
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
 *  ?*
_output_shapes
: *
dtype0
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
ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_1ArgMaxactivation_8_1/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:џџџџџџџџџ*
T0	
R
Cast_1CastEqual*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
Q
Const_3Const*
_output_shapes
:*
dtype0*
valueB: 
]
Mean_3MeanCast_1Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
l
PlaceholderPlaceholder*
dtype0*
shape:@*&
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
:@@*
shape:@@*
dtype0
А
Assign_1Assignconv2d_2/kernelPlaceholder_1*&
_output_shapes
:@@*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
T0*
use_locking( 
n
Placeholder_2Placeholder*
dtype0*
shape:@@*&
_output_shapes
:@@
А
Assign_2Assignconv2d_3/kernelPlaceholder_2*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
n
Placeholder_3Placeholder*&
_output_shapes
:@ *
shape:@ *
dtype0
А
Assign_3Assignconv2d_4/kernelPlaceholder_3*&
_output_shapes
:@ *
validate_shape(*"
_class
loc:@conv2d_4/kernel*
T0*
use_locking( 
b
Placeholder_4Placeholder* 
_output_shapes
:
$*
dtype0*
shape:
$
Ј
Assign_4Assigndense_1/kernelPlaceholder_4* 
_output_shapes
:
$*
validate_shape(*!
_class
loc:@dense_1/kernel*
T0*
use_locking( 
b
Placeholder_5Placeholder* 
_output_shapes
:
*
shape:
*
dtype0
Ј
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
Placeholder_6Placeholder*
shape:
*
dtype0* 
_output_shapes
:

Ј
Assign_6Assigndense_3/kernelPlaceholder_6*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
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
	lr_1/readIdentitylr_1*
_class
	loc:@lr_1*
_output_shapes
: *
T0
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
В
iterations_1/AssignAssigniterations_1iterations_1/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@iterations_1
m
iterations_1/readIdentityiterations_1*
T0*
_class
loc:@iterations_1*
_output_shapes
: 
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
 *Пж3*
_output_shapes
: *
dtype0
L
sub_1/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
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
clip_by_value_1Maximumclip_by_value_1/MinimumConst_4*
T0*'
_output_shapes
:џџџџџџџџџ

O
Log_1Logclip_by_value_1*
T0*'
_output_shapes
:џџџџџџџџџ

\
mul_3Mulactivation_8_target_1Log_1*'
_output_shapes
:џџџџџџџџџ
*
T0
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
Neg_1NegSum_3*#
_output_shapes
:џџџџџџџџџ*
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

NotEqual_1NotEqualactivation_8_sample_weights_1NotEqual_1/y*#
_output_shapes
:џџџџџџџџџ*
T0
W
Cast_2Cast
NotEqual_1*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_5Const*
_output_shapes
:*
dtype0*
valueB: 
]
Mean_5MeanCast_2Const_5*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Q
	truediv_3RealDivmul_4Mean_5*
T0*#
_output_shapes
:џџџџџџџџџ
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
ArgMax_2/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
T
ArgMax_3/dimensionConst*
dtype0*
_output_shapes
: *
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
Cast_3CastEqual_1*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
Q
Const_7Const*
_output_shapes
:*
dtype0*
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
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class

loc:@mul_5
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
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
_class

loc:@mul_5*
T0
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
gradients/mul_5_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@mul_5
д
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_5
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
T0*
_class

loc:@mul_5*
_output_shapes
: 
П
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
_output_shapes
:*
_class

loc:@mul_5*
T0*
	keep_dims( *

Tidx0
І
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: *
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
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class

loc:@mul_5*
T0*
	keep_dims( *

Tidx0
Ќ
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: *
T0

#gradients/Mean_6_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:*
_class
loc:@Mean_6
Л
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
Й
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_6
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
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
_class
loc:@Mean_6*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

gradients/Mean_6_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_6
Л
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
Ѓ
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
T0*
_class
loc:@Mean_6*
_output_shapes
: 
Ё
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
T0*
_class
loc:@Mean_6*
_output_shapes
: 

gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0*
_class
loc:@Mean_6
Љ
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*
T0*
_class
loc:@Mean_6*#
_output_shapes
:џџџџџџџџџ

gradients/truediv_3_grad/ShapeShapemul_4*
out_type0*
_class
loc:@truediv_3*
_output_shapes
:*
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
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_3*
T0

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3*
T0
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
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
Tshape0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
T0
v
gradients/truediv_3_grad/NegNegmul_4*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3*
T0

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
T0
В
gradients/truediv_3_grad/mulMulgradients/Mean_6_grad/truediv"gradients/truediv_3_grad/RealDiv_2*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3*
T0
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
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_3*
T0
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
gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
T0*
out_type0*
_class

loc:@mul_4*
_output_shapes
:
д
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_4*
T0
Ј
gradients/mul_4_grad/mulMul gradients/truediv_3_grad/Reshapeactivation_8_sample_weights_1*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ*
T0
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
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ

gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ*
T0
Х
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
_class

loc:@mul_4*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
T0*
_output_shapes
: *
_class
loc:@Mean_4

gradients/Mean_4_grad/modFloorModgradients/Mean_4_grad/addgradients/Mean_4_grad/Size*
T0*
_output_shapes
: *
_class
loc:@Mean_4

gradients/Mean_4_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_4*
_output_shapes
:*
dtype0
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
Щ
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
Ё
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
_output_shapes
: *
_class
loc:@Mean_4*
T0
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
loc:@Mean_4*
_output_shapes
: *
dtype0
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
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_4*
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
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:
~
gradients/Mean_4_grad/Shape_3ShapeMean_4*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:*
T0

gradients/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_4
З
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const*
_class
loc:@Mean_4*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
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
!gradients/Mean_4_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
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
 gradients/Mean_4_grad/floordiv_1FloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum_1*
T0*
_output_shapes
: *
_class
loc:@Mean_4

gradients/Mean_4_grad/CastCast gradients/Mean_4_grad/floordiv_1*
_class
loc:@Mean_4*
_output_shapes
: *

DstT0*

SrcT0
Љ
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4*
T0
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
gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
_class

loc:@Sum_3*
_output_shapes
: *
T0

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*
_class

loc:@Sum_3*
_output_shapes
: 
y
gradients/Sum_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
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
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_3*
dtype0*
_output_shapes
: 
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
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*
_output_shapes
: *
_class

loc:@Sum_3
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
gradients/Sum_3_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_3*
dtype0*
_output_shapes
: 
Г
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*
_class

loc:@Sum_3*#
_output_shapes
:џџџџџџџџџ
Ђ
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
_class

loc:@Sum_3*
_output_shapes
:*
T0
А
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_3*
_output_shapes
:*
T0
М
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0*
_class

loc:@Sum_3*'
_output_shapes
:џџџџџџџџџ

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
T0*
out_type0*
_class

loc:@mul_3*
_output_shapes
:
д
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_3

gradients/mul_3_grad/mulMulgradients/Sum_3_grad/TileLog_1*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@mul_3
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
Reciprocalclip_by_value_1^gradients/mul_3_grad/Reshape_1*
T0*
_class

loc:@Log_1*'
_output_shapes
:џџџџџџџџџ

Ќ
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Log_1*
T0

$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1*
T0

&gradients/clip_by_value_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *"
_class
loc:@clip_by_value_1
Ђ
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
T0*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1

*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *"
_class
loc:@clip_by_value_1*
_output_shapes
: *
dtype0
ж
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ

Г
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*
T0*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
ќ
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*"
_class
loc:@clip_by_value_1
ђ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1*
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
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB **
_class 
loc:@clip_by_value_1/Minimum
Р
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
T0*
_output_shapes
:*
out_type0**
_class 
loc:@clip_by_value_1/Minimum
Ѓ
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    **
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
: *
dtype0
і
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1*'
_output_shapes
:џџџџџџџџџ
**
_class 
loc:@clip_by_value_1/Minimum*
T0

<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1**
_class 
loc:@clip_by_value_1/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ

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
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
џ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
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
є
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0**
_class 
loc:@clip_by_value_1/Minimum

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_2

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
_output_shapes
:*
out_type0*
_class
loc:@truediv_2*
T0
ф
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_2*
T0
В
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2
г
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_2*
T0*
	keep_dims( *

Tidx0
Ч
 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
*
T0

gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Ђ
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
*
T0
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
T0*
_output_shapes
:*
_class
loc:@truediv_2
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
loc:@Sum_2*
dtype0*
_output_shapes
: 
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
 gradients/Sum_2_grad/range/startConst*
dtype0*
_output_shapes
: *
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
loc:@Sum_2*
_output_shapes
: *
dtype0

gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*
_output_shapes
: *
_class

loc:@Sum_2
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
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*
_class

loc:@Sum_2*#
_output_shapes
:џџџџџџџџџ
Ђ
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
_class

loc:@Sum_2*
_output_shapes
:*
T0
К
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0*
_class

loc:@Sum_2*
_output_shapes
:
М
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Sum_2*
T0*

Tmultiples0
Ќ
gradients/AddNAddN gradients/truediv_2_grad/Reshapegradients/Sum_2_grad/Tile*
T0*
_class
loc:@truediv_2*
N*'
_output_shapes
:џџџџџџџџџ

Е
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ

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
valueB"џџџџ   *)
_class
loc:@activation_8_1/Softmax*
dtype0*
_output_shapes
:

-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0*)
_class
loc:@activation_8_1/Softmax
Ь
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_1/Softmax
в
+gradients/activation_8_1/Softmax_grad/mul_1Mul)gradients/activation_8_1/Softmax_grad/subactivation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_1/Softmax*
T0
№
&gradients/dense_4_1/MatMul_grad/MatMulMatMul+gradients/activation_8_1/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_4_1/MatMul*
T0
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
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*#
_class
loc:@dense_4_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0
Ж
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*
T0*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_1Shapegradients/Switch:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_7_1/Elu

gradients/zeros/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_1/Elu*
_output_shapes
: *
dtype0
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
T0*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:
Т
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:
А
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
э
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0

/gradients/dropout_6_1/cond/dropout/mul_grad/SumSum/gradients/dropout_6_1/cond/dropout/mul_grad/mulAgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:

3gradients/dropout_6_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/mul_grad/Sum1gradients/dropout_6_1/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
э
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ё
1gradients/dropout_6_1/cond/dropout/mul_grad/Sum_1Sum1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Cgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
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
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div*
dtype0*
_output_shapes
: 
А
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
ћ
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0

/gradients/dropout_6_1/cond/dropout/div_grad/SumSum3gradients/dropout_6_1/cond/dropout/div_grad/RealDivAgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
:
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
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

1gradients/dropout_6_1/cond/dropout/div_grad/Sum_1Sum/gradients/dropout_6_1/cond/dropout/div_grad/mulCgradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
:

5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
Џ
)gradients/dropout_6_1/cond/mul_grad/ShapeShapedropout_6_1/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_1/cond/mul*
T0

+gradients/dropout_6_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
: *
dtype0

9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_6_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
з
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul*
T0
ћ
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_6_1/cond/mul*
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
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
: 
И
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*
T0*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_2Shapegradients/Switch_1*
out_type0*%
_class
loc:@activation_7_1/Elu*
_output_shapes
:*
T0
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
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
т
4gradients/dropout_6_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_6_1/cond/mul_grad/Reshapegradients/zeros_1*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_7_1/Elu
х
gradients/AddN_1AddN2gradients/dropout_6_1/cond/Switch_1_grad/cond_grad4gradients/dropout_6_1/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
Д
)gradients/activation_7_1/Elu_grad/EluGradEluGradgradients/AddN_1activation_7_1/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0
ю
&gradients/dense_3_1/MatMul_grad/MatMulMatMul)gradients/activation_7_1/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_3_1/MatMul
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
/gradients/dropout_5_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_3_1/MatMul_grad/MatMuldropout_5_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_3_1/MatMul*
T0
И
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_3Shapegradients/Switch_2:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_1/Elu*
T0
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
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:*
T0
Т
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:
А
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
э
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
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
3gradients/dropout_5_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/mul_grad/Sum1gradients/dropout_5_1/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
э
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
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
5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ж
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:*
T0
Ї
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div*
dtype0*
_output_shapes
: 
А
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div
ћ
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
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
3gradients/dropout_5_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_5_1/cond/dropout/div_grad/Sum1gradients/dropout_5_1/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
А
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
љ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
џ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
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
5gradients/dropout_5_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/div_grad/Sum_13gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
Џ
)gradients/dropout_5_1/cond/mul_grad/ShapeShapedropout_5_1/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_1/cond/mul
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
T0*'
_class
loc:@dropout_5_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
з
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_5_1/cond/mul*
T0
ћ
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_1/cond/mul
є
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul
р
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*
T0*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
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
gradients/Shape_4Shapegradients/Switch_3*
out_type0*%
_class
loc:@activation_6_1/Elu*
_output_shapes
:*
T0
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
T0*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ
т
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3**
_output_shapes
:џџџџџџџџџ: *
N*%
_class
loc:@activation_6_1/Elu*
T0
х
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:џџџџџџџџџ*
N*%
_class
loc:@activation_6_1/Elu*
T0
Д
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu*
T0
ю
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_2_1/MatMul
ы
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( *
T0*#
_class
loc:@dense_2_1/MatMul* 
_output_shapes
:
*
transpose_a(
ч
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*
T0*#
_class
loc:@dense_2_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
И
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/Shape_5Shapegradients/Switch_4:1*
T0*
out_type0*%
_class
loc:@activation_5_1/Elu*
_output_shapes
:
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
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
ф
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_5_1/Elu
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
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul
А
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
э
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
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
T0*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ж
1gradients/dropout_4_1/cond/dropout/div_grad/ShapeShapedropout_4_1/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:
Ї
3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_1/cond/dropout/div
А
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
ћ
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_4_1/cond/dropout/div_grad/SumSum3gradients/dropout_4_1/cond/dropout/div_grad/RealDivAgradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
:
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
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
џ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
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
5gradients/dropout_4_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/div_grad/Sum_13gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
_output_shapes
: *
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
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul*
T0
ћ
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:
є
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
р
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:
ш
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
: 
И
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
T0

gradients/Shape_6Shapegradients/Switch_5*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_1/Elu
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
T0*%
_class
loc:@activation_5_1/Elu*
N*(
_output_shapes
:џџџџџџџџџ
Д
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
T0
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
Variable/AssignAssignVariableConst_8*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
$*
_class
loc:@Variable
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
Variable_1Const_9*
_class
loc:@Variable_1* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
q
Variable_1/readIdentity
Variable_1*
T0* 
_output_shapes
:
*
_class
loc:@Variable_1
a
Const_10Const*
valueB
*    * 
_output_shapes
:
*
dtype0
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
Variable_2Const_10*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(* 
_output_shapes
:

q
Variable_2/readIdentity
Variable_2*
T0* 
_output_shapes
:
*
_class
loc:@Variable_2
_
Const_11Const*
dtype0*
_output_shapes
:	
*
valueB	
*    


Variable_3
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
Variable_3*
_class
loc:@Variable_3*
_output_shapes
:	
*
T0
a
Const_12Const*
dtype0* 
_output_shapes
:
$*
valueB
$*    


Variable_4
VariableV2*
shared_name *
dtype0*
shape:
$* 
_output_shapes
:
$*
	container 
Є
Variable_4/AssignAssign
Variable_4Const_12*
_class
loc:@Variable_4* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
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
dtype0* 
_output_shapes
:
*
valueB
*    


Variable_5
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Є
Variable_5/AssignAssign
Variable_5Const_13* 
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_5*
T0*
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
valueB
*    *
dtype0* 
_output_shapes
:

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
Є
Variable_6/AssignAssign
Variable_6Const_14*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(* 
_output_shapes
:

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
_output_shapes
:	
*
dtype0


Variable_7
VariableV2*
_output_shapes
:	
*
	container *
dtype0*
shared_name *
shape:	

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
_output_shapes
:	
*
_class
loc:@Variable_7*
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
SquareSquare(gradients/dense_1_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
$
L
mul_7/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
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
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
Q
add_1AddVariable_4/readadd_1/y*
T0* 
_output_shapes
:
$
M
Const_16Const*
dtype0*
_output_shapes
: *
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
SqrtSqrtclip_by_value_2* 
_output_shapes
:
$*
T0
g
mul_8Mul(gradients/dense_1_1/MatMul_grad/MatMul_1Sqrt*
T0* 
_output_shapes
:
$
L
add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
Const_19Const*
dtype0*
_output_shapes
: *
valueB
 *  
^
clip_by_value_3/MinimumMinimumadd_2Const_19*
T0* 
_output_shapes
:
$
h
clip_by_value_3Maximumclip_by_value_3/MinimumConst_18*
T0* 
_output_shapes
:
$
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
Assign_9Assigndense_1/kernelsub_2*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
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
Square_2Square(gradients/dense_2_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_13/xConst*
dtype0*
_output_shapes
: *
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
Variable_1add_4*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_1
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
Const_20Const*
dtype0*
_output_shapes
: *
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
add_6/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
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
 *  *
dtype0*
_output_shapes
: 
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
	truediv_5RealDivmul_14Sqrt_3* 
_output_shapes
:
*
T0
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
mul_16/xConst*
dtype0*
_output_shapes
: *
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
mul_17/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
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
Variable_5add_7*
_class
loc:@Variable_5* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_18/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
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
mul_19/xConst*
valueB
 *ЭЬL=*
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
add_8Addmul_18mul_19* 
_output_shapes
:
*
T0
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
Const_24Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 
^
clip_by_value_6/MinimumMinimumadd_9Const_25* 
_output_shapes
:
*
T0
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
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
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
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*!
_class
loc:@dense_3/kernel
M
mul_22/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_22Mulmul_22/xVariable_6/read* 
_output_shapes
:
*
T0
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
mul_23Mulmul_23/xSquare_5*
T0* 
_output_shapes
:

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
 *33s?*
dtype0*
_output_shapes
: 
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
mul_25/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
K
mul_25Mulmul_25/xSquare_6*
T0*
_output_shapes
:	

G
add_12Addmul_24mul_25*
_output_shapes
:	
*
T0
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
 *    *
dtype0*
_output_shapes
: 
M
Const_29Const*
valueB
 *  *
_output_shapes
: *
dtype0
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
Const_30Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
mul_29/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
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
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign
i
activation_1_2/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
:џџџџџџџџџ@
u
conv2d_2_2/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_2_2/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
о
conv2d_2_2/convolutionConv2Dconv2d_2_2/transposeconv2d_2/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID
t
conv2d_2_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_2_2/transpose_1	Transposeconv2d_2_2/convolutionconv2d_2_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_2_2/EluEluconv2d_2_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
dropout_1_2/cond/mul/yConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Я
dropout_1_2/cond/mul/SwitchSwitchactivation_2_2/Eludropout_1_2/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_2_2/Elu

dropout_1_2/cond/mulMuldropout_1_2/cond/mul/Switch:1dropout_1_2/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_1_2/cond/dropout/keep_probConst^dropout_1_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
r
dropout_1_2/cond/dropout/ShapeShapedropout_1_2/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_1_2/cond/dropout/random_uniform/minConst^dropout_1_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_1_2/cond/dropout/random_uniform/maxConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ы
5dropout_1_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_2/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ@*
seed2ШѓY
­
+dropout_1_2/cond/dropout/random_uniform/subSub+dropout_1_2/cond/dropout/random_uniform/max+dropout_1_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_1_2/cond/dropout/random_uniform/mulMul5dropout_1_2/cond/dropout/random_uniform/RandomUniform+dropout_1_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
Т
'dropout_1_2/cond/dropout/random_uniformAdd+dropout_1_2/cond/dropout/random_uniform/mul+dropout_1_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Њ
dropout_1_2/cond/dropout/addAdd"dropout_1_2/cond/dropout/keep_prob'dropout_1_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_2/cond/dropout/FloorFloordropout_1_2/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_2/cond/dropout/divRealDivdropout_1_2/cond/mul"dropout_1_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_2/cond/dropout/mulMuldropout_1_2/cond/dropout/divdropout_1_2/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Э
dropout_1_2/cond/Switch_1Switchactivation_2_2/Eludropout_1_2/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_2_2/Elu

dropout_1_2/cond/MergeMergedropout_1_2/cond/Switch_1dropout_1_2/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ@: 
r
conv2d_3_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_2/transpose	Transposedropout_1_2/cond/Mergeconv2d_3_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
u
conv2d_3_2/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   @   
u
$conv2d_3_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_3_2/convolutionConv2Dconv2d_3_2/transposeconv2d_3/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides
*
T0*
paddingVALID
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
:џџџџџџџџџ@*
T0
k
activation_3_2/EluEluconv2d_3_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
Я
dropout_2_2/cond/mul/SwitchSwitchactivation_3_2/Eludropout_2_2/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_3_2/Elu*
T0

dropout_2_2/cond/mulMuldropout_2_2/cond/mul/Switch:1dropout_2_2/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_2_2/cond/dropout/keep_probConst^dropout_2_2/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_2_2/cond/dropout/ShapeShapedropout_2_2/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_2_2/cond/dropout/random_uniform/minConst^dropout_2_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_2_2/cond/dropout/random_uniform/maxConst^dropout_2_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ь
5dropout_2_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2ејз*
T0*
seedБџх)*
dtype0
­
+dropout_2_2/cond/dropout/random_uniform/subSub+dropout_2_2/cond/dropout/random_uniform/max+dropout_2_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_2_2/cond/dropout/random_uniform/mulMul5dropout_2_2/cond/dropout/random_uniform/RandomUniform+dropout_2_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ@
Т
'dropout_2_2/cond/dropout/random_uniformAdd+dropout_2_2/cond/dropout/random_uniform/mul+dropout_2_2/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Њ
dropout_2_2/cond/dropout/addAdd"dropout_2_2/cond/dropout/keep_prob'dropout_2_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_2/cond/dropout/FloorFloordropout_2_2/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_2_2/cond/dropout/divRealDivdropout_2_2/cond/mul"dropout_2_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_2/cond/dropout/mulMuldropout_2_2/cond/dropout/divdropout_2_2/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Э
dropout_2_2/cond/Switch_1Switchactivation_3_2/Eludropout_2_2/cond/pred_id*%
_class
loc:@activation_3_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_2_2/cond/MergeMergedropout_2_2/cond/Switch_1dropout_2_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
r
conv2d_4_2/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_4_2/transpose	Transposedropout_2_2/cond/Mergeconv2d_4_2/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
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
о
conv2d_4_2/convolutionConv2Dconv2d_4_2/transposeconv2d_4/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ *
data_formatNHWC*
strides
*
T0*
paddingVALID
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
:џџџџџџџџџ *
T0
k
activation_4_2/EluEluconv2d_4_2/transpose_1*/
_output_shapes
:џџџџџџџџџ *
T0
y
 max_pooling2d_1_2/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0
Ѕ
max_pooling2d_1_2/transpose	Transposeactivation_4_2/Elu max_pooling2d_1_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
Ю
max_pooling2d_1_2/MaxPoolMaxPoolmax_pooling2d_1_2/transpose*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
ksize
*
data_formatNHWC*
strides
*
T0
{
"max_pooling2d_1_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             
А
max_pooling2d_1_2/transpose_1	Transposemax_pooling2d_1_2/MaxPool"max_pooling2d_1_2/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
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
dropout_3_2/cond/mul/yConst^dropout_3_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
х
dropout_3_2/cond/mul/SwitchSwitchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *0
_class&
$"loc:@max_pooling2d_1_2/transpose_1

dropout_3_2/cond/mulMuldropout_3_2/cond/mul/Switch:1dropout_3_2/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 

"dropout_3_2/cond/dropout/keep_probConst^dropout_3_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
r
dropout_3_2/cond/dropout/ShapeShapedropout_3_2/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_3_2/cond/dropout/random_uniform/minConst^dropout_3_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_3_2/cond/dropout/random_uniform/maxConst^dropout_3_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ь
5dropout_3_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2јРЧ*
T0*
seedБџх)*
dtype0
­
+dropout_3_2/cond/dropout/random_uniform/subSub+dropout_3_2/cond/dropout/random_uniform/max+dropout_3_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_3_2/cond/dropout/random_uniform/mulMul5dropout_3_2/cond/dropout/random_uniform/RandomUniform+dropout_3_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ *
T0
Т
'dropout_3_2/cond/dropout/random_uniformAdd+dropout_3_2/cond/dropout/random_uniform/mul+dropout_3_2/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ *
T0
Њ
dropout_3_2/cond/dropout/addAdd"dropout_3_2/cond/dropout/keep_prob'dropout_3_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_2/cond/dropout/FloorFloordropout_3_2/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_2/cond/dropout/divRealDivdropout_3_2/cond/mul"dropout_3_2/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_2/cond/dropout/mulMuldropout_3_2/cond/dropout/divdropout_3_2/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ 
у
dropout_3_2/cond/Switch_1Switchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *
T0

dropout_3_2/cond/MergeMergedropout_3_2/cond/Switch_1dropout_3_2/cond/dropout/mul*
T0*
N*1
_output_shapes
:џџџџџџџџџ : 
g
flatten_1_2/ShapeShapedropout_3_2/cond/Merge*
T0*
out_type0*
_output_shapes
:
i
flatten_1_2/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
k
!flatten_1_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
k
!flatten_1_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Й
flatten_1_2/strided_sliceStridedSliceflatten_1_2/Shapeflatten_1_2/strided_slice/stack!flatten_1_2/strided_slice/stack_1!flatten_1_2/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
_output_shapes
:*
end_mask*
Index0*
T0*
shrink_axis_mask *
new_axis_mask 
[
flatten_1_2/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

flatten_1_2/ProdProdflatten_1_2/strided_sliceflatten_1_2/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
flatten_1_2/stack/0Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
z
flatten_1_2/stackPackflatten_1_2/stack/0flatten_1_2/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1_2/ReshapeReshapedropout_3_2/cond/Mergeflatten_1_2/stack*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

dense_1_2/MatMulMatMulflatten_1_2/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_5_2/EluEludense_1_2/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_2/cond/switch_tIdentitydropout_4_2/cond/Switch:1*
_output_shapes
:*
T0

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
dropout_4_2/cond/mul/yConst^dropout_4_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
С
dropout_4_2/cond/mul/SwitchSwitchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu

dropout_4_2/cond/mulMuldropout_4_2/cond/mul/Switch:1dropout_4_2/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ
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
 *    *
dtype0*
_output_shapes
: 

+dropout_4_2/cond/dropout/random_uniform/maxConst^dropout_4_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
5dropout_4_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2ыЫ
­
+dropout_4_2/cond/dropout/random_uniform/subSub+dropout_4_2/cond/dropout/random_uniform/max+dropout_4_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_4_2/cond/dropout/random_uniform/mulMul5dropout_4_2/cond/dropout/random_uniform/RandomUniform+dropout_4_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_4_2/cond/dropout/random_uniformAdd+dropout_4_2/cond/dropout/random_uniform/mul+dropout_4_2/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_4_2/cond/dropout/addAdd"dropout_4_2/cond/dropout/keep_prob'dropout_4_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_4_2/cond/dropout/FloorFloordropout_4_2/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4_2/cond/dropout/divRealDivdropout_4_2/cond/mul"dropout_4_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_2/cond/dropout/mulMuldropout_4_2/cond/dropout/divdropout_4_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_4_2/cond/Switch_1Switchactivation_5_2/Eludropout_4_2/cond/pred_id*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_4_2/cond/MergeMergedropout_4_2/cond/Switch_1dropout_4_2/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
 
dense_2_2/MatMulMatMuldropout_4_2/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_6_2/EluEludense_2_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
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
dropout_5_2/cond/switch_fIdentitydropout_5_2/cond/Switch*
_output_shapes
:*
T0

g
dropout_5_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
:*
T0

w
dropout_5_2/cond/mul/yConst^dropout_5_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
С
dropout_5_2/cond/mul/SwitchSwitchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu*
T0

dropout_5_2/cond/mulMuldropout_5_2/cond/mul/Switch:1dropout_5_2/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

"dropout_5_2/cond/dropout/keep_probConst^dropout_5_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
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
+dropout_5_2/cond/dropout/random_uniform/maxConst^dropout_5_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_5_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2Ј
­
+dropout_5_2/cond/dropout/random_uniform/subSub+dropout_5_2/cond/dropout/random_uniform/max+dropout_5_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_5_2/cond/dropout/random_uniform/mulMul5dropout_5_2/cond/dropout/random_uniform/RandomUniform+dropout_5_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_5_2/cond/dropout/random_uniformAdd+dropout_5_2/cond/dropout/random_uniform/mul+dropout_5_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_5_2/cond/dropout/addAdd"dropout_5_2/cond/dropout/keep_prob'dropout_5_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_5_2/cond/dropout/FloorFloordropout_5_2/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5_2/cond/dropout/divRealDivdropout_5_2/cond/mul"dropout_5_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_2/cond/dropout/mulMuldropout_5_2/cond/dropout/divdropout_5_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_5_2/cond/Switch_1Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu

dropout_5_2/cond/MergeMergedropout_5_2/cond/Switch_1dropout_5_2/cond/dropout/mul*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
 
dense_3_2/MatMulMatMuldropout_5_2/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_7_2/EluEludense_3_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

c
dropout_6_2/cond/switch_tIdentitydropout_6_2/cond/Switch:1*
_output_shapes
:*
T0

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
dropout_6_2/cond/mul/yConst^dropout_6_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
dropout_6_2/cond/mul/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu

dropout_6_2/cond/mulMuldropout_6_2/cond/mul/Switch:1dropout_6_2/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

"dropout_6_2/cond/dropout/keep_probConst^dropout_6_2/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
r
dropout_6_2/cond/dropout/ShapeShapedropout_6_2/cond/mul*
T0*
out_type0*
_output_shapes
:

+dropout_6_2/cond/dropout/random_uniform/minConst^dropout_6_2/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_6_2/cond/dropout/random_uniform/maxConst^dropout_6_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_6_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_2/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2ф *
dtype0*
T0*
seedБџх)
­
+dropout_6_2/cond/dropout/random_uniform/subSub+dropout_6_2/cond/dropout/random_uniform/max+dropout_6_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_6_2/cond/dropout/random_uniform/mulMul5dropout_6_2/cond/dropout/random_uniform/RandomUniform+dropout_6_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_6_2/cond/dropout/random_uniformAdd+dropout_6_2/cond/dropout/random_uniform/mul+dropout_6_2/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_6_2/cond/dropout/addAdd"dropout_6_2/cond/dropout/keep_prob'dropout_6_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_6_2/cond/dropout/FloorFloordropout_6_2/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_2/cond/dropout/divRealDivdropout_6_2/cond/mul"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_2/cond/dropout/mulMuldropout_6_2/cond/dropout/divdropout_6_2/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_6_2/cond/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*%
_class
loc:@activation_7_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_6_2/cond/MergeMergedropout_6_2/cond/Switch_1dropout_6_2/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 

dense_4_2/MatMulMatMuldropout_6_2/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
*
transpose_a( *
T0
e
activation_8_2/SoftmaxSoftmaxdense_4_2/MatMul*'
_output_shapes
:џџџџџџџџџ
*
T0
W
lr_2/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
use_locking(*
T0*
_class
	loc:@lr_2*
validate_shape(*
_output_shapes
: 
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
 *    *
dtype0*
_output_shapes
: 
k
decay_2
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

decay_2/AssignAssigndecay_2decay_2/initial_value*
use_locking(*
T0*
_class
loc:@decay_2*
validate_shape(*
_output_shapes
: 
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
 *    *
dtype0*
_output_shapes
: 
p
iterations_2
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
В
iterations_2/AssignAssigniterations_2iterations_2/initial_value*
_class
loc:@iterations_2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
iterations_2/readIdentityiterations_2*
_class
loc:@iterations_2*
_output_shapes
: *
T0
x
activation_8_sample_weights_2Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

activation_8_target_2Placeholder*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Y
Sum_4/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

Sum_4Sumactivation_8_2/SoftmaxSum_4/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims(
e
	truediv_8RealDivactivation_8_2/SoftmaxSum_4*
T0*'
_output_shapes
:џџџџџџџџџ

M
Const_32Const*
_output_shapes
: *
dtype0*
valueB
 *Пж3
L
sub_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
@
sub_6Subsub_6/xConst_32*
_output_shapes
: *
T0
g
clip_by_value_10/MinimumMinimum	truediv_8sub_6*
T0*'
_output_shapes
:џџџџџџџџџ

q
clip_by_value_10Maximumclip_by_value_10/MinimumConst_32*
T0*'
_output_shapes
:џџџџџџџџџ

P
Log_2Logclip_by_value_10*
T0*'
_output_shapes
:џџџџџџџџџ

]
mul_30Mulactivation_8_target_2Log_2*
T0*'
_output_shapes
:џџџџџџџџџ

Y
Sum_5/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
x
Sum_5Summul_30Sum_5/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
A
Neg_2NegSum_5*#
_output_shapes
:џџџџџџџџџ*
T0
[
Mean_8/reduction_indicesConst*
valueB *
_output_shapes
: *
dtype0
z
Mean_8MeanNeg_2Mean_8/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
b
mul_31MulMean_8activation_8_sample_weights_2*#
_output_shapes
:џџџџџџџџџ*
T0
Q
NotEqual_2/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
q

NotEqual_2NotEqualactivation_8_sample_weights_2NotEqual_2/y*
T0*#
_output_shapes
:џџџџџџџџџ
W
Cast_4Cast
NotEqual_2*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
R
Const_33Const*
valueB: *
dtype0*
_output_shapes
:
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
:џџџџџџџџџ*
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
mul_32/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
A
mul_32Mulmul_32/xMean_10*
_output_shapes
: *
T0
T
ArgMax_4/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
w
ArgMax_4ArgMaxactivation_8_target_2ArgMax_4/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_5/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_5ArgMaxactivation_8_2/SoftmaxArgMax_5/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
R
Equal_2EqualArgMax_4ArgMax_5*
T0	*#
_output_shapes
:џџџџџџџџџ
T
Cast_5CastEqual_2*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
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
gradients_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?*
_class
loc:@mul_32
z
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
_class
loc:@mul_32*
_output_shapes
: *
T0
{
gradients_1/mul_32_grad/ShapeConst*
valueB *
_class
loc:@mul_32*
_output_shapes
: *
dtype0
}
gradients_1/mul_32_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@mul_32
о
-gradients_1/mul_32_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_32_grad/Shapegradients_1/mul_32_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@mul_32*
T0
y
gradients_1/mul_32_grad/mulMulgradients_1/FillMean_10*
T0*
_output_shapes
: *
_class
loc:@mul_32
Щ
gradients_1/mul_32_grad/SumSumgradients_1/mul_32_grad/mul-gradients_1/mul_32_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_32
А
gradients_1/mul_32_grad/ReshapeReshapegradients_1/mul_32_grad/Sumgradients_1/mul_32_grad/Shape*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: *
T0
|
gradients_1/mul_32_grad/mul_1Mulmul_32/xgradients_1/Fill*
T0*
_output_shapes
: *
_class
loc:@mul_32
Я
gradients_1/mul_32_grad/Sum_1Sumgradients_1/mul_32_grad/mul_1/gradients_1/mul_32_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_32*
_output_shapes
:
Ж
!gradients_1/mul_32_grad/Reshape_1Reshapegradients_1/mul_32_grad/Sum_1gradients_1/mul_32_grad/Shape_1*
T0*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: 

&gradients_1/Mean_10_grad/Reshape/shapeConst*
valueB:*
_class
loc:@Mean_10*
dtype0*
_output_shapes
:
Х
 gradients_1/Mean_10_grad/ReshapeReshape!gradients_1/mul_32_grad/Reshape_1&gradients_1/Mean_10_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_10

gradients_1/Mean_10_grad/ShapeShape	truediv_9*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_10
У
gradients_1/Mean_10_grad/TileTile gradients_1/Mean_10_grad/Reshapegradients_1/Mean_10_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_10*
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
loc:@Mean_10*
dtype0*
_output_shapes
:
С
gradients_1/Mean_10_grad/ProdProd gradients_1/Mean_10_grad/Shape_1gradients_1/Mean_10_grad/Const*
_class
loc:@Mean_10*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

 gradients_1/Mean_10_grad/Const_1Const*
valueB: *
_class
loc:@Mean_10*
dtype0*
_output_shapes
:
Х
gradients_1/Mean_10_grad/Prod_1Prod gradients_1/Mean_10_grad/Shape_2 gradients_1/Mean_10_grad/Const_1*
_class
loc:@Mean_10*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

"gradients_1/Mean_10_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
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
Ћ
!gradients_1/Mean_10_grad/floordivFloorDivgradients_1/Mean_10_grad/Prod gradients_1/Mean_10_grad/Maximum*
T0*
_output_shapes
: *
_class
loc:@Mean_10

gradients_1/Mean_10_grad/CastCast!gradients_1/Mean_10_grad/floordiv*
_class
loc:@Mean_10*
_output_shapes
: *

DstT0*

SrcT0
Г
 gradients_1/Mean_10_grad/truedivRealDivgradients_1/Mean_10_grad/Tilegradients_1/Mean_10_grad/Cast*
T0*
_class
loc:@Mean_10*#
_output_shapes
:џџџџџџџџџ

 gradients_1/truediv_9_grad/ShapeShapemul_31*
_output_shapes
:*
out_type0*
_class
loc:@truediv_9*
T0

"gradients_1/truediv_9_grad/Shape_1Const*
valueB *
_class
loc:@truediv_9*
_output_shapes
: *
dtype0
ъ
0gradients_1/truediv_9_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_9_grad/Shape"gradients_1/truediv_9_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_9*
T0
Ѓ
"gradients_1/truediv_9_grad/RealDivRealDiv gradients_1/Mean_10_grad/truedivMean_9*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9*
T0
й
gradients_1/truediv_9_grad/SumSum"gradients_1/truediv_9_grad/RealDiv0gradients_1/truediv_9_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_9*
T0*
	keep_dims( *

Tidx0
Щ
"gradients_1/truediv_9_grad/ReshapeReshapegradients_1/truediv_9_grad/Sum gradients_1/truediv_9_grad/Shape*
Tshape0*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ*
T0
y
gradients_1/truediv_9_grad/NegNegmul_31*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9*
T0
Ѓ
$gradients_1/truediv_9_grad/RealDiv_1RealDivgradients_1/truediv_9_grad/NegMean_9*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9
Љ
$gradients_1/truediv_9_grad/RealDiv_2RealDiv$gradients_1/truediv_9_grad/RealDiv_1Mean_9*
T0*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ
Й
gradients_1/truediv_9_grad/mulMul gradients_1/Mean_10_grad/truediv$gradients_1/truediv_9_grad/RealDiv_2*
T0*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ
й
 gradients_1/truediv_9_grad/Sum_1Sumgradients_1/truediv_9_grad/mul2gradients_1/truediv_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_9*
_output_shapes
:
Т
$gradients_1/truediv_9_grad/Reshape_1Reshape gradients_1/truediv_9_grad/Sum_1"gradients_1/truediv_9_grad/Shape_1*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_9*
T0
~
gradients_1/mul_31_grad/ShapeShapeMean_8*
out_type0*
_class
loc:@mul_31*
_output_shapes
:*
T0

gradients_1/mul_31_grad/Shape_1Shapeactivation_8_sample_weights_2*
_output_shapes
:*
out_type0*
_class
loc:@mul_31*
T0
о
-gradients_1/mul_31_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_31_grad/Shapegradients_1/mul_31_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@mul_31*
T0
Ў
gradients_1/mul_31_grad/mulMul"gradients_1/truediv_9_grad/Reshapeactivation_8_sample_weights_2*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@mul_31*
T0
Щ
gradients_1/mul_31_grad/SumSumgradients_1/mul_31_grad/mul-gradients_1/mul_31_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@mul_31*
T0*
	keep_dims( *

Tidx0
Н
gradients_1/mul_31_grad/ReshapeReshapegradients_1/mul_31_grad/Sumgradients_1/mul_31_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class
loc:@mul_31*
T0

gradients_1/mul_31_grad/mul_1MulMean_8"gradients_1/truediv_9_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@mul_31*
T0
Я
gradients_1/mul_31_grad/Sum_1Sumgradients_1/mul_31_grad/mul_1/gradients_1/mul_31_grad/BroadcastGradientArgs:1*
_class
loc:@mul_31*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
У
!gradients_1/mul_31_grad/Reshape_1Reshapegradients_1/mul_31_grad/Sum_1gradients_1/mul_31_grad/Shape_1*
T0*
Tshape0*
_class
loc:@mul_31*#
_output_shapes
:џџџџџџџџџ
}
gradients_1/Mean_8_grad/ShapeShapeNeg_2*
out_type0*
_class
loc:@Mean_8*
_output_shapes
:*
T0
y
gradients_1/Mean_8_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_8
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
gradients_1/Mean_8_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_8

#gradients_1/Mean_8_grad/range/startConst*
value	B : *
_class
loc:@Mean_8*
dtype0*
_output_shapes
: 

#gradients_1/Mean_8_grad/range/deltaConst*
value	B :*
_class
loc:@Mean_8*
dtype0*
_output_shapes
: 
б
gradients_1/Mean_8_grad/rangeRange#gradients_1/Mean_8_grad/range/startgradients_1/Mean_8_grad/Size#gradients_1/Mean_8_grad/range/delta*

Tidx0*
_output_shapes
:*
_class
loc:@Mean_8

"gradients_1/Mean_8_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_8
Ї
gradients_1/Mean_8_grad/FillFillgradients_1/Mean_8_grad/Shape_1"gradients_1/Mean_8_grad/Fill/value*
T0*
_output_shapes
: *
_class
loc:@Mean_8

%gradients_1/Mean_8_grad/DynamicStitchDynamicStitchgradients_1/Mean_8_grad/rangegradients_1/Mean_8_grad/modgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Fill*
_class
loc:@Mean_8*#
_output_shapes
:џџџџџџџџџ*
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
Н
gradients_1/Mean_8_grad/MaximumMaximum%gradients_1/Mean_8_grad/DynamicStitch!gradients_1/Mean_8_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_8*
T0
Е
 gradients_1/Mean_8_grad/floordivFloorDivgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Maximum*
_class
loc:@Mean_8*#
_output_shapes
:џџџџџџџџџ*
T0
О
gradients_1/Mean_8_grad/ReshapeReshapegradients_1/mul_31_grad/Reshape%gradients_1/Mean_8_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_8*
_output_shapes
:
З
gradients_1/Mean_8_grad/TileTilegradients_1/Mean_8_grad/Reshape gradients_1/Mean_8_grad/floordiv*

Tmultiples0*
T0*
_class
loc:@Mean_8*
_output_shapes
:
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
loc:@Mean_8*
_output_shapes
:*
dtype0
Н
gradients_1/Mean_8_grad/ProdProdgradients_1/Mean_8_grad/Shape_2gradients_1/Mean_8_grad/Const*
_output_shapes
: *
_class
loc:@Mean_8*
T0*
	keep_dims( *

Tidx0

gradients_1/Mean_8_grad/Const_1Const*
valueB: *
_class
loc:@Mean_8*
dtype0*
_output_shapes
:
С
gradients_1/Mean_8_grad/Prod_1Prodgradients_1/Mean_8_grad/Shape_3gradients_1/Mean_8_grad/Const_1*
_output_shapes
: *
_class
loc:@Mean_8*
T0*
	keep_dims( *

Tidx0

#gradients_1/Mean_8_grad/Maximum_1/yConst*
value	B :*
_class
loc:@Mean_8*
_output_shapes
: *
dtype0
­
!gradients_1/Mean_8_grad/Maximum_1Maximumgradients_1/Mean_8_grad/Prod_1#gradients_1/Mean_8_grad/Maximum_1/y*
T0*
_class
loc:@Mean_8*
_output_shapes
: 
Ћ
"gradients_1/Mean_8_grad/floordiv_1FloorDivgradients_1/Mean_8_grad/Prod!gradients_1/Mean_8_grad/Maximum_1*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

gradients_1/Mean_8_grad/CastCast"gradients_1/Mean_8_grad/floordiv_1*
_class
loc:@Mean_8*
_output_shapes
: *

DstT0*

SrcT0
Џ
gradients_1/Mean_8_grad/truedivRealDivgradients_1/Mean_8_grad/Tilegradients_1/Mean_8_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_8

gradients_1/Neg_2_grad/NegNeggradients_1/Mean_8_grad/truediv*
T0*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Neg_2
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
gradients_1/Sum_5_grad/SizeConst*
value	B :*
_class

loc:@Sum_5*
dtype0*
_output_shapes
: 

gradients_1/Sum_5_grad/addAddSum_5/reduction_indicesgradients_1/Sum_5_grad/Size*
_output_shapes
: *
_class

loc:@Sum_5*
T0

gradients_1/Sum_5_grad/modFloorModgradients_1/Sum_5_grad/addgradients_1/Sum_5_grad/Size*
_class

loc:@Sum_5*
_output_shapes
: *
T0
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
"gradients_1/Sum_5_grad/range/startConst*
value	B : *
_class

loc:@Sum_5*
_output_shapes
: *
dtype0
~
"gradients_1/Sum_5_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_5
Ь
gradients_1/Sum_5_grad/rangeRange"gradients_1/Sum_5_grad/range/startgradients_1/Sum_5_grad/Size"gradients_1/Sum_5_grad/range/delta*

Tidx0*
_class

loc:@Sum_5*
_output_shapes
:
}
!gradients_1/Sum_5_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_5*
_output_shapes
: *
dtype0
Ё
gradients_1/Sum_5_grad/FillFillgradients_1/Sum_5_grad/Shape_1!gradients_1/Sum_5_grad/Fill/value*
_class

loc:@Sum_5*
_output_shapes
: *
T0
ћ
$gradients_1/Sum_5_grad/DynamicStitchDynamicStitchgradients_1/Sum_5_grad/rangegradients_1/Sum_5_grad/modgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
_class

loc:@Sum_5*
T0
|
 gradients_1/Sum_5_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_5
Й
gradients_1/Sum_5_grad/MaximumMaximum$gradients_1/Sum_5_grad/DynamicStitch gradients_1/Sum_5_grad/Maximum/y*
_class

loc:@Sum_5*#
_output_shapes
:џџџџџџџџџ*
T0
Ј
gradients_1/Sum_5_grad/floordivFloorDivgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Maximum*
T0*
_class

loc:@Sum_5*
_output_shapes
:
Ж
gradients_1/Sum_5_grad/ReshapeReshapegradients_1/Neg_2_grad/Neg$gradients_1/Sum_5_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0*
_class

loc:@Sum_5
Т
gradients_1/Sum_5_grad/TileTilegradients_1/Sum_5_grad/Reshapegradients_1/Sum_5_grad/floordiv*
_class

loc:@Sum_5*'
_output_shapes
:џџџџџџџџџ
*
T0*

Tmultiples0
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
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_30
о
-gradients_1/mul_30_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_30_grad/Shapegradients_1/mul_30_grad/Shape_1*
T0*
_class
loc:@mul_30*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients_1/mul_30_grad/mulMulgradients_1/Sum_5_grad/TileLog_2*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@mul_30*
T0
Щ
gradients_1/mul_30_grad/SumSumgradients_1/mul_30_grad/mul-gradients_1/mul_30_grad/BroadcastGradientArgs*
_class
loc:@mul_30*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ъ
gradients_1/mul_30_grad/ReshapeReshapegradients_1/mul_30_grad/Sumgradients_1/mul_30_grad/Shape*
T0*
Tshape0*
_class
loc:@mul_30*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ѕ
gradients_1/mul_30_grad/mul_1Mulactivation_8_target_2gradients_1/Sum_5_grad/Tile*
T0*
_class
loc:@mul_30*'
_output_shapes
:џџџџџџџџџ

Я
gradients_1/mul_30_grad/Sum_1Sumgradients_1/mul_30_grad/mul_1/gradients_1/mul_30_grad/BroadcastGradientArgs:1*
_class
loc:@mul_30*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
!gradients_1/mul_30_grad/Reshape_1Reshapegradients_1/mul_30_grad/Sum_1gradients_1/mul_30_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@mul_30
Б
!gradients_1/Log_2_grad/Reciprocal
Reciprocalclip_by_value_10"^gradients_1/mul_30_grad/Reshape_1*
_class

loc:@Log_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Г
gradients_1/Log_2_grad/mulMul!gradients_1/mul_30_grad/Reshape_1!gradients_1/Log_2_grad/Reciprocal*
T0*
_class

loc:@Log_2*'
_output_shapes
:џџџџџџџџџ

Є
'gradients_1/clip_by_value_10_grad/ShapeShapeclip_by_value_10/Minimum*
T0*
out_type0*#
_class
loc:@clip_by_value_10*
_output_shapes
:

)gradients_1/clip_by_value_10_grad/Shape_1Const*
valueB *#
_class
loc:@clip_by_value_10*
dtype0*
_output_shapes
: 
Ј
)gradients_1/clip_by_value_10_grad/Shape_2Shapegradients_1/Log_2_grad/mul*
T0*
out_type0*#
_class
loc:@clip_by_value_10*
_output_shapes
:

-gradients_1/clip_by_value_10_grad/zeros/ConstConst*
valueB
 *    *#
_class
loc:@clip_by_value_10*
_output_shapes
: *
dtype0
р
'gradients_1/clip_by_value_10_grad/zerosFill)gradients_1/clip_by_value_10_grad/Shape_2-gradients_1/clip_by_value_10_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10*
T0
Й
.gradients_1/clip_by_value_10_grad/GreaterEqualGreaterEqualclip_by_value_10/MinimumConst_32*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10*
T0

7gradients_1/clip_by_value_10_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_1/clip_by_value_10_grad/Shape)gradients_1/clip_by_value_10_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@clip_by_value_10*
T0
ў
(gradients_1/clip_by_value_10_grad/SelectSelect.gradients_1/clip_by_value_10_grad/GreaterEqualgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10*
T0
И
,gradients_1/clip_by_value_10_grad/LogicalNot
LogicalNot.gradients_1/clip_by_value_10_grad/GreaterEqual*#
_class
loc:@clip_by_value_10*'
_output_shapes
:џџџџџџџџџ

ў
*gradients_1/clip_by_value_10_grad/Select_1Select,gradients_1/clip_by_value_10_grad/LogicalNotgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10*
T0
є
%gradients_1/clip_by_value_10_grad/SumSum(gradients_1/clip_by_value_10_grad/Select7gradients_1/clip_by_value_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*#
_class
loc:@clip_by_value_10*
_output_shapes
:
щ
)gradients_1/clip_by_value_10_grad/ReshapeReshape%gradients_1/clip_by_value_10_grad/Sum'gradients_1/clip_by_value_10_grad/Shape*
T0*
Tshape0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:џџџџџџџџџ

њ
'gradients_1/clip_by_value_10_grad/Sum_1Sum*gradients_1/clip_by_value_10_grad/Select_19gradients_1/clip_by_value_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*#
_class
loc:@clip_by_value_10*
_output_shapes
:
о
+gradients_1/clip_by_value_10_grad/Reshape_1Reshape'gradients_1/clip_by_value_10_grad/Sum_1)gradients_1/clip_by_value_10_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*#
_class
loc:@clip_by_value_10
Ѕ
/gradients_1/clip_by_value_10/Minimum_grad/ShapeShape	truediv_8*
_output_shapes
:*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
T0
Ё
1gradients_1/clip_by_value_10/Minimum_grad/Shape_1Const*
valueB *+
_class!
loc:@clip_by_value_10/Minimum*
dtype0*
_output_shapes
: 
Ч
1gradients_1/clip_by_value_10/Minimum_grad/Shape_2Shape)gradients_1/clip_by_value_10_grad/Reshape*
T0*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:
Ї
5gradients_1/clip_by_value_10/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *+
_class!
loc:@clip_by_value_10/Minimum

/gradients_1/clip_by_value_10/Minimum_grad/zerosFill1gradients_1/clip_by_value_10/Minimum_grad/Shape_25gradients_1/clip_by_value_10/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
*+
_class!
loc:@clip_by_value_10/Minimum
Б
3gradients_1/clip_by_value_10/Minimum_grad/LessEqual	LessEqual	truediv_8sub_6*
T0*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ

І
?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_1/clip_by_value_10/Minimum_grad/Shape1gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*+
_class!
loc:@clip_by_value_10/Minimum
Њ
0gradients_1/clip_by_value_10/Minimum_grad/SelectSelect3gradients_1/clip_by_value_10/Minimum_grad/LessEqual)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
*+
_class!
loc:@clip_by_value_10/Minimum
Э
4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot
LogicalNot3gradients_1/clip_by_value_10/Minimum_grad/LessEqual*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ

­
2gradients_1/clip_by_value_10/Minimum_grad/Select_1Select4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*+
_class!
loc:@clip_by_value_10/Minimum*
T0

-gradients_1/clip_by_value_10/Minimum_grad/SumSum0gradients_1/clip_by_value_10/Minimum_grad/Select?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*+
_class!
loc:@clip_by_value_10/Minimum

1gradients_1/clip_by_value_10/Minimum_grad/ReshapeReshape-gradients_1/clip_by_value_10/Minimum_grad/Sum/gradients_1/clip_by_value_10/Minimum_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
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
ў
3gradients_1/clip_by_value_10/Minimum_grad/Reshape_1Reshape/gradients_1/clip_by_value_10/Minimum_grad/Sum_11gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
: 

 gradients_1/truediv_8_grad/ShapeShapeactivation_8_2/Softmax*
out_type0*
_class
loc:@truediv_8*
_output_shapes
:*
T0

"gradients_1/truediv_8_grad/Shape_1ShapeSum_4*
T0*
out_type0*
_class
loc:@truediv_8*
_output_shapes
:
ъ
0gradients_1/truediv_8_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_8_grad/Shape"gradients_1/truediv_8_grad/Shape_1*
_class
loc:@truediv_8*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
З
"gradients_1/truediv_8_grad/RealDivRealDiv1gradients_1/clip_by_value_10/Minimum_grad/ReshapeSum_4*
T0*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ

й
gradients_1/truediv_8_grad/SumSum"gradients_1/truediv_8_grad/RealDiv0gradients_1/truediv_8_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@truediv_8*
T0*
	keep_dims( *

Tidx0
Э
"gradients_1/truediv_8_grad/ReshapeReshapegradients_1/truediv_8_grad/Sum gradients_1/truediv_8_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@truediv_8

gradients_1/truediv_8_grad/NegNegactivation_8_2/Softmax*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_8*
T0
І
$gradients_1/truediv_8_grad/RealDiv_1RealDivgradients_1/truediv_8_grad/NegSum_4*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ
*
T0
Ќ
$gradients_1/truediv_8_grad/RealDiv_2RealDiv$gradients_1/truediv_8_grad/RealDiv_1Sum_4*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_8
Ю
gradients_1/truediv_8_grad/mulMul1gradients_1/clip_by_value_10/Minimum_grad/Reshape$gradients_1/truediv_8_grad/RealDiv_2*
T0*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ

й
 gradients_1/truediv_8_grad/Sum_1Sumgradients_1/truediv_8_grad/mul2gradients_1/truediv_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@truediv_8*
T0*
	keep_dims( *

Tidx0
г
$gradients_1/truediv_8_grad/Reshape_1Reshape gradients_1/truediv_8_grad/Sum_1"gradients_1/truediv_8_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ
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
gradients_1/Sum_4_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4

gradients_1/Sum_4_grad/addAddSum_4/reduction_indicesgradients_1/Sum_4_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_4
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
"gradients_1/Sum_4_grad/range/deltaConst*
value	B :*
_class

loc:@Sum_4*
dtype0*
_output_shapes
: 
Ь
gradients_1/Sum_4_grad/rangeRange"gradients_1/Sum_4_grad/range/startgradients_1/Sum_4_grad/Size"gradients_1/Sum_4_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_4*

Tidx0
}
!gradients_1/Sum_4_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_4
Ё
gradients_1/Sum_4_grad/FillFillgradients_1/Sum_4_grad/Shape_1!gradients_1/Sum_4_grad/Fill/value*
_class

loc:@Sum_4*
_output_shapes
: *
T0
ћ
$gradients_1/Sum_4_grad/DynamicStitchDynamicStitchgradients_1/Sum_4_grad/rangegradients_1/Sum_4_grad/modgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
_class

loc:@Sum_4*
T0
|
 gradients_1/Sum_4_grad/Maximum/yConst*
value	B :*
_class

loc:@Sum_4*
_output_shapes
: *
dtype0
Й
gradients_1/Sum_4_grad/MaximumMaximum$gradients_1/Sum_4_grad/DynamicStitch gradients_1/Sum_4_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_4*
T0
Ј
gradients_1/Sum_4_grad/floordivFloorDivgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Maximum*
_output_shapes
:*
_class

loc:@Sum_4*
T0
Р
gradients_1/Sum_4_grad/ReshapeReshape$gradients_1/truediv_8_grad/Reshape_1$gradients_1/Sum_4_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_4*
_output_shapes
:*
T0
Т
gradients_1/Sum_4_grad/TileTilegradients_1/Sum_4_grad/Reshapegradients_1/Sum_4_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Sum_4*
T0*

Tmultiples0
В
gradients_1/AddNAddN"gradients_1/truediv_8_grad/Reshapegradients_1/Sum_4_grad/Tile*'
_output_shapes
:џџџџџџџџџ
*
N*
_class
loc:@truediv_8*
T0
Й
+gradients_1/activation_8_2/Softmax_grad/mulMulgradients_1/AddNactivation_8_2/Softmax*
T0*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_2/Softmax
В
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
:џџџџџџџџџ*)
_class
loc:@activation_8_2/Softmax
Б
5gradients_1/activation_8_2/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   *)
_class
loc:@activation_8_2/Softmax

/gradients_1/activation_8_2/Softmax_grad/ReshapeReshape+gradients_1/activation_8_2/Softmax_grad/Sum5gradients_1/activation_8_2/Softmax_grad/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*)
_class
loc:@activation_8_2/Softmax*
T0
в
+gradients_1/activation_8_2/Softmax_grad/subSubgradients_1/AddN/gradients_1/activation_8_2/Softmax_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_2/Softmax
ж
-gradients_1/activation_8_2/Softmax_grad/mul_1Mul+gradients_1/activation_8_2/Softmax_grad/subactivation_8_2/Softmax*
T0*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:џџџџџџџџџ

є
(gradients_1/dense_4_2/MatMul_grad/MatMulMatMul-gradients_1/activation_8_2/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_4_2/MatMul
№
*gradients_1/dense_4_2/MatMul_grad/MatMul_1MatMuldropout_6_2/cond/Merge-gradients_1/activation_8_2/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_4_2/MatMul*
_output_shapes
:	
*
transpose_a(
ы
1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_4_2/MatMul_grad/MatMuldropout_6_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_4_2/MatMul
И
gradients_1/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_1Shapegradients_1/Switch:1*
out_type0*%
_class
loc:@activation_7_2/Elu*
_output_shapes
:*
T0

gradients_1/zeros/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_2/Elu*
dtype0*
_output_shapes
: 
Ё
gradients_1/zerosFillgradients_1/Shape_1gradients_1/zeros/Const*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0
ш
4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradgradients_1/zeros*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_7_2/Elu
Р
3gradients_1/dropout_6_2/cond/dropout/mul_grad/ShapeShapedropout_6_2/cond/dropout/div*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
Ф
5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1Shapedropout_6_2/cond/dropout/Floor*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
Ж
Cgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
ё
1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1dropout_6_2/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
Ё
1gradients_1/dropout_6_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulCgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_6_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
ё
3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Muldropout_6_2/cond/dropout/div3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ї
3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
 
7gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
И
3gradients_1/dropout_6_2/cond/dropout/div_grad/ShapeShapedropout_6_2/cond/mul*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
Љ
5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_6_2/cond/dropout/div
Ж
Cgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div
џ
5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape"dropout_6_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div
Ѕ
1gradients_1/dropout_6_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_6_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/div_grad/Sum3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
В
1gradients_1/dropout_6_2/cond/dropout/div_grad/NegNegdropout_6_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
§
7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_6_2/cond/dropout/div_grad/Neg"dropout_6_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0

1gradients_1/dropout_6_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
Ѕ
3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_6_2/cond/dropout/div_grad/mulEgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/div

7gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
: 
Б
+gradients_1/dropout_6_2/cond/mul_grad/ShapeShapedropout_6_2/cond/mul/Switch:1*
out_type0*'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
:*
T0

-gradients_1/dropout_6_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_6_2/cond/mul*
dtype0*
_output_shapes
: 

;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_6_2/cond/mul_grad/Shape-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_6_2/cond/mul*
T0
л
)gradients_1/dropout_6_2/cond/mul_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/div_grad/Reshapedropout_6_2/cond/mul/y*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0

)gradients_1/dropout_6_2/cond/mul_grad/SumSum)gradients_1/dropout_6_2/cond/mul_grad/mul;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul*
T0*
	keep_dims( *

Tidx0
њ
-gradients_1/dropout_6_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_6_2/cond/mul_grad/Sum+gradients_1/dropout_6_2/cond/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*
T0
ф
+gradients_1/dropout_6_2/cond/mul_grad/mul_1Muldropout_6_2/cond/mul/Switch:15gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0

+gradients_1/dropout_6_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_6_2/cond/mul_grad/mul_1=gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul*
T0*
	keep_dims( *

Tidx0
ю
/gradients_1/dropout_6_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_6_2/cond/mul_grad/Sum_1-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_6_2/cond/mul
К
gradients_1/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_2Shapegradients_1/Switch_1*
out_type0*%
_class
loc:@activation_7_2/Elu*
_output_shapes
:*
T0

gradients_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_7_2/Elu
Ѕ
gradients_1/zeros_1Fillgradients_1/Shape_2gradients_1/zeros_1/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu
ш
6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_6_2/cond/mul_grad/Reshapegradients_1/zeros_1*%
_class
loc:@activation_7_2/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
ы
gradients_1/AddN_1AddN4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_2/Elu*
N*(
_output_shapes
:џџџџџџџџџ
И
+gradients_1/activation_7_2/Elu_grad/EluGradEluGradgradients_1/AddN_1activation_7_2/Elu*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu
ђ
(gradients_1/dense_3_2/MatMul_grad/MatMulMatMul+gradients_1/activation_7_2/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_3_2/MatMul*
T0
я
*gradients_1/dense_3_2/MatMul_grad/MatMul_1MatMuldropout_5_2/cond/Merge+gradients_1/activation_7_2/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_3_2/MatMul*
T0
ы
1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_3_2/MatMul_grad/MatMuldropout_5_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_3_2/MatMul*
T0
К
gradients_1/Switch_2Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu

gradients_1/Shape_3Shapegradients_1/Switch_2:1*
T0*
out_type0*%
_class
loc:@activation_6_2/Elu*
_output_shapes
:

gradients_1/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_2/Elu
Ѕ
gradients_1/zeros_2Fillgradients_1/Shape_3gradients_1/zeros_2/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu
ъ
4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradgradients_1/zeros_2*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_2/Elu
Р
3gradients_1/dropout_5_2/cond/dropout/mul_grad/ShapeShapedropout_5_2/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:*
T0
Ф
5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1Shapedropout_5_2/cond/dropout/Floor*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
Ж
Cgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
ё
1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1dropout_5_2/cond/dropout/Floor*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ё
1gradients_1/dropout_5_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulCgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul

5gradients_1/dropout_5_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
ё
3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Muldropout_5_2/cond/dropout/div3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ї
3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:
 
7gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
И
3gradients_1/dropout_5_2/cond/dropout/div_grad/ShapeShapedropout_5_2/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:
Љ
5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_2/cond/dropout/div
Ж
Cgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
џ
5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape"dropout_5_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
Ѕ
1gradients_1/dropout_5_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/div

5gradients_1/dropout_5_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/div_grad/Sum3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
В
1gradients_1/dropout_5_2/cond/dropout/div_grad/NegNegdropout_5_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
§
7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_5_2/cond/dropout/div_grad/Neg"dropout_5_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0

1gradients_1/dropout_5_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
Ѕ
3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_5_2/cond/dropout/div_grad/mulEgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:

7gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
Б
+gradients_1/dropout_5_2/cond/mul_grad/ShapeShapedropout_5_2/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_5_2/cond/mul

-gradients_1/dropout_5_2/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_5_2/cond/mul

;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_5_2/cond/mul_grad/Shape-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_5_2/cond/mul*
T0
л
)gradients_1/dropout_5_2/cond/mul_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/div_grad/Reshapedropout_5_2/cond/mul/y*
T0*'
_class
loc:@dropout_5_2/cond/mul*(
_output_shapes
:џџџџџџџџџ

)gradients_1/dropout_5_2/cond/mul_grad/SumSum)gradients_1/dropout_5_2/cond/mul_grad/mul;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:
њ
-gradients_1/dropout_5_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_5_2/cond/mul_grad/Sum+gradients_1/dropout_5_2/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_5_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ф
+gradients_1/dropout_5_2/cond/mul_grad/mul_1Muldropout_5_2/cond/mul/Switch:15gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_5_2/cond/mul

+gradients_1/dropout_5_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_5_2/cond/mul_grad/mul_1=gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_5_2/cond/mul
ю
/gradients_1/dropout_5_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_5_2/cond/mul_grad/Sum_1-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_2/cond/mul
К
gradients_1/Switch_3Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*%
_class
loc:@activation_6_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients_1/Shape_4Shapegradients_1/Switch_3*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/zeros_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_2/Elu
Ѕ
gradients_1/zeros_3Fillgradients_1/Shape_4gradients_1/zeros_3/Const*
T0*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:џџџџџџџџџ
ш
6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_5_2/cond/mul_grad/Reshapegradients_1/zeros_3*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_2/Elu
ы
gradients_1/AddN_2AddN4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:џџџџџџџџџ*
N*%
_class
loc:@activation_6_2/Elu*
T0
И
+gradients_1/activation_6_2/Elu_grad/EluGradEluGradgradients_1/AddN_2activation_6_2/Elu*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu
ђ
(gradients_1/dense_2_2/MatMul_grad/MatMulMatMul+gradients_1/activation_6_2/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_2_2/MatMul*
T0
я
*gradients_1/dense_2_2/MatMul_grad/MatMul_1MatMuldropout_4_2/cond/Merge+gradients_1/activation_6_2/Elu_grad/EluGrad*
transpose_b( * 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_2/MatMul*
T0
ы
1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_2_2/MatMul_grad/MatMuldropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_2_2/MatMul
К
gradients_1/Switch_4Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu

gradients_1/Shape_5Shapegradients_1/Switch_4:1*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_2/Elu

gradients_1/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_2/Elu*
dtype0*
_output_shapes
: 
Ѕ
gradients_1/zeros_4Fillgradients_1/Shape_5gradients_1/zeros_4/Const*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
ъ
4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradgradients_1/zeros_4*
T0*%
_class
loc:@activation_5_2/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
Р
3gradients_1/dropout_4_2/cond/dropout/mul_grad/ShapeShapedropout_4_2/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
Ф
5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1Shapedropout_4_2/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0
Ж
Cgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ё
1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1dropout_4_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul
Ё
1gradients_1/dropout_4_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulCgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
ё
3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Muldropout_4_2/cond/dropout/div3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
T0
Ї
3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:
 
7gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul
И
3gradients_1/dropout_4_2/cond/dropout/div_grad/ShapeShapedropout_4_2/cond/mul*
T0*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
Љ
5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1Const*
valueB */
_class%
#!loc:@dropout_4_2/cond/dropout/div*
dtype0*
_output_shapes
: 
Ж
Cgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
џ
5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape"dropout_4_2/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
Ѕ
1gradients_1/dropout_4_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/div_grad/Sum3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
В
1gradients_1/dropout_4_2/cond/dropout/div_grad/NegNegdropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0
§
7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_4_2/cond/dropout/div_grad/Neg"dropout_4_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div

7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1"dropout_4_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

1gradients_1/dropout_4_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_4_2/cond/dropout/div_grad/mulEgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
:

7gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
: 
Б
+gradients_1/dropout_4_2/cond/mul_grad/ShapeShapedropout_4_2/cond/mul/Switch:1*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_2/cond/mul*
T0

-gradients_1/dropout_4_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_2/cond/mul*
dtype0*
_output_shapes
: 

;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_4_2/cond/mul_grad/Shape-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_4_2/cond/mul*
T0
л
)gradients_1/dropout_4_2/cond/mul_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/div_grad/Reshapedropout_4_2/cond/mul/y*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
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
њ
-gradients_1/dropout_4_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_4_2/cond/mul_grad/Sum+gradients_1/dropout_4_2/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ф
+gradients_1/dropout_4_2/cond/mul_grad/mul_1Muldropout_4_2/cond/mul/Switch:15gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape*
T0*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ

+gradients_1/dropout_4_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_4_2/cond/mul_grad/mul_1=gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
:
ю
/gradients_1/dropout_4_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_4_2/cond/mul_grad/Sum_1-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
: *
T0
К
gradients_1/Switch_5Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu

gradients_1/Shape_6Shapegradients_1/Switch_5*
_output_shapes
:*
out_type0*%
_class
loc:@activation_5_2/Elu*
T0

gradients_1/zeros_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_5_2/Elu
Ѕ
gradients_1/zeros_5Fillgradients_1/Shape_6gradients_1/zeros_5/Const*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
ш
6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_4_2/cond/mul_grad/Reshapegradients_1/zeros_5*
T0*%
_class
loc:@activation_5_2/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
ы
gradients_1/AddN_3AddN4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_grad*
N*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu
И
+gradients_1/activation_5_2/Elu_grad/EluGradEluGradgradients_1/AddN_3activation_5_2/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu*
T0
ђ
(gradients_1/dense_1_2/MatMul_grad/MatMulMatMul+gradients_1/activation_5_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ$*
transpose_a( *#
_class
loc:@dense_1_2/MatMul*
T0
ь
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
_output_shapes
:
$*
dtype0


Variable_8
VariableV2*
shared_name *
dtype0*
shape:
$* 
_output_shapes
:
$*
	container 
Є
Variable_8/AssignAssign
Variable_8Const_36*
_class
loc:@Variable_8* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
q
Variable_8/readIdentity
Variable_8* 
_output_shapes
:
$*
_class
loc:@Variable_8*
T0
a
Const_37Const*
dtype0* 
_output_shapes
:
*
valueB
*    


Variable_9
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Є
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
_output_shapes
:
*
dtype0*
valueB
*    
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
Ї
Variable_10/AssignAssignVariable_10Const_38*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(* 
_output_shapes
:

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
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 
І
Variable_11/AssignAssignVariable_11Const_39*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable_11
s
Variable_11/readIdentityVariable_11*
T0*
_output_shapes
:	
*
_class
loc:@Variable_11
a
Const_40Const* 
_output_shapes
:
$*
dtype0*
valueB
$*    
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
Ї
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
valueB
*    *
dtype0* 
_output_shapes
:

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
Ї
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
Variable_13/readIdentityVariable_13*
T0* 
_output_shapes
:
*
_class
loc:@Variable_13
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
	container *
dtype0*
shared_name *
shape:

Ї
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
valueB	
*    *
dtype0*
_output_shapes
:	


Variable_15
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 
І
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
_class
loc:@Variable_15*
_output_shapes
:	

M
mul_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
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
mul_34/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
L
mul_34Mulmul_34/xSquare_8* 
_output_shapes
:
$*
T0
H
add_16Addmul_33mul_34* 
_output_shapes
:
$*
T0

	Assign_20Assign
Variable_8add_16*
_class
loc:@Variable_8* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
add_17/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
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
Const_45Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_11/MinimumMinimumadd_17Const_45*
T0* 
_output_shapes
:
$
j
clip_by_value_11Maximumclip_by_value_11/MinimumConst_44* 
_output_shapes
:
$*
T0
K
Sqrt_8Sqrtclip_by_value_11* 
_output_shapes
:
$*
T0
l
mul_35Mul*gradients_1/dense_1_2/MatMul_grad/MatMul_1Sqrt_8*
T0* 
_output_shapes
:
$
M
add_18/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
J
add_18Addadd_16add_18/y* 
_output_shapes
:
$*
T0
M
Const_46Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_47Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_12/MinimumMinimumadd_18Const_47* 
_output_shapes
:
$*
T0
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

truediv_10RealDivmul_35Sqrt_9*
T0* 
_output_shapes
:
$
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
Ё
	Assign_21Assigndense_1/kernelsub_7*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_37/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
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
mul_38/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
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
	Assign_22AssignVariable_12add_19*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(* 
_output_shapes
:
$
M
mul_39/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_39Mulmul_39/xVariable_9/read*
T0* 
_output_shapes
:

j
	Square_10Square*gradients_1/dense_2_2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
M
mul_40/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
M
mul_40Mulmul_40/x	Square_10*
T0* 
_output_shapes
:

H
add_20Addmul_39mul_40*
T0* 
_output_shapes
:

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
add_21/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
T
add_21AddVariable_13/readadd_21/y*
T0* 
_output_shapes
:

M
Const_48Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_49Const*
valueB
 *  *
_output_shapes
: *
dtype0
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
Sqrt_10Sqrtclip_by_value_13*
T0* 
_output_shapes
:

m
mul_41Mul*gradients_1/dense_2_2/MatMul_grad/MatMul_1Sqrt_10*
T0* 
_output_shapes
:

M
add_22/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
J
add_22Addadd_20add_22/y*
T0* 
_output_shapes
:

M
Const_50Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_51Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_14/MinimumMinimumadd_22Const_51*
T0* 
_output_shapes
:

j
clip_by_value_14Maximumclip_by_value_14/MinimumConst_50*
T0* 
_output_shapes
:

L
Sqrt_11Sqrtclip_by_value_14*
T0* 
_output_shapes
:

Q

truediv_11RealDivmul_41Sqrt_11* 
_output_shapes
:
*
T0
O
mul_42Mul	lr_2/read
truediv_11*
T0* 
_output_shapes
:

T
sub_8Subdense_2/kernel/readmul_42*
T0* 
_output_shapes
:

Ё
	Assign_24Assigndense_2/kernelsub_8*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
M
mul_43/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
T
mul_43Mulmul_43/xVariable_13/read*
T0* 
_output_shapes
:

J
	Square_11Square
truediv_11* 
_output_shapes
:
*
T0
M
mul_44/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
M
mul_44Mulmul_44/x	Square_11* 
_output_shapes
:
*
T0
H
add_23Addmul_43mul_44*
T0* 
_output_shapes
:

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
 *33s?*
dtype0*
_output_shapes
: 
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
mul_46/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
M
mul_46Mulmul_46/x	Square_12*
T0* 
_output_shapes
:

H
add_24Addmul_45mul_46* 
_output_shapes
:
*
T0

	Assign_26AssignVariable_10add_24*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(* 
_output_shapes
:

M
add_25/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
Const_53Const*
dtype0*
_output_shapes
: *
valueB
 *  
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
add_26/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
J
add_26Addadd_24add_26/y* 
_output_shapes
:
*
T0
M
Const_54Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_55Const*
dtype0*
_output_shapes
: *
valueB
 *  
`
clip_by_value_16/MinimumMinimumadd_26Const_55*
T0* 
_output_shapes
:

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

truediv_12RealDivmul_47Sqrt_13*
T0* 
_output_shapes
:

O
mul_48Mul	lr_2/read
truediv_12*
T0* 
_output_shapes
:

T
sub_9Subdense_3/kernel/readmul_48*
T0* 
_output_shapes
:

Ё
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
mul_49/xConst*
_output_shapes
: *
dtype0*
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
truediv_12*
T0* 
_output_shapes
:

M
mul_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
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
mul_51/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
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
mul_52/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
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
	Assign_29AssignVariable_11add_28*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_11*
T0*
use_locking(
M
add_29/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
S
add_29AddVariable_15/readadd_29/y*
_output_shapes
:	
*
T0
M
Const_56Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
Sqrt_14Sqrtclip_by_value_17*
T0*
_output_shapes
:	

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
 *wЬ+2
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
Sqrt_15Sqrtclip_by_value_18*
_output_shapes
:	
*
T0
P

truediv_13RealDivmul_53Sqrt_15*
T0*
_output_shapes
:	

N
mul_54Mul	lr_2/read
truediv_13*
T0*
_output_shapes
:	

T
sub_10Subdense_4/kernel/readmul_54*
T0*
_output_shapes
:	

Ё
	Assign_30Assigndense_4/kernelsub_10*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*!
_class
loc:@dense_4/kernel
M
mul_55/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
S
mul_55Mulmul_55/xVariable_15/read*
T0*
_output_shapes
:	

I
	Square_15Square
truediv_13*
_output_shapes
:	
*
T0
M
mul_56/xConst*
valueB
 *ЭЬL=*
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
З
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
Д
init_3NoOp^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign"^pd     фK­	~,Kи7SжAJШ
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
shared_namestring *1.2.02v1.2.0-rc2-21-g12f033dоѓ

conv2d_1_inputPlaceholder*$
shape:џџџџџџџџџ  *
dtype0*/
_output_shapes
:џџџџџџџџџ  
v
conv2d_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         @   
`
conv2d_1/random_uniform/minConst*
valueB
 *ЖhЯН*
dtype0*
_output_shapes
: 
`
conv2d_1/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЖhЯ=
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
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
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
:џџџџџџџџџ  
s
conv2d_1/convolution/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"         @   
s
"conv2d_1/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
к
conv2d_1/convolutionConv2Dconv2d_1/transposeconv2d_1/kernel/read*
use_cudnn_on_gpu(*/
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC*
strides
*
T0*
paddingVALID
r
conv2d_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_1/transpose_1	Transposeconv2d_1/convolutionconv2d_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
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
conv2d_2/random_uniform/minConst*
valueB
 *:ЭН*
_output_shapes
: *
dtype0
`
conv2d_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э=
В
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*&
_output_shapes
:@@*
seed2НСћ*
dtype0*
T0*
seedБџх)
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
	container *
shape:@@*
dtype0*
shared_name 
Ш
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@*
T0*
validate_shape(*
use_locking(

conv2d_2/kernel/readIdentityconv2d_2/kernel*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel*
T0
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
valueB"      @   @   *
dtype0*
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
к
conv2d_2/convolutionConv2Dconv2d_2/transposeconv2d_2/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
T0
r
conv2d_2/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2/transpose_1	Transposeconv2d_2/convolutionconv2d_2/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
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
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

_
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
:*
T0

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
 *  ?*
dtype0*
_output_shapes
: 
Ч
dropout_1/cond/mul/SwitchSwitchactivation_2/Eludropout_1/cond/pred_id*#
_class
loc:@activation_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0

dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ@

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
_output_shapes
:*
out_type0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ш
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2шЩА*
dtype0*
T0*
seedБџх)
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ъ
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
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
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@
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
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*#
_class
loc:@activation_2/Elu

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
v
conv2d_3/random_uniform/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
`
conv2d_3/random_uniform/minConst*
valueB
 *:ЭН*
dtype0*
_output_shapes
: 
`
conv2d_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э=
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
conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*
T0*&
_output_shapes
:@@

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*&
_output_shapes
:@@*
T0

conv2d_3/kernel
VariableV2*
shape:@@*
shared_name *
dtype0*&
_output_shapes
:@@*
	container 
Ш
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@

conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:@@
p
conv2d_3/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3/transpose	Transposedropout_1/cond/Mergeconv2d_3/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
s
conv2d_3/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   @   
s
"conv2d_3/convolution/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
к
conv2d_3/convolutionConv2Dconv2d_3/transposeconv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
r
conv2d_3/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
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
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
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
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ч
dropout_2/cond/mul/SwitchSwitchactivation_3/Eludropout_2/cond/pred_id*
T0*#
_class
loc:@activation_3/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@
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
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
out_type0*
_output_shapes
:*
T0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ч
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2йЋ*
dtype0*
T0*
seedБџх)
Ї
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ъ
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
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
conv2d_4/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ=
В
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*&
_output_shapes
:@ *
seed2Їз*
dtype0*
T0*
seedБџх)
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
conv2d_4/random_uniformAddconv2d_4/random_uniform/mulconv2d_4/random_uniform/min*&
_output_shapes
:@ *
T0

conv2d_4/kernel
VariableV2*
shared_name *
dtype0*
shape:@ *&
_output_shapes
:@ *
	container 
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
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*&
_output_shapes
:@ *"
_class
loc:@conv2d_4/kernel
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
valueB"      *
_output_shapes
:*
dtype0
к
conv2d_4/convolutionConv2Dconv2d_4/transposeconv2d_4/kernel/read*/
_output_shapes
:џџџџџџџџџ *
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID
r
conv2d_4/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_4/transpose_1	Transposeconv2d_4/convolutionconv2d_4/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
g
activation_4/EluEluconv2d_4/transpose_1*/
_output_shapes
:џџџџџџџџџ *
T0
w
max_pooling2d_1/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:

max_pooling2d_1/transpose	Transposeactivation_4/Elumax_pooling2d_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
Ъ
max_pooling2d_1/MaxPoolMaxPoolmax_pooling2d_1/transpose*
paddingVALID*
data_formatNHWC*
strides
*
T0*/
_output_shapes
:џџџџџџџџџ *
ksize

y
 max_pooling2d_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
Њ
max_pooling2d_1/transpose_1	Transposemax_pooling2d_1/MaxPool max_pooling2d_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
н
dropout_3/cond/mul/SwitchSwitchmax_pooling2d_1/transpose_1dropout_3/cond/pred_id*.
_class$
" loc:@max_pooling2d_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *
T0

dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 

 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  @?
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ш
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2ђЎД*
dtype0*
T0*
seedБџх)
Ї
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ъ
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ *
T0
М
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ *
T0
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
N*
T0*1
_output_shapes
:џџџџџџџџџ : 
c
flatten_1/ShapeShapedropout_3/cond/Merge*
T0*
_output_shapes
:*
out_type0
g
flatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_1/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
_output_shapes
:*
shrink_axis_mask 
Y
flatten_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
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
џџџџџџџџџ*
_output_shapes
: *
dtype0
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*
_output_shapes
:*

axis 

flatten_1/ReshapeReshapedropout_3/cond/Mergeflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
_
dense_1/random_uniform/minConst*
valueB
 *7Н*
_output_shapes
: *
dtype0
_
dense_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *7=
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
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
$*
T0

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
$

dense_1/kernel
VariableV2*
shared_name *
dtype0*
shape:
$* 
_output_shapes
:
$*
	container 
О
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
dropout_4/cond/mul/SwitchSwitchactivation_5/Eludropout_4/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_5/Elu

dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0

 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
T0*
out_type0*
_output_shapes
:

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
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
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Е
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
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
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_5/Elu

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N
m
dense_2/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
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
	container *
dtype0*
shared_name *
shape:

О
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
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
*
T0

dense_2/MatMulMatMuldropout_4/cond/Mergedense_2/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
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
 dropout_5/cond/dropout/keep_probConst^dropout_5/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
T0*
out_type0*
_output_shapes
:

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2кљ*
T0*
seedБџх)*
dtype0
Ї
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Е
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5/cond/dropout/addAdd dropout_5/cond/dropout/keep_prob%dropout_5/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0
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
T0*#
_class
loc:@activation_6/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
m
dense_3/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
_
dense_3/random_uniform/minConst*
valueB
 *   О*
_output_shapes
: *
dtype0
_
dense_3/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Њ
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
seedБџх)*
T0*
dtype0* 
_output_shapes
:
*
seed2Й
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 
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
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


dense_3/MatMulMatMuldropout_5/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Z
activation_7/EluEludense_3/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
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
Й
dropout_6/cond/mul/SwitchSwitchactivation_7/Eludropout_6/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@activation_7/Elu*
T0

dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

 dropout_6/cond/dropout/keep_probConst^dropout_6/cond/switch_t*
valueB
 *   ?*
_output_shapes
: *
dtype0
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
_output_shapes
:*
out_type0*
T0

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2І *
dtype0*
T0*
seedБџх)
Ї
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
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
dropout_6/cond/dropout/addAdd dropout_6/cond/dropout/keep_prob%dropout_6/cond/dropout/random_uniform*
T0*(
_output_shapes
:џџџџџџџџџ
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0
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
dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N
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
dense_4/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЭU>
Љ
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
dtype0*
seedБџх)*
T0*
_output_shapes
:	
*
seed2Жю
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
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
Н
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	

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
activation_1_1/EluEluconv2d_1/transpose_1*/
_output_shapes
:џџџџџџџџџ@*
T0
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
:џџџџџџџџџ@*
T0
u
conv2d_2_1/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_2_1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
о
conv2d_2_1/convolutionConv2Dconv2d_2_1/transposeconv2d_2/kernel/read*
paddingVALID*
T0*
data_formatNHWC*
strides
*/
_output_shapes
:џџџџџџџџџ@*
use_cudnn_on_gpu(
t
conv2d_2_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_2_1/transpose_1	Transposeconv2d_2_1/convolutionconv2d_2_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
k
activation_2_1/EluEluconv2d_2_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
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
dropout_1_1/cond/mul/SwitchSwitchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*%
_class
loc:@activation_2_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@
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
+dropout_1_1/cond/dropout/random_uniform/minConst^dropout_1_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0

+dropout_1_1/cond/dropout/random_uniform/maxConst^dropout_1_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ы
5dropout_1_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2Т*
T0*
seedБџх)*
dtype0
­
+dropout_1_1/cond/dropout/random_uniform/subSub+dropout_1_1/cond/dropout/random_uniform/max+dropout_1_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
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
dropout_1_1/cond/dropout/addAdd"dropout_1_1/cond/dropout/keep_prob'dropout_1_1/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0
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
dropout_1_1/cond/dropout/mulMuldropout_1_1/cond/dropout/divdropout_1_1/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Э
dropout_1_1/cond/Switch_1Switchactivation_2_1/Eludropout_1_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_2_1/Elu

dropout_1_1/cond/MergeMergedropout_1_1/cond/Switch_1dropout_1_1/cond/dropout/mul*1
_output_shapes
:џџџџџџџџџ@: *
N*
T0
r
conv2d_3_1/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_1/transpose	Transposedropout_1_1/cond/Mergeconv2d_3_1/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
u
conv2d_3_1/convolution/ShapeConst*%
valueB"      @   @   *
_output_shapes
:*
dtype0
u
$conv2d_3_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_3_1/convolutionConv2Dconv2d_3_1/transposeconv2d_3/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:џџџџџџџџџ@
t
conv2d_3_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_3_1/transpose_1	Transposeconv2d_3_1/convolutionconv2d_3_1/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
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
Я
dropout_2_1/cond/mul/SwitchSwitchactivation_3_1/Eludropout_2_1/cond/pred_id*%
_class
loc:@activation_3_1/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*
T0
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
5dropout_2_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2Сом*
dtype0*
T0*
seedБџх)
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
dropout_2_1/cond/dropout/addAdd"dropout_2_1/cond/dropout/keep_prob'dropout_2_1/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@
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
dropout_2_1/cond/Switch_1Switchactivation_3_1/Eludropout_2_1/cond/pred_id*
T0*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@*%
_class
loc:@activation_3_1/Elu

dropout_2_1/cond/MergeMergedropout_2_1/cond/Switch_1dropout_2_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
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
:џџџџџџџџџ@*
T0
u
conv2d_4_1/convolution/ShapeConst*%
valueB"      @       *
dtype0*
_output_shapes
:
u
$conv2d_4_1/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_4_1/convolutionConv2Dconv2d_4_1/transposeconv2d_4/kernel/read*
paddingVALID*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:џџџџџџџџџ 
t
conv2d_4_1/transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:

conv2d_4_1/transpose_1	Transposeconv2d_4_1/convolutionconv2d_4_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
max_pooling2d_1_1/MaxPoolMaxPoolmax_pooling2d_1_1/transpose*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
{
"max_pooling2d_1_1/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             
А
max_pooling2d_1_1/transpose_1	Transposemax_pooling2d_1_1/MaxPool"max_pooling2d_1_1/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
dropout_3_1/cond/mul/SwitchSwitchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *
T0

dropout_3_1/cond/mulMuldropout_3_1/cond/mul/Switch:1dropout_3_1/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 

"dropout_3_1/cond/dropout/keep_probConst^dropout_3_1/cond/switch_t*
valueB
 *  @?*
dtype0*
_output_shapes
: 
r
dropout_3_1/cond/dropout/ShapeShapedropout_3_1/cond/mul*
out_type0*
_output_shapes
:*
T0
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
5dropout_3_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_1/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2з§*
T0*
seedБџх)*
dtype0
­
+dropout_3_1/cond/dropout/random_uniform/subSub+dropout_3_1/cond/dropout/random_uniform/max+dropout_3_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_3_1/cond/dropout/random_uniform/mulMul5dropout_3_1/cond/dropout/random_uniform/RandomUniform+dropout_3_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ 
Т
'dropout_3_1/cond/dropout/random_uniformAdd+dropout_3_1/cond/dropout/random_uniform/mul+dropout_3_1/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ *
T0
Њ
dropout_3_1/cond/dropout/addAdd"dropout_3_1/cond/dropout/keep_prob'dropout_3_1/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ *
T0
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
dropout_3_1/cond/Switch_1Switchmax_pooling2d_1_1/transpose_1dropout_3_1/cond/pred_id*0
_class&
$"loc:@max_pooling2d_1_1/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *
T0

dropout_3_1/cond/MergeMergedropout_3_1/cond/Switch_1dropout_3_1/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ : 
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
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:
[
flatten_1_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
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
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*

axis *
_output_shapes
:*
T0*
N

flatten_1_1/ReshapeReshapedropout_3_1/cond/Mergeflatten_1_1/stack*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
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
 *  ?*
dtype0*
_output_shapes
: 
С
dropout_4_1/cond/mul/SwitchSwitchactivation_5_1/Eludropout_4_1/cond/pred_id*
T0*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4_1/cond/mulMuldropout_4_1/cond/mul/Switch:1dropout_4_1/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

"dropout_4_1/cond/dropout/keep_probConst^dropout_4_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *   ?
r
dropout_4_1/cond/dropout/ShapeShapedropout_4_1/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_4_1/cond/dropout/random_uniform/minConst^dropout_4_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

+dropout_4_1/cond/dropout/random_uniform/maxConst^dropout_4_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_4_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_1/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2Ѕк
­
+dropout_4_1/cond/dropout/random_uniform/subSub+dropout_4_1/cond/dropout/random_uniform/max+dropout_4_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Щ
+dropout_4_1/cond/dropout/random_uniform/mulMul5dropout_4_1/cond/dropout/random_uniform/RandomUniform+dropout_4_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_4_1/cond/dropout/random_uniformAdd+dropout_4_1/cond/dropout/random_uniform/mul+dropout_4_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_4_1/cond/dropout/addAdd"dropout_4_1/cond/dropout/keep_prob'dropout_4_1/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_4_1/cond/dropout/FloorFloordropout_4_1/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_4_1/cond/Switch_1Switchactivation_5_1/Eludropout_4_1/cond/pred_id*%
_class
loc:@activation_5_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_4_1/cond/MergeMergedropout_4_1/cond/Switch_1dropout_4_1/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 
 
dense_2_1/MatMulMatMuldropout_4_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_6_1/EluEludense_2_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_5_1/cond/mul/yConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
С
dropout_5_1/cond/mul/SwitchSwitchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu

dropout_5_1/cond/mulMuldropout_5_1/cond/mul/Switch:1dropout_5_1/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ
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
+dropout_5_1/cond/dropout/random_uniform/minConst^dropout_5_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_5_1/cond/dropout/random_uniform/maxConst^dropout_5_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
5dropout_5_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_1/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2юЕ­*
dtype0*
T0*
seedБџх)
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
dropout_5_1/cond/dropout/mulMuldropout_5_1/cond/dropout/divdropout_5_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_5_1/cond/Switch_1Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu

dropout_5_1/cond/MergeMergedropout_5_1/cond/Switch_1dropout_5_1/cond/dropout/mul*
T0*
N**
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
activation_7_1/EluEludense_3_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_6_1/cond/switch_tIdentitydropout_6_1/cond/Switch:1*
_output_shapes
:*
T0

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
dropout_6_1/cond/mul/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0

dropout_6_1/cond/mulMuldropout_6_1/cond/mul/Switch:1dropout_6_1/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ

"dropout_6_1/cond/dropout/keep_probConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
r
dropout_6_1/cond/dropout/ShapeShapedropout_6_1/cond/mul*
T0*
_output_shapes
:*
out_type0

+dropout_6_1/cond/dropout/random_uniform/minConst^dropout_6_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

+dropout_6_1/cond/dropout/random_uniform/maxConst^dropout_6_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?
Х
5dropout_6_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_1/cond/dropout/Shape*(
_output_shapes
:џџџџџџџџџ*
seed2бТј*
T0*
seedБџх)*
dtype0
­
+dropout_6_1/cond/dropout/random_uniform/subSub+dropout_6_1/cond/dropout/random_uniform/max+dropout_6_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_6_1/cond/dropout/random_uniform/mulMul5dropout_6_1/cond/dropout/random_uniform/RandomUniform+dropout_6_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_6_1/cond/dropout/random_uniformAdd+dropout_6_1/cond/dropout/random_uniform/mul+dropout_6_1/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
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
N*
T0

dense_4_1/MatMulMatMuldropout_6_1/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
*
transpose_a( 
e
activation_8_1/SoftmaxSoftmaxdense_4_1/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ

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
shape: *
dtype0*
shared_name 
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
lr/readIdentitylr*
T0*
_output_shapes
: *
_class
	loc:@lr
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
iterations/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
n

iterations
VariableV2*
shape: *
shared_name *
dtype0*
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
activation_8_sample_weightsPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
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
LogLogclip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ

V
mulMulactivation_8_targetLog*
T0*'
_output_shapes
:џџџџџџџџџ

Y
Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
u
Sum_1SummulSum_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
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
MeanMeanNegMean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
]
mul_1MulMeanactivation_8_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
O

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
NotEqualNotEqualactivation_8_sample_weights
NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0
S
CastCastNotEqual*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_1Const*
valueB: *
_output_shapes
:*
dtype0
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
:џџџџџџџџџ*
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
ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_1ArgMaxactivation_8_1/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
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
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
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
Ќ
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
А
Assign_1Assignconv2d_2/kernelPlaceholder_1*
use_locking( *
validate_shape(*
T0*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel
n
Placeholder_2Placeholder*
shape:@@*
dtype0*&
_output_shapes
:@@
А
Assign_2Assignconv2d_3/kernelPlaceholder_2*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:@@
n
Placeholder_3Placeholder*&
_output_shapes
:@ *
dtype0*
shape:@ 
А
Assign_3Assignconv2d_4/kernelPlaceholder_3*&
_output_shapes
:@ *
validate_shape(*"
_class
loc:@conv2d_4/kernel*
T0*
use_locking( 
b
Placeholder_4Placeholder*
dtype0*
shape:
$* 
_output_shapes
:
$
Ј
Assign_4Assigndense_1/kernelPlaceholder_4*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking( 
b
Placeholder_5Placeholder*
dtype0*
shape:
* 
_output_shapes
:

Ј
Assign_5Assigndense_2/kernelPlaceholder_5* 
_output_shapes
:
*
validate_shape(*!
_class
loc:@dense_2/kernel*
T0*
use_locking( 
b
Placeholder_6Placeholder* 
_output_shapes
:
*
dtype0*
shape:

Ј
Assign_6Assigndense_3/kernelPlaceholder_6*!
_class
loc:@dense_3/kernel* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking( 
`
Placeholder_7Placeholder*
_output_shapes
:	
*
shape:	
*
dtype0
Ї
Assign_7Assigndense_4/kernelPlaceholder_7*
_output_shapes
:	
*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking( 
џ
initNoOp^conv2d_1/kernel/Assign^conv2d_2/kernel/Assign^conv2d_3/kernel/Assign^conv2d_4/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign
^lr/Assign^decay/Assign^iterations/Assign
W
lr_1/initial_valueConst*
_output_shapes
: *
dtype0*
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
lr_1/AssignAssignlr_1lr_1/initial_value*
_class
	loc:@lr_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
U
	lr_1/readIdentitylr_1*
T0*
_class
	loc:@lr_1*
_output_shapes
: 
Z
decay_1/initial_valueConst*
_output_shapes
: *
dtype0*
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
use_locking(*
T0*
_class
loc:@decay_1*
validate_shape(*
_output_shapes
: 
^
decay_1/readIdentitydecay_1*
_class
loc:@decay_1*
_output_shapes
: *
T0
_
iterations_1/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
iterations_1
VariableV2*
_output_shapes
: *
	container *
dtype0*
shared_name *
shape: 
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
activation_8_target_1Placeholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0
Y
Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
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
sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
sub_1Subsub_1/xConst_4*
_output_shapes
: *
T0
f
clip_by_value_1/MinimumMinimum	truediv_2sub_1*
T0*'
_output_shapes
:џџџџџџџџџ

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
mul_3Mulactivation_8_target_1Log_1*'
_output_shapes
:џџџџџџџџџ
*
T0
Y
Sum_3/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
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
:џџџџџџџџџ
a
mul_4MulMean_4activation_8_sample_weights_1*
T0*#
_output_shapes
:џџџџџџџџџ
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
mul_5Mulmul_5/xMean_6*
_output_shapes
: *
T0
T
ArgMax_2/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
w
ArgMax_2ArgMaxactivation_8_target_1ArgMax_2/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_3/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
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
Cast_3CastEqual_1*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

Q
Const_7Const*
_output_shapes
:*
dtype0*
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
gradients/ShapeConst*
_output_shapes
: *
dtype0*
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
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class

loc:@mul_5*
T0
r
gradients/mul_5_grad/mulMulgradients/FillMean_6*
T0*
_output_shapes
: *
_class

loc:@mul_5
П
gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_5*
_output_shapes
:
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
gradients/mul_5_grad/mul_1Mulmul_5/xgradients/Fill*
_class

loc:@mul_5*
_output_shapes
: *
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
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
Tshape0*
_class

loc:@mul_5*
_output_shapes
: *
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
gradients/Mean_6_grad/ReshapeReshapegradients/mul_5_grad/Reshape_1#gradients/Mean_6_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_6*
_output_shapes
:

gradients/Mean_6_grad/ShapeShape	truediv_3*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6*
T0
Й
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_6

gradients/Mean_6_grad/Shape_1Shape	truediv_3*
_output_shapes
:*
out_type0*
_class
loc:@Mean_6*
T0
{
gradients/Mean_6_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@Mean_6

gradients/Mean_6_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_6
З
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_6*
_output_shapes
: 

gradients/Mean_6_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_6
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
loc:@Mean_6*
dtype0*
_output_shapes
: 
Ѓ
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
_output_shapes
: *
_class
loc:@Mean_6*
T0
Ё
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
T0*
_class
loc:@Mean_6*
_output_shapes
: 

gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*

SrcT0*
_class
loc:@Mean_6*
_output_shapes
: *

DstT0
Љ
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*
_class
loc:@Mean_6*#
_output_shapes
:џџџџџџџџџ*
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
 gradients/truediv_3_grad/Shape_1Const*
valueB *
_class
loc:@truediv_3*
_output_shapes
: *
dtype0
ф
.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_3

 gradients/truediv_3_grad/RealDivRealDivgradients/Mean_6_grad/truedivMean_5*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3*
T0
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
 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
Tshape0*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
T0
v
gradients/truediv_3_grad/NegNegmul_4*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3

"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegMean_5*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_3
Ѕ
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Mean_5*
_class
loc:@truediv_3*#
_output_shapes
:џџџџџџџџџ*
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
"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
Tshape0*
_class
loc:@truediv_3*
_output_shapes
: 
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
gradients/mul_4_grad/Shape_1Shapeactivation_8_sample_weights_1*
T0*
_output_shapes
:*
out_type0*
_class

loc:@mul_4
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
gradients/mul_4_grad/mul_1MulMean_4 gradients/truediv_3_grad/Reshape*
_class

loc:@mul_4*#
_output_shapes
:џџџџџџџџџ*
T0
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
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class

loc:@mul_4*
T0
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
gradients/Mean_4_grad/modFloorModgradients/Mean_4_grad/addgradients/Mean_4_grad/Size*
T0*
_class
loc:@Mean_4*
_output_shapes
: 

gradients/Mean_4_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/range/deltaConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
Щ
gradients/Mean_4_grad/rangeRange!gradients/Mean_4_grad/range/startgradients/Mean_4_grad/Size!gradients/Mean_4_grad/range/delta*

Tidx0*
_output_shapes
:*
_class
loc:@Mean_4
}
 gradients/Mean_4_grad/Fill/valueConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
Ё
gradients/Mean_4_grad/FillFillgradients/Mean_4_grad/Shape_1 gradients/Mean_4_grad/Fill/value*
_class
loc:@Mean_4*
_output_shapes
: *
T0
ї
#gradients/Mean_4_grad/DynamicStitchDynamicStitchgradients/Mean_4_grad/rangegradients/Mean_4_grad/modgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Fill*
T0*
_class
loc:@Mean_4*
N*#
_output_shapes
:џџџџџџџџџ
|
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_4*
_output_shapes
: *
dtype0
З
gradients/Mean_4_grad/MaximumMaximum#gradients/Mean_4_grad/DynamicStitchgradients/Mean_4_grad/Maximum/y*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4
Џ
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Shapegradients/Mean_4_grad/Maximum*
_class
loc:@Mean_4*#
_output_shapes
:џџџџџџџџџ*
T0
З
gradients/Mean_4_grad/ReshapeReshapegradients/mul_4_grad/Reshape#gradients/Mean_4_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_4*
_output_shapes
:
Б
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/floordiv*

Tmultiples0*
T0*
_class
loc:@Mean_4*
_output_shapes
:
}
gradients/Mean_4_grad/Shape_2ShapeNeg_1*
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:
~
gradients/Mean_4_grad/Shape_3ShapeMean_4*
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:

gradients/Mean_4_grad/ConstConst*
valueB: *
_class
loc:@Mean_4*
_output_shapes
:*
dtype0
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
gradients/Mean_4_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_4
Л
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_3gradients/Mean_4_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: *
_class
loc:@Mean_4
~
!gradients/Mean_4_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_4
Ї
gradients/Mean_4_grad/Maximum_1Maximumgradients/Mean_4_grad/Prod_1!gradients/Mean_4_grad/Maximum_1/y*
T0*
_output_shapes
: *
_class
loc:@Mean_4
Ѕ
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
Љ
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_4

gradients/Neg_1_grad/NegNeggradients/Mean_4_grad/truediv*
T0*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Neg_1
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
gradients/Sum_3_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_3

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*
_class

loc:@Sum_3*
_output_shapes
: 

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
_class

loc:@Sum_3*
_output_shapes
: *
T0
y
gradients/Sum_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
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
loc:@Sum_3*
_output_shapes
: *
dtype0

gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*
_class

loc:@Sum_3*
_output_shapes
: 
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
gradients/Sum_3_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
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
gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
_class

loc:@Sum_3*
_output_shapes
:*
T0
А
gradients/Sum_3_grad/ReshapeReshapegradients/Neg_1_grad/Neg"gradients/Sum_3_grad/DynamicStitch*
Tshape0*
_class

loc:@Sum_3*
_output_shapes
:*
T0
М
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0*
_class

loc:@Sum_3*'
_output_shapes
:џџџџџџџџџ

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
gradients/mul_3_grad/Shape_1ShapeLog_1*
_output_shapes
:*
out_type0*
_class

loc:@mul_3*
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
gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_3*
_output_shapes
:
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
gradients/mul_3_grad/mul_1Mulactivation_8_target_1gradients/Sum_3_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@mul_3
Х
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_3*
_output_shapes
:
Н
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class

loc:@mul_3
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
gradients/Log_1_grad/mulMulgradients/mul_3_grad/Reshape_1gradients/Log_1_grad/Reciprocal*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Log_1

$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
out_type0*"
_class
loc:@clip_by_value_1*
_output_shapes
:*
T0

&gradients/clip_by_value_1_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *"
_class
loc:@clip_by_value_1
Ђ
&gradients/clip_by_value_1_grad/Shape_2Shapegradients/Log_1_grad/mul*
T0*
_output_shapes
:*
out_type0*"
_class
loc:@clip_by_value_1

*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *"
_class
loc:@clip_by_value_1*
_output_shapes
: *
dtype0
ж
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ

Г
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumConst_4*
T0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ

ќ
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*"
_class
loc:@clip_by_value_1*
T0
ђ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqualgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1*
T0
Б
)gradients/clip_by_value_1_grad/LogicalNot
LogicalNot+gradients/clip_by_value_1_grad/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1
ђ
'gradients/clip_by_value_1_grad/Select_1Select)gradients/clip_by_value_1_grad/LogicalNotgradients/Log_1_grad/mul$gradients/clip_by_value_1_grad/zeros*'
_output_shapes
:џџџџџџџџџ
*"
_class
loc:@clip_by_value_1*
T0
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
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
Tshape0*"
_class
loc:@clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
*
T0
№
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*"
_class
loc:@clip_by_value_1
д
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*"
_class
loc:@clip_by_value_1
Ё
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
Р
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape&gradients/clip_by_value_1_grad/Reshape*
_output_shapes
:*
out_type0**
_class 
loc:@clip_by_value_1/Minimum*
T0
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
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ
**
_class 
loc:@clip_by_value_1/Minimum*
T0
­
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2sub_1*
T0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ


<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1**
_class 
loc:@clip_by_value_1/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
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
/gradients/clip_by_value_1/Minimum_grad/Select_1Select1gradients/clip_by_value_1/Minimum_grad/LogicalNot&gradients/clip_by_value_1_grad/Reshape,gradients/clip_by_value_1/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
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
џ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ


,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
є
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@clip_by_value_1/Minimum*
_output_shapes
: 

gradients/truediv_2_grad/ShapeShapeactivation_8_1/Softmax*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:*
T0

 gradients/truediv_2_grad/Shape_1ShapeSum_2*
T0*
out_type0*
_class
loc:@truediv_2*
_output_shapes
:
ф
.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_2*
T0
В
 gradients/truediv_2_grad/RealDivRealDiv.gradients/clip_by_value_1/Minimum_grad/ReshapeSum_2*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2*
T0
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
T0*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ


gradients/truediv_2_grad/NegNegactivation_8_1/Softmax*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ђ
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Ј
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ

Ч
gradients/truediv_2_grad/mulMul.gradients/clip_by_value_1/Minimum_grad/Reshape"gradients/truediv_2_grad/RealDiv_2*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_2
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
"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
Tshape0*
_class
loc:@truediv_2*'
_output_shapes
:џџџџџџџџџ*
T0

gradients/Sum_2_grad/ShapeShapeactivation_8_1/Softmax*
_output_shapes
:*
out_type0*
_class

loc:@Sum_2*
T0
u
gradients/Sum_2_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_2

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*
_class

loc:@Sum_2*
_output_shapes
: 

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
_output_shapes
: *
_class

loc:@Sum_2*
T0
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
 gradients/Sum_2_grad/range/startConst*
dtype0*
_output_shapes
: *
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
Ф
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*
_output_shapes
:*
_class

loc:@Sum_2*

Tidx0
{
gradients/Sum_2_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
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
ё
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
_class

loc:@Sum_2*#
_output_shapes
:џџџџџџџџџ*
T0*
N
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
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*
_class

loc:@Sum_2*#
_output_shapes
:џџџџџџџџџ
Ђ
gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
_class

loc:@Sum_2*
_output_shapes
:*
T0
К
gradients/Sum_2_grad/ReshapeReshape"gradients/truediv_2_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0*
_class

loc:@Sum_2*
_output_shapes
:
М
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Sum_2*
T0*

Tmultiples0
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
)gradients/activation_8_1/Softmax_grad/mulMulgradients/AddNactivation_8_1/Softmax*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ

А
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
-gradients/activation_8_1/Softmax_grad/ReshapeReshape)gradients/activation_8_1/Softmax_grad/Sum3gradients/activation_8_1/Softmax_grad/Reshape/shape*
Tshape0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0
Ь
)gradients/activation_8_1/Softmax_grad/subSubgradients/AddN-gradients/activation_8_1/Softmax_grad/Reshape*
T0*)
_class
loc:@activation_8_1/Softmax*'
_output_shapes
:џџџџџџџџџ

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
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_4_1/MatMul
ь
(gradients/dense_4_1/MatMul_grad/MatMul_1MatMuldropout_6_1/cond/Merge+gradients/activation_8_1/Softmax_grad/mul_1*
transpose_b( *
T0*
_output_shapes
:	
*
transpose_a(*#
_class
loc:@dense_4_1/MatMul
ч
/gradients/dropout_6_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_4_1/MatMul_grad/MatMuldropout_6_1/cond/pred_id*#
_class
loc:@dense_4_1/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0
Ж
gradients/SwitchSwitchactivation_7_1/Eludropout_6_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0

gradients/Shape_1Shapegradients/Switch:1*
T0*
out_type0*%
_class
loc:@activation_7_1/Elu*
_output_shapes
:
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
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
т
2gradients/dropout_6_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_6_1/cond/Merge_grad/cond_gradgradients/zeros*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_7_1/Elu
О
1gradients/dropout_6_1/cond/dropout/mul_grad/ShapeShapedropout_6_1/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
Т
3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1Shapedropout_6_1/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
_output_shapes
:*
T0
А
Agradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/mul_grad/Shape3gradients/dropout_6_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul
э
/gradients/dropout_6_1/cond/dropout/mul_grad/mulMul1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1dropout_6_1/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0

/gradients/dropout_6_1/cond/dropout/mul_grad/SumSum/gradients/dropout_6_1/cond/dropout/mul_grad/mulAgradients/dropout_6_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul

3gradients/dropout_6_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_6_1/cond/dropout/mul_grad/Sum1gradients/dropout_6_1/cond/dropout/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*
T0
э
1gradients/dropout_6_1/cond/dropout/mul_grad/mul_1Muldropout_6_1/cond/dropout/div1gradients/dropout_6_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
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
T0*
out_type0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
_output_shapes
:
Ї
3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_6_1/cond/dropout/div
А
Agradients/dropout_6_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_6_1/cond/dropout/div_grad/Shape3gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
ћ
3gradients/dropout_6_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape"dropout_6_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*
T0
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
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
А
/gradients/dropout_6_1/cond/dropout/div_grad/NegNegdropout_6_1/cond/mul*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
љ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_6_1/cond/dropout/div_grad/Neg"dropout_6_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
џ
5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_1"dropout_6_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_6_1/cond/dropout/div_grad/mulMul3gradients/dropout_6_1/cond/dropout/mul_grad/Reshape5gradients/dropout_6_1/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
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
5gradients/dropout_6_1/cond/dropout/div_grad/Reshape_1Reshape1gradients/dropout_6_1/cond/dropout/div_grad/Sum_13gradients/dropout_6_1/cond/dropout/div_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_6_1/cond/dropout/div
Џ
)gradients/dropout_6_1/cond/mul_grad/ShapeShapedropout_6_1/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_1/cond/mul

+gradients/dropout_6_1/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *'
_class
loc:@dropout_6_1/cond/mul

9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_6_1/cond/mul_grad/Shape+gradients/dropout_6_1/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul
з
'gradients/dropout_6_1/cond/mul_grad/mulMul3gradients/dropout_6_1/cond/dropout/div_grad/Reshapedropout_6_1/cond/mul/y*
T0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
ћ
'gradients/dropout_6_1/cond/mul_grad/SumSum'gradients/dropout_6_1/cond/mul_grad/mul9gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_6_1/cond/mul
є
+gradients/dropout_6_1/cond/mul_grad/ReshapeReshape'gradients/dropout_6_1/cond/mul_grad/Sum)gradients/dropout_6_1/cond/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*(
_output_shapes
:џџџџџџџџџ
р
)gradients/dropout_6_1/cond/mul_grad/mul_1Muldropout_6_1/cond/mul/Switch:13gradients/dropout_6_1/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_1/cond/mul

)gradients/dropout_6_1/cond/mul_grad/Sum_1Sum)gradients/dropout_6_1/cond/mul_grad/mul_1;gradients/dropout_6_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_6_1/cond/mul
ш
-gradients/dropout_6_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_6_1/cond/mul_grad/Sum_1+gradients/dropout_6_1/cond/mul_grad/Shape_1*
Tshape0*'
_class
loc:@dropout_6_1/cond/mul*
_output_shapes
: *
T0
И
gradients/Switch_1Switchactivation_7_1/Eludropout_6_1/cond/pred_id*
T0*%
_class
loc:@activation_7_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
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
loc:@activation_7_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu*
T0
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
N*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_1/Elu
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
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_3_1/MatMul
И
gradients/Switch_2Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*%
_class
loc:@activation_6_1/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients/Shape_3Shapegradients/Switch_2:1*
out_type0*%
_class
loc:@activation_6_1/Elu*
_output_shapes
:*
T0
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
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu
ф
2gradients/dropout_5_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_5_1/cond/Merge_grad/cond_gradgradients/zeros_2*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_1/Elu
О
1gradients/dropout_5_1/cond/dropout/mul_grad/ShapeShapedropout_5_1/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
Т
3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1Shapedropout_5_1/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
_output_shapes
:
А
Agradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/mul_grad/Shape3gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul
э
/gradients/dropout_5_1/cond/dropout/mul_grad/mulMul1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1dropout_5_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_5_1/cond/dropout/mul_grad/SumSum/gradients/dropout_5_1/cond/dropout/mul_grad/mulAgradients/dropout_5_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
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
:џџџџџџџџџ
э
1gradients/dropout_5_1/cond/dropout/mul_grad/mul_1Muldropout_5_1/cond/dropout/div1gradients/dropout_5_1/cond/Merge_grad/cond_grad:1*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*
T0
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
5gradients/dropout_5_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_5_1/cond/dropout/mul_grad/Sum_13gradients/dropout_5_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ж
1gradients/dropout_5_1/cond/dropout/div_grad/ShapeShapedropout_5_1/cond/mul*
out_type0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
_output_shapes
:*
T0
Ї
3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB */
_class%
#!loc:@dropout_5_1/cond/dropout/div
А
Agradients/dropout_5_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_5_1/cond/dropout/div_grad/Shape3gradients/dropout_5_1/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
ћ
3gradients/dropout_5_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape"dropout_5_1/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
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
T0*
Tshape0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
А
/gradients/dropout_5_1/cond/dropout/div_grad/NegNegdropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*
T0
љ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_5_1/cond/dropout/div_grad/Neg"dropout_5_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
џ
5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_1"dropout_5_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_1/cond/dropout/div

/gradients/dropout_5_1/cond/dropout/div_grad/mulMul3gradients/dropout_5_1/cond/dropout/mul_grad/Reshape5gradients/dropout_5_1/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_5_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
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
T0*'
_class
loc:@dropout_5_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
з
'gradients/dropout_5_1/cond/mul_grad/mulMul3gradients/dropout_5_1/cond/dropout/div_grad/Reshapedropout_5_1/cond/mul/y*'
_class
loc:@dropout_5_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ћ
'gradients/dropout_5_1/cond/mul_grad/SumSum'gradients/dropout_5_1/cond/mul_grad/mul9gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_5_1/cond/mul_grad/ReshapeReshape'gradients/dropout_5_1/cond/mul_grad/Sum)gradients/dropout_5_1/cond/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_5_1/cond/mul
р
)gradients/dropout_5_1/cond/mul_grad/mul_1Muldropout_5_1/cond/mul/Switch:13gradients/dropout_5_1/cond/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_5_1/cond/mul*
T0

)gradients/dropout_5_1/cond/mul_grad/Sum_1Sum)gradients/dropout_5_1/cond/mul_grad/mul_1;gradients/dropout_5_1/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_5_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ш
-gradients/dropout_5_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_5_1/cond/mul_grad/Sum_1+gradients/dropout_5_1/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_1/cond/mul*
T0
И
gradients/Switch_3Switchactivation_6_1/Eludropout_5_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu
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
loc:@activation_6_1/Elu*
dtype0*
_output_shapes
: 

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu
т
4gradients/dropout_5_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_5_1/cond/mul_grad/Reshapegradients/zeros_3*
T0*%
_class
loc:@activation_6_1/Elu*
N**
_output_shapes
:џџџџџџџџџ: 
х
gradients/AddN_2AddN2gradients/dropout_5_1/cond/Switch_1_grad/cond_grad4gradients/dropout_5_1/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0*
N
Д
)gradients/activation_6_1/Elu_grad/EluGradEluGradgradients/AddN_2activation_6_1/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_1/Elu*
T0
ю
&gradients/dense_2_1/MatMul_grad/MatMulMatMul)gradients/activation_6_1/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_2_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
ы
(gradients/dense_2_1/MatMul_grad/MatMul_1MatMuldropout_4_1/cond/Merge)gradients/activation_6_1/Elu_grad/EluGrad*
transpose_b( *#
_class
loc:@dense_2_1/MatMul* 
_output_shapes
:
*
transpose_a(*
T0
ч
/gradients/dropout_4_1/cond/Merge_grad/cond_gradSwitch&gradients/dense_2_1/MatMul_grad/MatMuldropout_4_1/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_2_1/MatMul
И
gradients/Switch_4Switchactivation_5_1/Eludropout_4_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
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
gradients/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_1/Elu*
_output_shapes
: *
dtype0

gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*%
_class
loc:@activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ*
T0
ф
2gradients/dropout_4_1/cond/Switch_1_grad/cond_gradMerge/gradients/dropout_4_1/cond/Merge_grad/cond_gradgradients/zeros_4*%
_class
loc:@activation_5_1/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
О
1gradients/dropout_4_1/cond/dropout/mul_grad/ShapeShapedropout_4_1/cond/dropout/div*
out_type0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
_output_shapes
:*
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
Agradients/dropout_4_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/mul_grad/Shape3gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*
T0
э
/gradients/dropout_4_1/cond/dropout/mul_grad/mulMul1gradients/dropout_4_1/cond/Merge_grad/cond_grad:1dropout_4_1/cond/dropout/Floor*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
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
3gradients/dropout_4_1/cond/dropout/mul_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/mul_grad/Sum1gradients/dropout_4_1/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
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
5gradients/dropout_4_1/cond/dropout/mul_grad/Reshape_1Reshape1gradients/dropout_4_1/cond/dropout/mul_grad/Sum_13gradients/dropout_4_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
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
#!loc:@dropout_4_1/cond/dropout/div*
dtype0*
_output_shapes
: 
А
Agradients/dropout_4_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/dropout_4_1/cond/dropout/div_grad/Shape3gradients/dropout_4_1/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*
T0
ћ
3gradients/dropout_4_1/cond/dropout/div_grad/RealDivRealDiv3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape"dropout_4_1/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
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
3gradients/dropout_4_1/cond/dropout/div_grad/ReshapeReshape/gradients/dropout_4_1/cond/dropout/div_grad/Sum1gradients/dropout_4_1/cond/dropout/div_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
А
/gradients/dropout_4_1/cond/dropout/div_grad/NegNegdropout_4_1/cond/mul*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
љ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1RealDiv/gradients/dropout_4_1/cond/dropout/div_grad/Neg"dropout_4_1/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_1/cond/dropout/div
џ
5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2RealDiv5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_1"dropout_4_1/cond/dropout/keep_prob*
T0*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ

/gradients/dropout_4_1/cond/dropout/div_grad/mulMul3gradients/dropout_4_1/cond/dropout/mul_grad/Reshape5gradients/dropout_4_1/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_4_1/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
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
Џ
)gradients/dropout_4_1/cond/mul_grad/ShapeShapedropout_4_1/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_1/cond/mul

+gradients/dropout_4_1/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_1/cond/mul*
dtype0*
_output_shapes
: 

9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/dropout_4_1/cond/mul_grad/Shape+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul
з
'gradients/dropout_4_1/cond/mul_grad/mulMul3gradients/dropout_4_1/cond/dropout/div_grad/Reshapedropout_4_1/cond/mul/y*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ћ
'gradients/dropout_4_1/cond/mul_grad/SumSum'gradients/dropout_4_1/cond/mul_grad/mul9gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
є
+gradients/dropout_4_1/cond/mul_grad/ReshapeReshape'gradients/dropout_4_1/cond/mul_grad/Sum)gradients/dropout_4_1/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_4_1/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
р
)gradients/dropout_4_1/cond/mul_grad/mul_1Muldropout_4_1/cond/mul/Switch:13gradients/dropout_4_1/cond/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_4_1/cond/mul*
T0

)gradients/dropout_4_1/cond/mul_grad/Sum_1Sum)gradients/dropout_4_1/cond/mul_grad/mul_1;gradients/dropout_4_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_4_1/cond/mul*
_output_shapes
:
ш
-gradients/dropout_4_1/cond/mul_grad/Reshape_1Reshape)gradients/dropout_4_1/cond/mul_grad/Sum_1+gradients/dropout_4_1/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_1/cond/mul
И
gradients/Switch_5Switchactivation_5_1/Eludropout_4_1/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
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
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
T0
т
4gradients/dropout_4_1/cond/mul/Switch_grad/cond_gradMerge+gradients/dropout_4_1/cond/mul_grad/Reshapegradients/zeros_5*%
_class
loc:@activation_5_1/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
х
gradients/AddN_3AddN2gradients/dropout_4_1/cond/Switch_1_grad/cond_grad4gradients/dropout_4_1/cond/mul/Switch_grad/cond_grad*(
_output_shapes
:џџџџџџџџџ*
N*%
_class
loc:@activation_5_1/Elu*
T0
Д
)gradients/activation_5_1/Elu_grad/EluGradEluGradgradients/AddN_3activation_5_1/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_1/Elu*
T0
ю
&gradients/dense_1_1/MatMul_grad/MatMulMatMul)gradients/activation_5_1/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ$*
transpose_a( *#
_class
loc:@dense_1_1/MatMul
ш
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
	container *
shape:
$*
dtype0*
shared_name 
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
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
Ѓ
Variable_1/AssignAssign
Variable_1Const_9*
_class
loc:@Variable_1* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
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
_output_shapes
:
*
dtype0


Variable_2
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
Є
Variable_2/AssignAssign
Variable_2Const_10*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(* 
_output_shapes
:

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
_output_shapes
:	
*
dtype0*
valueB	
*    
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
Ѓ
Variable_3/AssignAssign
Variable_3Const_11*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_3*
T0*
use_locking(
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
dtype0* 
_output_shapes
:
$*
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
Variable_4*
_class
loc:@Variable_4* 
_output_shapes
:
$*
T0
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
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Є
Variable_5/AssignAssign
Variable_5Const_13*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_5
q
Variable_5/readIdentity
Variable_5*
T0* 
_output_shapes
:
*
_class
loc:@Variable_5
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
Variable_7*
T0*
_output_shapes
:	
*
_class
loc:@Variable_7
L
mul_6/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
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
addAddmul_6mul_7* 
_output_shapes
:
$*
T0
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
add_1/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
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
mul_8Mul(gradients/dense_1_1/MatMul_grad/MatMul_1Sqrt* 
_output_shapes
:
$*
T0
L
add_2/yConst*
valueB
 *wЬ+2*
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
mul_9Mul	lr_1/read	truediv_4* 
_output_shapes
:
$*
T0
S
sub_2Subdense_1/kernel/readmul_9*
T0* 
_output_shapes
:
$
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
Square_1Square	truediv_4*
T0* 
_output_shapes
:
$
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
add_3Addmul_10mul_11* 
_output_shapes
:
$*
T0

	Assign_10Assign
Variable_4add_3*
_class
loc:@Variable_4* 
_output_shapes
:
$*
T0*
validate_shape(*
use_locking(
M
mul_12/xConst*
valueB
 *33s?*
dtype0*
_output_shapes
: 
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
 *ЭЬL=*
_output_shapes
: *
dtype0
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
add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
Q
add_5AddVariable_5/readadd_5/y*
T0* 
_output_shapes
:

M
Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
M
Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 
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
 *wЬ+2*
dtype0*
_output_shapes
: 
G
add_6Addadd_4add_6/y*
T0* 
_output_shapes
:

M
Const_22Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_23Const*
valueB
 *  *
_output_shapes
: *
dtype0
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
Sqrt_3Sqrtclip_by_value_5*
T0* 
_output_shapes
:

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
Ё
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
Square_3Square	truediv_5*
T0* 
_output_shapes
:

M
mul_17/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
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
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_5
M
mul_18/xConst*
dtype0*
_output_shapes
: *
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
add_9/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
Q
add_9AddVariable_6/readadd_9/y* 
_output_shapes
:
*
T0
M
Const_24Const*
valueB
 *    *
_output_shapes
: *
dtype0
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
add_11Addmul_22mul_23* 
_output_shapes
:
*
T0
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
mul_24/xConst*
_output_shapes
: *
dtype0*
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
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL=
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
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_3*
T0*
use_locking(
M
add_13/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
R
add_13AddVariable_7/readadd_13/y*
_output_shapes
:	
*
T0
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
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
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
Const_31Const*
_output_shapes
: *
dtype0*
valueB
 *  
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
Sqrt_7Sqrtclip_by_value_9*
_output_shapes
:	
*
T0
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
mul_28/xConst*
dtype0*
_output_shapes
: *
valueB
 *33s?
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
mul_29Mulmul_29/xSquare_7*
T0*
_output_shapes
:	

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
init_1NoOp^lr_1/Assign^decay_1/Assign^iterations_1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign
i
activation_1_2/EluEluconv2d_1/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@
r
conv2d_2_2/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_2_2/transpose	Transposeactivation_1_2/Eluconv2d_2_2/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_2_2/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_2_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_2_2/convolutionConv2Dconv2d_2_2/transposeconv2d_2/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
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
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
k
activation_2_2/EluEluconv2d_2_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
dropout_1_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
:
w
dropout_1_2/cond/mul/yConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Я
dropout_1_2/cond/mul/SwitchSwitchactivation_2_2/Eludropout_1_2/cond/pred_id*
T0*%
_class
loc:@activation_2_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1_2/cond/mulMuldropout_1_2/cond/mul/Switch:1dropout_1_2/cond/mul/y*/
_output_shapes
:џџџџџџџџџ@*
T0

"dropout_1_2/cond/dropout/keep_probConst^dropout_1_2/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
r
dropout_1_2/cond/dropout/ShapeShapedropout_1_2/cond/mul*
_output_shapes
:*
out_type0*
T0

+dropout_1_2/cond/dropout/random_uniform/minConst^dropout_1_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_1_2/cond/dropout/random_uniform/maxConst^dropout_1_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ы
5dropout_1_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1_2/cond/dropout/Shape*
dtype0*
seedБџх)*
T0*/
_output_shapes
:џџџџџџџџџ@*
seed2ШѓY
­
+dropout_1_2/cond/dropout/random_uniform/subSub+dropout_1_2/cond/dropout/random_uniform/max+dropout_1_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
а
+dropout_1_2/cond/dropout/random_uniform/mulMul5dropout_1_2/cond/dropout/random_uniform/RandomUniform+dropout_1_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
Т
'dropout_1_2/cond/dropout/random_uniformAdd+dropout_1_2/cond/dropout/random_uniform/mul+dropout_1_2/cond/dropout/random_uniform/min*/
_output_shapes
:џџџџџџџџџ@*
T0
Њ
dropout_1_2/cond/dropout/addAdd"dropout_1_2/cond/dropout/keep_prob'dropout_1_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_2/cond/dropout/FloorFloordropout_1_2/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_1_2/cond/dropout/divRealDivdropout_1_2/cond/mul"dropout_1_2/cond/dropout/keep_prob*/
_output_shapes
:џџџџџџџџџ@*
T0

dropout_1_2/cond/dropout/mulMuldropout_1_2/cond/dropout/divdropout_1_2/cond/dropout/Floor*/
_output_shapes
:џџџџџџџџџ@*
T0
Э
dropout_1_2/cond/Switch_1Switchactivation_2_2/Eludropout_1_2/cond/pred_id*
T0*%
_class
loc:@activation_2_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1_2/cond/MergeMergedropout_1_2/cond/Switch_1dropout_1_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
r
conv2d_3_2/transpose/permConst*%
valueB"             *
_output_shapes
:*
dtype0

conv2d_3_2/transpose	Transposedropout_1_2/cond/Mergeconv2d_3_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ@
u
conv2d_3_2/convolution/ShapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
u
$conv2d_3_2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
о
conv2d_3_2/convolutionConv2Dconv2d_3_2/transposeconv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
t
conv2d_3_2/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             

conv2d_3_2/transpose_1	Transposeconv2d_3_2/convolutionconv2d_3_2/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
k
activation_3_2/EluEluconv2d_3_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_2_2/cond/switch_tIdentitydropout_2_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_2_2/cond/switch_fIdentitydropout_2_2/cond/Switch*
_output_shapes
:*
T0

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
Я
dropout_2_2/cond/mul/SwitchSwitchactivation_3_2/Eludropout_2_2/cond/pred_id*
T0*%
_class
loc:@activation_3_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2_2/cond/mulMuldropout_2_2/cond/mul/Switch:1dropout_2_2/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ@

"dropout_2_2/cond/dropout/keep_probConst^dropout_2_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  @?
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
+dropout_2_2/cond/dropout/random_uniform/maxConst^dropout_2_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ь
5dropout_2_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ@*
seed2ејз*
dtype0*
T0*
seedБџх)
­
+dropout_2_2/cond/dropout/random_uniform/subSub+dropout_2_2/cond/dropout/random_uniform/max+dropout_2_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_2_2/cond/dropout/random_uniform/mulMul5dropout_2_2/cond/dropout/random_uniform/RandomUniform+dropout_2_2/cond/dropout/random_uniform/sub*/
_output_shapes
:џџџџџџџџџ@*
T0
Т
'dropout_2_2/cond/dropout/random_uniformAdd+dropout_2_2/cond/dropout/random_uniform/mul+dropout_2_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ@
Њ
dropout_2_2/cond/dropout/addAdd"dropout_2_2/cond/dropout/keep_prob'dropout_2_2/cond/dropout/random_uniform*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_2/cond/dropout/FloorFloordropout_2_2/cond/dropout/add*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_2/cond/dropout/divRealDivdropout_2_2/cond/mul"dropout_2_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ@

dropout_2_2/cond/dropout/mulMuldropout_2_2/cond/dropout/divdropout_2_2/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ@
Э
dropout_2_2/cond/Switch_1Switchactivation_3_2/Eludropout_2_2/cond/pred_id*
T0*%
_class
loc:@activation_3_2/Elu*J
_output_shapes8
6:џџџџџџџџџ@:џџџџџџџџџ@

dropout_2_2/cond/MergeMergedropout_2_2/cond/Switch_1dropout_2_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ@: 
r
conv2d_4_2/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_2/transpose	Transposedropout_2_2/cond/Mergeconv2d_4_2/transpose/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ@*
T0
u
conv2d_4_2/convolution/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @       
u
$conv2d_4_2/convolution/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
о
conv2d_4_2/convolutionConv2Dconv2d_4_2/transposeconv2d_4/kernel/read*
use_cudnn_on_gpu(*
T0*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
data_formatNHWC*
strides

t
conv2d_4_2/transpose_1/permConst*
dtype0*
_output_shapes
:*%
valueB"             

conv2d_4_2/transpose_1	Transposeconv2d_4_2/convolutionconv2d_4_2/transpose_1/perm*
Tperm0*/
_output_shapes
:џџџџџџџџџ *
T0
k
activation_4_2/EluEluconv2d_4_2/transpose_1*
T0*/
_output_shapes
:џџџџџџџџџ 
y
 max_pooling2d_1_2/transpose/permConst*
dtype0*
_output_shapes
:*%
valueB"             
Ѕ
max_pooling2d_1_2/transpose	Transposeactivation_4_2/Elu max_pooling2d_1_2/transpose/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
Ю
max_pooling2d_1_2/MaxPoolMaxPoolmax_pooling2d_1_2/transpose*
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
"max_pooling2d_1_2/transpose_1/permConst*%
valueB"             *
_output_shapes
:*
dtype0
А
max_pooling2d_1_2/transpose_1	Transposemax_pooling2d_1_2/MaxPool"max_pooling2d_1_2/transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:џџџџџџџџџ 
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
х
dropout_3_2/cond/mul/SwitchSwitchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*
T0*0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ 

dropout_3_2/cond/mulMuldropout_3_2/cond/mul/Switch:1dropout_3_2/cond/mul/y*
T0*/
_output_shapes
:џџџџџџџџџ 

"dropout_3_2/cond/dropout/keep_probConst^dropout_3_2/cond/switch_t*
valueB
 *  @?*
_output_shapes
: *
dtype0
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
+dropout_3_2/cond/dropout/random_uniform/maxConst^dropout_3_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ь
5dropout_3_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3_2/cond/dropout/Shape*/
_output_shapes
:џџџџџџџџџ *
seed2јРЧ*
T0*
seedБџх)*
dtype0
­
+dropout_3_2/cond/dropout/random_uniform/subSub+dropout_3_2/cond/dropout/random_uniform/max+dropout_3_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
а
+dropout_3_2/cond/dropout/random_uniform/mulMul5dropout_3_2/cond/dropout/random_uniform/RandomUniform+dropout_3_2/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:џџџџџџџџџ 
Т
'dropout_3_2/cond/dropout/random_uniformAdd+dropout_3_2/cond/dropout/random_uniform/mul+dropout_3_2/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:џџџџџџџџџ 
Њ
dropout_3_2/cond/dropout/addAdd"dropout_3_2/cond/dropout/keep_prob'dropout_3_2/cond/dropout/random_uniform*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_2/cond/dropout/FloorFloordropout_3_2/cond/dropout/add*/
_output_shapes
:џџџџџџџџџ *
T0

dropout_3_2/cond/dropout/divRealDivdropout_3_2/cond/mul"dropout_3_2/cond/dropout/keep_prob*
T0*/
_output_shapes
:џџџџџџџџџ 

dropout_3_2/cond/dropout/mulMuldropout_3_2/cond/dropout/divdropout_3_2/cond/dropout/Floor*
T0*/
_output_shapes
:џџџџџџџџџ 
у
dropout_3_2/cond/Switch_1Switchmax_pooling2d_1_2/transpose_1dropout_3_2/cond/pred_id*J
_output_shapes8
6:џџџџџџџџџ :џџџџџџџџџ *0
_class&
$"loc:@max_pooling2d_1_2/transpose_1*
T0

dropout_3_2/cond/MergeMergedropout_3_2/cond/Switch_1dropout_3_2/cond/dropout/mul*
N*
T0*1
_output_shapes
:џџџџџџџџџ : 
g
flatten_1_2/ShapeShapedropout_3_2/cond/Merge*
T0*
out_type0*
_output_shapes
:
i
flatten_1_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
k
!flatten_1_2/strided_slice/stack_1Const*
valueB: *
_output_shapes
:*
dtype0
k
!flatten_1_2/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Й
flatten_1_2/strided_sliceStridedSliceflatten_1_2/Shapeflatten_1_2/strided_slice/stack!flatten_1_2/strided_slice/stack_1!flatten_1_2/strided_slice/stack_2*
shrink_axis_mask *
_output_shapes
:*
Index0*
T0*
end_mask*
new_axis_mask *

begin_mask *
ellipsis_mask 
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
џџџџџџџџџ*
dtype0*
_output_shapes
: 
z
flatten_1_2/stackPackflatten_1_2/stack/0flatten_1_2/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1_2/ReshapeReshapedropout_3_2/cond/Mergeflatten_1_2/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0

dense_1_2/MatMulMatMulflatten_1_2/Reshapedense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_5_2/EluEludense_1_2/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes

::
c
dropout_4_2/cond/switch_tIdentitydropout_4_2/cond/Switch:1*
_output_shapes
:*
T0

a
dropout_4_2/cond/switch_fIdentitydropout_4_2/cond/Switch*
_output_shapes
:*
T0

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
С
dropout_4_2/cond/mul/SwitchSwitchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu

dropout_4_2/cond/mulMuldropout_4_2/cond/mul/Switch:1dropout_4_2/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
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
 *    *
dtype0*
_output_shapes
: 

+dropout_4_2/cond/dropout/random_uniform/maxConst^dropout_4_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
5dropout_4_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2ыЫ
­
+dropout_4_2/cond/dropout/random_uniform/subSub+dropout_4_2/cond/dropout/random_uniform/max+dropout_4_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_4_2/cond/dropout/random_uniform/mulMul5dropout_4_2/cond/dropout/random_uniform/RandomUniform+dropout_4_2/cond/dropout/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0
Л
'dropout_4_2/cond/dropout/random_uniformAdd+dropout_4_2/cond/dropout/random_uniform/mul+dropout_4_2/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_4_2/cond/dropout/addAdd"dropout_4_2/cond/dropout/keep_prob'dropout_4_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_4_2/cond/dropout/FloorFloordropout_4_2/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_4_2/cond/dropout/divRealDivdropout_4_2/cond/mul"dropout_4_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_4_2/cond/dropout/mulMuldropout_4_2/cond/dropout/divdropout_4_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_4_2/cond/Switch_1Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_4_2/cond/MergeMergedropout_4_2/cond/Switch_1dropout_4_2/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
T0*
N
 
dense_2_2/MatMulMatMuldropout_4_2/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
^
activation_6_2/EluEludense_2_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_5_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes

::*
T0

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
dropout_5_2/cond/mul/yConst^dropout_5_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
С
dropout_5_2/cond/mul/SwitchSwitchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu*
T0

dropout_5_2/cond/mulMuldropout_5_2/cond/mul/Switch:1dropout_5_2/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*
T0
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
+dropout_5_2/cond/dropout/random_uniform/minConst^dropout_5_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    

+dropout_5_2/cond/dropout/random_uniform/maxConst^dropout_5_2/cond/switch_t*
valueB
 *  ?*
_output_shapes
: *
dtype0
Х
5dropout_5_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2Ј
­
+dropout_5_2/cond/dropout/random_uniform/subSub+dropout_5_2/cond/dropout/random_uniform/max+dropout_5_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_5_2/cond/dropout/random_uniform/mulMul5dropout_5_2/cond/dropout/random_uniform/RandomUniform+dropout_5_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_5_2/cond/dropout/random_uniformAdd+dropout_5_2/cond/dropout/random_uniform/mul+dropout_5_2/cond/dropout/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
dropout_5_2/cond/dropout/addAdd"dropout_5_2/cond/dropout/keep_prob'dropout_5_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_5_2/cond/dropout/FloorFloordropout_5_2/cond/dropout/add*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_2/cond/dropout/divRealDivdropout_5_2/cond/mul"dropout_5_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_5_2/cond/dropout/mulMuldropout_5_2/cond/dropout/divdropout_5_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ
П
dropout_5_2/cond/Switch_1Switchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu*
T0

dropout_5_2/cond/MergeMergedropout_5_2/cond/Switch_1dropout_5_2/cond/dropout/mul**
_output_shapes
:џџџџџџџџџ: *
N*
T0
 
dense_3_2/MatMulMatMuldropout_5_2/cond/Mergedense_3/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
^
activation_7_2/EluEludense_3_2/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
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
dropout_6_2/cond/mul/yConst^dropout_6_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
С
dropout_6_2/cond/mul/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0

dropout_6_2/cond/mulMuldropout_6_2/cond/mul/Switch:1dropout_6_2/cond/mul/y*
T0*(
_output_shapes
:џџџџџџџџџ
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
+dropout_6_2/cond/dropout/random_uniform/maxConst^dropout_6_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
5dropout_6_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6_2/cond/dropout/Shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2ф 
­
+dropout_6_2/cond/dropout/random_uniform/subSub+dropout_6_2/cond/dropout/random_uniform/max+dropout_6_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Щ
+dropout_6_2/cond/dropout/random_uniform/mulMul5dropout_6_2/cond/dropout/random_uniform/RandomUniform+dropout_6_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Л
'dropout_6_2/cond/dropout/random_uniformAdd+dropout_6_2/cond/dropout/random_uniform/mul+dropout_6_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
dropout_6_2/cond/dropout/addAdd"dropout_6_2/cond/dropout/keep_prob'dropout_6_2/cond/dropout/random_uniform*(
_output_shapes
:џџџџџџџџџ*
T0
x
dropout_6_2/cond/dropout/FloorFloordropout_6_2/cond/dropout/add*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_6_2/cond/dropout/divRealDivdropout_6_2/cond/mul"dropout_6_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_6_2/cond/dropout/mulMuldropout_6_2/cond/dropout/divdropout_6_2/cond/dropout/Floor*(
_output_shapes
:џџџџџџџџџ*
T0
П
dropout_6_2/cond/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*
T0*%
_class
loc:@activation_7_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout_6_2/cond/MergeMergedropout_6_2/cond/Switch_1dropout_6_2/cond/dropout/mul*
N*
T0**
_output_shapes
:џџџџџџџџџ: 

dense_4_2/MatMulMatMuldropout_6_2/cond/Mergedense_4/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
*
transpose_a( *
T0
e
activation_8_2/SoftmaxSoftmaxdense_4_2/MatMul*'
_output_shapes
:џџџџџџџџџ
*
T0
W
lr_2/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
h
lr_2
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
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
decay_2/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
iterations_2/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
iterations_2
VariableV2*
shared_name *
dtype0*
shape: *
_output_shapes
: *
	container 
В
iterations_2/AssignAssigniterations_2iterations_2/initial_value*
_class
loc:@iterations_2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
m
iterations_2/readIdentityiterations_2*
T0*
_output_shapes
: *
_class
loc:@iterations_2
x
activation_8_sample_weights_2Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0

activation_8_target_2Placeholder*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Y
Sum_4/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

Sum_4Sumactivation_8_2/SoftmaxSum_4/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
e
	truediv_8RealDivactivation_8_2/SoftmaxSum_4*
T0*'
_output_shapes
:џџџџџџџџџ

M
Const_32Const*
valueB
 *Пж3*
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
sub_6Subsub_6/xConst_32*
T0*
_output_shapes
: 
g
clip_by_value_10/MinimumMinimum	truediv_8sub_6*
T0*'
_output_shapes
:џџџџџџџџџ

q
clip_by_value_10Maximumclip_by_value_10/MinimumConst_32*'
_output_shapes
:џџџџџџџџџ
*
T0
P
Log_2Logclip_by_value_10*'
_output_shapes
:џџџџџџџџџ
*
T0
]
mul_30Mulactivation_8_target_2Log_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Y
Sum_5/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
x
Sum_5Summul_30Sum_5/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0*
	keep_dims( 
A
Neg_2NegSum_5*#
_output_shapes
:џџџџџџџџџ*
T0
[
Mean_8/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
z
Mean_8MeanNeg_2Mean_8/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:џџџџџџџџџ
b
mul_31MulMean_8activation_8_sample_weights_2*#
_output_shapes
:џџџџџџџџџ*
T0
Q
NotEqual_2/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q

NotEqual_2NotEqualactivation_8_sample_weights_2NotEqual_2/y*#
_output_shapes
:џџџџџџџџџ*
T0
W
Cast_4Cast
NotEqual_2*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0
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
	truediv_9RealDivmul_31Mean_9*
T0*#
_output_shapes
:џџџџџџџџџ
R
Const_34Const*
_output_shapes
:*
dtype0*
valueB: 
b
Mean_10Mean	truediv_9Const_34*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_32/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
A
mul_32Mulmul_32/xMean_10*
_output_shapes
: *
T0
T
ArgMax_4/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMax_4ArgMaxactivation_8_target_2ArgMax_4/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
T
ArgMax_5/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMax_5ArgMaxactivation_8_2/SoftmaxArgMax_5/dimension*#
_output_shapes
:џџџџџџџџџ*
T0*

Tidx0
R
Equal_2EqualArgMax_4ArgMax_5*#
_output_shapes
:џџџџџџџџџ*
T0	
T
Cast_5CastEqual_2*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

R
Const_35Const*
_output_shapes
:*
dtype0*
valueB: 
_
Mean_11MeanCast_5Const_35*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
C
init_2NoOp^lr_2/Assign^decay_2/Assign^iterations_2/Assign
'
group_deps_2NoOp^mul_32^Mean_11
o
gradients_1/ShapeConst*
valueB *
_class
loc:@mul_32*
dtype0*
_output_shapes
: 
q
gradients_1/ConstConst*
valueB
 *  ?*
_class
loc:@mul_32*
dtype0*
_output_shapes
: 
z
gradients_1/FillFillgradients_1/Shapegradients_1/Const*
_class
loc:@mul_32*
_output_shapes
: *
T0
{
gradients_1/mul_32_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@mul_32
}
gradients_1/mul_32_grad/Shape_1Const*
valueB *
_class
loc:@mul_32*
dtype0*
_output_shapes
: 
о
-gradients_1/mul_32_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_32_grad/Shapegradients_1/mul_32_grad/Shape_1*
T0*
_class
loc:@mul_32*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
y
gradients_1/mul_32_grad/mulMulgradients_1/FillMean_10*
_class
loc:@mul_32*
_output_shapes
: *
T0
Щ
gradients_1/mul_32_grad/SumSumgradients_1/mul_32_grad/mul-gradients_1/mul_32_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_32
А
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
Я
gradients_1/mul_32_grad/Sum_1Sumgradients_1/mul_32_grad/mul_1/gradients_1/mul_32_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@mul_32*
_output_shapes
:
Ж
!gradients_1/mul_32_grad/Reshape_1Reshapegradients_1/mul_32_grad/Sum_1gradients_1/mul_32_grad/Shape_1*
Tshape0*
_class
loc:@mul_32*
_output_shapes
: *
T0

&gradients_1/Mean_10_grad/Reshape/shapeConst*
valueB:*
_class
loc:@Mean_10*
_output_shapes
:*
dtype0
Х
 gradients_1/Mean_10_grad/ReshapeReshape!gradients_1/mul_32_grad/Reshape_1&gradients_1/Mean_10_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
_class
loc:@Mean_10*
T0

gradients_1/Mean_10_grad/ShapeShape	truediv_9*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_10
У
gradients_1/Mean_10_grad/TileTile gradients_1/Mean_10_grad/Reshapegradients_1/Mean_10_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_10*#
_output_shapes
:џџџџџџџџџ
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
gradients_1/Mean_10_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_10
С
gradients_1/Mean_10_grad/ProdProd gradients_1/Mean_10_grad/Shape_1gradients_1/Mean_10_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_10*
_output_shapes
: 

 gradients_1/Mean_10_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *
_class
loc:@Mean_10
Х
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
T0*
_output_shapes
: *
_class
loc:@Mean_10
Ћ
!gradients_1/Mean_10_grad/floordivFloorDivgradients_1/Mean_10_grad/Prod gradients_1/Mean_10_grad/Maximum*
_class
loc:@Mean_10*
_output_shapes
: *
T0

gradients_1/Mean_10_grad/CastCast!gradients_1/Mean_10_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0*
_class
loc:@Mean_10
Г
 gradients_1/Mean_10_grad/truedivRealDivgradients_1/Mean_10_grad/Tilegradients_1/Mean_10_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@Mean_10

 gradients_1/truediv_9_grad/ShapeShapemul_31*
_output_shapes
:*
out_type0*
_class
loc:@truediv_9*
T0

"gradients_1/truediv_9_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *
_class
loc:@truediv_9
ъ
0gradients_1/truediv_9_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_9_grad/Shape"gradients_1/truediv_9_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_9*
T0
Ѓ
"gradients_1/truediv_9_grad/RealDivRealDiv gradients_1/Mean_10_grad/truedivMean_9*
T0*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ
й
gradients_1/truediv_9_grad/SumSum"gradients_1/truediv_9_grad/RealDiv0gradients_1/truediv_9_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_9*
_output_shapes
:
Щ
"gradients_1/truediv_9_grad/ReshapeReshapegradients_1/truediv_9_grad/Sum gradients_1/truediv_9_grad/Shape*
T0*
Tshape0*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ
y
gradients_1/truediv_9_grad/NegNegmul_31*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9
Ѓ
$gradients_1/truediv_9_grad/RealDiv_1RealDivgradients_1/truediv_9_grad/NegMean_9*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9*
T0
Љ
$gradients_1/truediv_9_grad/RealDiv_2RealDiv$gradients_1/truediv_9_grad/RealDiv_1Mean_9*
T0*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@truediv_9
Й
gradients_1/truediv_9_grad/mulMul gradients_1/Mean_10_grad/truediv$gradients_1/truediv_9_grad/RealDiv_2*
_class
loc:@truediv_9*#
_output_shapes
:џџџџџџџџџ*
T0
й
 gradients_1/truediv_9_grad/Sum_1Sumgradients_1/truediv_9_grad/mul2gradients_1/truediv_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_9*
_output_shapes
:
Т
$gradients_1/truediv_9_grad/Reshape_1Reshape gradients_1/truediv_9_grad/Sum_1"gradients_1/truediv_9_grad/Shape_1*
_output_shapes
: *
Tshape0*
_class
loc:@truediv_9*
T0
~
gradients_1/mul_31_grad/ShapeShapeMean_8*
T0*
out_type0*
_class
loc:@mul_31*
_output_shapes
:

gradients_1/mul_31_grad/Shape_1Shapeactivation_8_sample_weights_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@mul_31
о
-gradients_1/mul_31_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_31_grad/Shapegradients_1/mul_31_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@mul_31
Ў
gradients_1/mul_31_grad/mulMul"gradients_1/truediv_9_grad/Reshapeactivation_8_sample_weights_2*
_class
loc:@mul_31*#
_output_shapes
:џџџџџџџџџ*
T0
Щ
gradients_1/mul_31_grad/SumSumgradients_1/mul_31_grad/mul-gradients_1/mul_31_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*
_class
loc:@mul_31
Н
gradients_1/mul_31_grad/ReshapeReshapegradients_1/mul_31_grad/Sumgradients_1/mul_31_grad/Shape*
T0*
Tshape0*
_class
loc:@mul_31*#
_output_shapes
:џџџџџџџџџ

gradients_1/mul_31_grad/mul_1MulMean_8"gradients_1/truediv_9_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
_class
loc:@mul_31*
T0
Я
gradients_1/mul_31_grad/Sum_1Sumgradients_1/mul_31_grad/mul_1/gradients_1/mul_31_grad/BroadcastGradientArgs:1*
_class
loc:@mul_31*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
У
!gradients_1/mul_31_grad/Reshape_1Reshapegradients_1/mul_31_grad/Sum_1gradients_1/mul_31_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
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
gradients_1/Mean_8_grad/modFloorModgradients_1/Mean_8_grad/addgradients_1/Mean_8_grad/Size*
T0*
_class
loc:@Mean_8*
_output_shapes
: 

gradients_1/Mean_8_grad/Shape_1Const*
valueB: *
_class
loc:@Mean_8*
dtype0*
_output_shapes
:

#gradients_1/Mean_8_grad/range/startConst*
value	B : *
_class
loc:@Mean_8*
_output_shapes
: *
dtype0

#gradients_1/Mean_8_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class
loc:@Mean_8
б
gradients_1/Mean_8_grad/rangeRange#gradients_1/Mean_8_grad/range/startgradients_1/Mean_8_grad/Size#gradients_1/Mean_8_grad/range/delta*

Tidx0*
_class
loc:@Mean_8*
_output_shapes
:

"gradients_1/Mean_8_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*
_class
loc:@Mean_8
Ї
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
:џџџџџџџџџ*
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
Н
gradients_1/Mean_8_grad/MaximumMaximum%gradients_1/Mean_8_grad/DynamicStitch!gradients_1/Mean_8_grad/Maximum/y*
T0*
_class
loc:@Mean_8*#
_output_shapes
:џџџџџџџџџ
Е
 gradients_1/Mean_8_grad/floordivFloorDivgradients_1/Mean_8_grad/Shapegradients_1/Mean_8_grad/Maximum*
_class
loc:@Mean_8*#
_output_shapes
:џџџџџџџџџ*
T0
О
gradients_1/Mean_8_grad/ReshapeReshapegradients_1/mul_31_grad/Reshape%gradients_1/Mean_8_grad/DynamicStitch*
T0*
Tshape0*
_class
loc:@Mean_8*
_output_shapes
:
З
gradients_1/Mean_8_grad/TileTilegradients_1/Mean_8_grad/Reshape gradients_1/Mean_8_grad/floordiv*
_output_shapes
:*
_class
loc:@Mean_8*
T0*

Tmultiples0

gradients_1/Mean_8_grad/Shape_2ShapeNeg_2*
T0*
_output_shapes
:*
out_type0*
_class
loc:@Mean_8
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
Н
gradients_1/Mean_8_grad/ProdProdgradients_1/Mean_8_grad/Shape_2gradients_1/Mean_8_grad/Const*
_class
loc:@Mean_8*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

gradients_1/Mean_8_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *
_class
loc:@Mean_8
С
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
Ћ
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
Џ
gradients_1/Mean_8_grad/truedivRealDivgradients_1/Mean_8_grad/Tilegradients_1/Mean_8_grad/Cast*
_class
loc:@Mean_8*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/Neg_2_grad/NegNeggradients_1/Mean_8_grad/truediv*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Neg_2*
T0
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
"gradients_1/Sum_5_grad/range/startConst*
dtype0*
_output_shapes
: *
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
Ь
gradients_1/Sum_5_grad/rangeRange"gradients_1/Sum_5_grad/range/startgradients_1/Sum_5_grad/Size"gradients_1/Sum_5_grad/range/delta*

Tidx0*
_output_shapes
:*
_class

loc:@Sum_5
}
!gradients_1/Sum_5_grad/Fill/valueConst*
value	B :*
_class

loc:@Sum_5*
dtype0*
_output_shapes
: 
Ё
gradients_1/Sum_5_grad/FillFillgradients_1/Sum_5_grad/Shape_1!gradients_1/Sum_5_grad/Fill/value*
T0*
_class

loc:@Sum_5*
_output_shapes
: 
ћ
$gradients_1/Sum_5_grad/DynamicStitchDynamicStitchgradients_1/Sum_5_grad/rangegradients_1/Sum_5_grad/modgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Fill*
N*
T0*#
_output_shapes
:џџџџџџџџџ*
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
Й
gradients_1/Sum_5_grad/MaximumMaximum$gradients_1/Sum_5_grad/DynamicStitch gradients_1/Sum_5_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_5*
T0
Ј
gradients_1/Sum_5_grad/floordivFloorDivgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Maximum*
_class

loc:@Sum_5*
_output_shapes
:*
T0
Ж
gradients_1/Sum_5_grad/ReshapeReshapegradients_1/Neg_2_grad/Neg$gradients_1/Sum_5_grad/DynamicStitch*
T0*
Tshape0*
_class

loc:@Sum_5*
_output_shapes
:
Т
gradients_1/Sum_5_grad/TileTilegradients_1/Sum_5_grad/Reshapegradients_1/Sum_5_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Sum_5*
T0*

Tmultiples0

gradients_1/mul_30_grad/ShapeShapeactivation_8_target_2*
_output_shapes
:*
out_type0*
_class
loc:@mul_30*
T0

gradients_1/mul_30_grad/Shape_1ShapeLog_2*
out_type0*
_class
loc:@mul_30*
_output_shapes
:*
T0
о
-gradients_1/mul_30_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_30_grad/Shapegradients_1/mul_30_grad/Shape_1*
_class
loc:@mul_30*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients_1/mul_30_grad/mulMulgradients_1/Sum_5_grad/TileLog_2*
_class
loc:@mul_30*'
_output_shapes
:џџџџџџџџџ
*
T0
Щ
gradients_1/mul_30_grad/SumSumgradients_1/mul_30_grad/mul-gradients_1/mul_30_grad/BroadcastGradientArgs*
_class
loc:@mul_30*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ъ
gradients_1/mul_30_grad/ReshapeReshapegradients_1/mul_30_grad/Sumgradients_1/mul_30_grad/Shape*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
_class
loc:@mul_30
Ѕ
gradients_1/mul_30_grad/mul_1Mulactivation_8_target_2gradients_1/Sum_5_grad/Tile*
_class
loc:@mul_30*'
_output_shapes
:џџџџџџџџџ
*
T0
Я
gradients_1/mul_30_grad/Sum_1Sumgradients_1/mul_30_grad/mul_1/gradients_1/mul_30_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@mul_30*
T0*
	keep_dims( *

Tidx0
Ч
!gradients_1/mul_30_grad/Reshape_1Reshapegradients_1/mul_30_grad/Sum_1gradients_1/mul_30_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@mul_30
Б
!gradients_1/Log_2_grad/Reciprocal
Reciprocalclip_by_value_10"^gradients_1/mul_30_grad/Reshape_1*
_class

loc:@Log_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Г
gradients_1/Log_2_grad/mulMul!gradients_1/mul_30_grad/Reshape_1!gradients_1/Log_2_grad/Reciprocal*
_class

loc:@Log_2*'
_output_shapes
:џџџџџџџџџ
*
T0
Є
'gradients_1/clip_by_value_10_grad/ShapeShapeclip_by_value_10/Minimum*
T0*
out_type0*#
_class
loc:@clip_by_value_10*
_output_shapes
:

)gradients_1/clip_by_value_10_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB *#
_class
loc:@clip_by_value_10
Ј
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
loc:@clip_by_value_10*
dtype0*
_output_shapes
: 
р
'gradients_1/clip_by_value_10_grad/zerosFill)gradients_1/clip_by_value_10_grad/Shape_2-gradients_1/clip_by_value_10_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10
Й
.gradients_1/clip_by_value_10_grad/GreaterEqualGreaterEqualclip_by_value_10/MinimumConst_32*
T0*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10

7gradients_1/clip_by_value_10_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients_1/clip_by_value_10_grad/Shape)gradients_1/clip_by_value_10_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@clip_by_value_10
ў
(gradients_1/clip_by_value_10_grad/SelectSelect.gradients_1/clip_by_value_10_grad/GreaterEqualgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*
T0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:џџџџџџџџџ

И
,gradients_1/clip_by_value_10_grad/LogicalNot
LogicalNot.gradients_1/clip_by_value_10_grad/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
*#
_class
loc:@clip_by_value_10
ў
*gradients_1/clip_by_value_10_grad/Select_1Select,gradients_1/clip_by_value_10_grad/LogicalNotgradients_1/Log_2_grad/mul'gradients_1/clip_by_value_10_grad/zeros*
T0*#
_class
loc:@clip_by_value_10*'
_output_shapes
:џџџџџџџџџ

є
%gradients_1/clip_by_value_10_grad/SumSum(gradients_1/clip_by_value_10_grad/Select7gradients_1/clip_by_value_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*#
_class
loc:@clip_by_value_10
щ
)gradients_1/clip_by_value_10_grad/ReshapeReshape%gradients_1/clip_by_value_10_grad/Sum'gradients_1/clip_by_value_10_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*#
_class
loc:@clip_by_value_10*
T0
њ
'gradients_1/clip_by_value_10_grad/Sum_1Sum*gradients_1/clip_by_value_10_grad/Select_19gradients_1/clip_by_value_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*#
_class
loc:@clip_by_value_10
о
+gradients_1/clip_by_value_10_grad/Reshape_1Reshape'gradients_1/clip_by_value_10_grad/Sum_1)gradients_1/clip_by_value_10_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*#
_class
loc:@clip_by_value_10
Ѕ
/gradients_1/clip_by_value_10/Minimum_grad/ShapeShape	truediv_8*
T0*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:
Ё
1gradients_1/clip_by_value_10/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *+
_class!
loc:@clip_by_value_10/Minimum
Ч
1gradients_1/clip_by_value_10/Minimum_grad/Shape_2Shape)gradients_1/clip_by_value_10_grad/Reshape*
T0*
out_type0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:
Ї
5gradients_1/clip_by_value_10/Minimum_grad/zeros/ConstConst*
valueB
 *    *+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
: *
dtype0

/gradients_1/clip_by_value_10/Minimum_grad/zerosFill1gradients_1/clip_by_value_10/Minimum_grad/Shape_25gradients_1/clip_by_value_10/Minimum_grad/zeros/Const*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
Б
3gradients_1/clip_by_value_10/Minimum_grad/LessEqual	LessEqual	truediv_8sub_6*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
І
?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients_1/clip_by_value_10/Minimum_grad/Shape1gradients_1/clip_by_value_10/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*+
_class!
loc:@clip_by_value_10/Minimum*
T0
Њ
0gradients_1/clip_by_value_10/Minimum_grad/SelectSelect3gradients_1/clip_by_value_10/Minimum_grad/LessEqual)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
Э
4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot
LogicalNot3gradients_1/clip_by_value_10/Minimum_grad/LessEqual*'
_output_shapes
:џџџџџџџџџ
*+
_class!
loc:@clip_by_value_10/Minimum
­
2gradients_1/clip_by_value_10/Minimum_grad/Select_1Select4gradients_1/clip_by_value_10/Minimum_grad/LogicalNot)gradients_1/clip_by_value_10_grad/Reshape/gradients_1/clip_by_value_10/Minimum_grad/zeros*
T0*+
_class!
loc:@clip_by_value_10/Minimum*'
_output_shapes
:џџџџџџџџџ


-gradients_1/clip_by_value_10/Minimum_grad/SumSum0gradients_1/clip_by_value_10/Minimum_grad/Select?gradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:

1gradients_1/clip_by_value_10/Minimum_grad/ReshapeReshape-gradients_1/clip_by_value_10/Minimum_grad/Sum/gradients_1/clip_by_value_10/Minimum_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
T0

/gradients_1/clip_by_value_10/Minimum_grad/Sum_1Sum2gradients_1/clip_by_value_10/Minimum_grad/Select_1Agradients_1/clip_by_value_10/Minimum_grad/BroadcastGradientArgs:1*+
_class!
loc:@clip_by_value_10/Minimum*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ў
3gradients_1/clip_by_value_10/Minimum_grad/Reshape_1Reshape/gradients_1/clip_by_value_10/Minimum_grad/Sum_11gradients_1/clip_by_value_10/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*+
_class!
loc:@clip_by_value_10/Minimum*
T0

 gradients_1/truediv_8_grad/ShapeShapeactivation_8_2/Softmax*
out_type0*
_class
loc:@truediv_8*
_output_shapes
:*
T0

"gradients_1/truediv_8_grad/Shape_1ShapeSum_4*
T0*
_output_shapes
:*
out_type0*
_class
loc:@truediv_8
ъ
0gradients_1/truediv_8_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_8_grad/Shape"gradients_1/truediv_8_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
_class
loc:@truediv_8
З
"gradients_1/truediv_8_grad/RealDivRealDiv1gradients_1/clip_by_value_10/Minimum_grad/ReshapeSum_4*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_8
й
gradients_1/truediv_8_grad/SumSum"gradients_1/truediv_8_grad/RealDiv0gradients_1/truediv_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_8*
_output_shapes
:
Э
"gradients_1/truediv_8_grad/ReshapeReshapegradients_1/truediv_8_grad/Sum gradients_1/truediv_8_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
Tshape0*
_class
loc:@truediv_8*
T0

gradients_1/truediv_8_grad/NegNegactivation_8_2/Softmax*
T0*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ

І
$gradients_1/truediv_8_grad/RealDiv_1RealDivgradients_1/truediv_8_grad/NegSum_4*
_class
loc:@truediv_8*'
_output_shapes
:џџџџџџџџџ
*
T0
Ќ
$gradients_1/truediv_8_grad/RealDiv_2RealDiv$gradients_1/truediv_8_grad/RealDiv_1Sum_4*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_8
Ю
gradients_1/truediv_8_grad/mulMul1gradients_1/clip_by_value_10/Minimum_grad/Reshape$gradients_1/truediv_8_grad/RealDiv_2*
T0*'
_output_shapes
:џџџџџџџџџ
*
_class
loc:@truediv_8
й
 gradients_1/truediv_8_grad/Sum_1Sumgradients_1/truediv_8_grad/mul2gradients_1/truediv_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@truediv_8*
_output_shapes
:
г
$gradients_1/truediv_8_grad/Reshape_1Reshape gradients_1/truediv_8_grad/Sum_1"gradients_1/truediv_8_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
_class
loc:@truediv_8*
T0

gradients_1/Sum_4_grad/ShapeShapeactivation_8_2/Softmax*
T0*
_output_shapes
:*
out_type0*
_class

loc:@Sum_4
w
gradients_1/Sum_4_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*
_class

loc:@Sum_4

gradients_1/Sum_4_grad/addAddSum_4/reduction_indicesgradients_1/Sum_4_grad/Size*
T0*
_output_shapes
: *
_class

loc:@Sum_4

gradients_1/Sum_4_grad/modFloorModgradients_1/Sum_4_grad/addgradients_1/Sum_4_grad/Size*
_output_shapes
: *
_class

loc:@Sum_4*
T0
{
gradients_1/Sum_4_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *
_class

loc:@Sum_4
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
"gradients_1/Sum_4_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4
Ь
gradients_1/Sum_4_grad/rangeRange"gradients_1/Sum_4_grad/range/startgradients_1/Sum_4_grad/Size"gradients_1/Sum_4_grad/range/delta*

Tidx0*
_output_shapes
:*
_class

loc:@Sum_4
}
!gradients_1/Sum_4_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4
Ё
gradients_1/Sum_4_grad/FillFillgradients_1/Sum_4_grad/Shape_1!gradients_1/Sum_4_grad/Fill/value*
T0*
_class

loc:@Sum_4*
_output_shapes
: 
ћ
$gradients_1/Sum_4_grad/DynamicStitchDynamicStitchgradients_1/Sum_4_grad/rangegradients_1/Sum_4_grad/modgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Fill*
_class

loc:@Sum_4*#
_output_shapes
:џџџџџџџџџ*
T0*
N
|
 gradients_1/Sum_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*
_class

loc:@Sum_4
Й
gradients_1/Sum_4_grad/MaximumMaximum$gradients_1/Sum_4_grad/DynamicStitch gradients_1/Sum_4_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
_class

loc:@Sum_4*
T0
Ј
gradients_1/Sum_4_grad/floordivFloorDivgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Maximum*
T0*
_output_shapes
:*
_class

loc:@Sum_4
Р
gradients_1/Sum_4_grad/ReshapeReshape$gradients_1/truediv_8_grad/Reshape_1$gradients_1/Sum_4_grad/DynamicStitch*
T0*
Tshape0*
_class

loc:@Sum_4*
_output_shapes
:
Т
gradients_1/Sum_4_grad/TileTilegradients_1/Sum_4_grad/Reshapegradients_1/Sum_4_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*
_class

loc:@Sum_4*
T0*

Tmultiples0
В
gradients_1/AddNAddN"gradients_1/truediv_8_grad/Reshapegradients_1/Sum_4_grad/Tile*
T0*
_class
loc:@truediv_8*
N*'
_output_shapes
:џџџџџџџџџ

Й
+gradients_1/activation_8_2/Softmax_grad/mulMulgradients_1/AddNactivation_8_2/Softmax*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_2/Softmax*
T0
В
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
:џџџџџџџџџ*)
_class
loc:@activation_8_2/Softmax*
T0*
	keep_dims( *

Tidx0
Б
5gradients_1/activation_8_2/Softmax_grad/Reshape/shapeConst*
valueB"џџџџ   *)
_class
loc:@activation_8_2/Softmax*
dtype0*
_output_shapes
:

/gradients_1/activation_8_2/Softmax_grad/ReshapeReshape+gradients_1/activation_8_2/Softmax_grad/Sum5gradients_1/activation_8_2/Softmax_grad/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*)
_class
loc:@activation_8_2/Softmax*
T0
в
+gradients_1/activation_8_2/Softmax_grad/subSubgradients_1/AddN/gradients_1/activation_8_2/Softmax_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
*)
_class
loc:@activation_8_2/Softmax*
T0
ж
-gradients_1/activation_8_2/Softmax_grad/mul_1Mul+gradients_1/activation_8_2/Softmax_grad/subactivation_8_2/Softmax*
T0*)
_class
loc:@activation_8_2/Softmax*'
_output_shapes
:џџџџџџџџџ

є
(gradients_1/dense_4_2/MatMul_grad/MatMulMatMul-gradients_1/activation_8_2/Softmax_grad/mul_1dense_4/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *#
_class
loc:@dense_4_2/MatMul*
T0
№
*gradients_1/dense_4_2/MatMul_grad/MatMul_1MatMuldropout_6_2/cond/Merge-gradients_1/activation_8_2/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_4_2/MatMul*
_output_shapes
:	
*
transpose_a(
ы
1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_4_2/MatMul_grad/MatMuldropout_6_2/cond/pred_id*#
_class
loc:@dense_4_2/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*
T0
И
gradients_1/SwitchSwitchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0

gradients_1/Shape_1Shapegradients_1/Switch:1*
out_type0*%
_class
loc:@activation_7_2/Elu*
_output_shapes
:*
T0

gradients_1/zeros/ConstConst*
valueB
 *    *%
_class
loc:@activation_7_2/Elu*
dtype0*
_output_shapes
: 
Ё
gradients_1/zerosFillgradients_1/Shape_1gradients_1/zeros/Const*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0
ш
4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_6_2/cond/Merge_grad/cond_gradgradients_1/zeros*%
_class
loc:@activation_7_2/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
Р
3gradients_1/dropout_6_2/cond/dropout/mul_grad/ShapeShapedropout_6_2/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:
Ф
5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1Shapedropout_6_2/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
_output_shapes
:
Ж
Cgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
ё
1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1dropout_6_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
Ё
1gradients_1/dropout_6_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_6_2/cond/dropout/mul_grad/mulCgradients_1/dropout_6_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul

5gradients_1/dropout_6_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_6_2/cond/dropout/mul_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ё
3gradients_1/dropout_6_2/cond/dropout/mul_grad/mul_1Muldropout_6_2/cond/dropout/div3gradients_1/dropout_6_2/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul
Ї
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
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/mul*
T0
И
3gradients_1/dropout_6_2/cond/dropout/div_grad/ShapeShapedropout_6_2/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
:
Љ
5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_6_2/cond/dropout/div
Ж
Cgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape5gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
џ
5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape"dropout_6_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
1gradients_1/dropout_6_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_6_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
:

5gradients_1/dropout_6_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_6_2/cond/dropout/div_grad/Sum3gradients_1/dropout_6_2/cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
В
1gradients_1/dropout_6_2/cond/dropout/div_grad/NegNegdropout_6_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0
§
7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_6_2/cond/dropout/div_grad/Neg"dropout_6_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div

7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_1"dropout_6_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
T0

1gradients_1/dropout_6_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_6_2/cond/dropout/div_grad/RealDiv_2*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ
Ѕ
3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_6_2/cond/dropout/div_grad/mulEgradients_1/dropout_6_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
:

7gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_6_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_6_2/cond/dropout/div_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_6_2/cond/dropout/div*
_output_shapes
: *
T0
Б
+gradients_1/dropout_6_2/cond/mul_grad/ShapeShapedropout_6_2/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_6_2/cond/mul

-gradients_1/dropout_6_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
: *
dtype0

;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_6_2/cond/mul_grad/Shape-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*'
_class
loc:@dropout_6_2/cond/mul*
T0
л
)gradients_1/dropout_6_2/cond/mul_grad/mulMul5gradients_1/dropout_6_2/cond/dropout/div_grad/Reshapedropout_6_2/cond/mul/y*
T0*'
_class
loc:@dropout_6_2/cond/mul*(
_output_shapes
:џџџџџџџџџ

)gradients_1/dropout_6_2/cond/mul_grad/SumSum)gradients_1/dropout_6_2/cond/mul_grad/mul;gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul
њ
-gradients_1/dropout_6_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_6_2/cond/mul_grad/Sum+gradients_1/dropout_6_2/cond/mul_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*
T0
ф
+gradients_1/dropout_6_2/cond/mul_grad/mul_1Muldropout_6_2/cond/mul/Switch:15gradients_1/dropout_6_2/cond/dropout/div_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_6_2/cond/mul

+gradients_1/dropout_6_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_6_2/cond/mul_grad/mul_1=gradients_1/dropout_6_2/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@dropout_6_2/cond/mul*
T0*
	keep_dims( *

Tidx0
ю
/gradients_1/dropout_6_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_6_2/cond/mul_grad/Sum_1-gradients_1/dropout_6_2/cond/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@dropout_6_2/cond/mul*
_output_shapes
: 
К
gradients_1/Switch_1Switchactivation_7_2/Eludropout_6_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
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
Ѕ
gradients_1/zeros_1Fillgradients_1/Shape_2gradients_1/zeros_1/Const*
T0*%
_class
loc:@activation_7_2/Elu*(
_output_shapes
:џџџџџџџџџ
ш
6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_6_2/cond/mul_grad/Reshapegradients_1/zeros_1*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_7_2/Elu
ы
gradients_1/AddN_1AddN4gradients_1/dropout_6_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_6_2/cond/mul/Switch_grad/cond_grad*
T0*%
_class
loc:@activation_7_2/Elu*
N*(
_output_shapes
:џџџџџџџџџ
И
+gradients_1/activation_7_2/Elu_grad/EluGradEluGradgradients_1/AddN_1activation_7_2/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_7_2/Elu*
T0
ђ
(gradients_1/dense_3_2/MatMul_grad/MatMulMatMul+gradients_1/activation_7_2/Elu_grad/EluGraddense_3/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_3_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
я
*gradients_1/dense_3_2/MatMul_grad/MatMul_1MatMuldropout_5_2/cond/Merge+gradients_1/activation_7_2/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_3_2/MatMul
ы
1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_3_2/MatMul_grad/MatMuldropout_5_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_3_2/MatMul
К
gradients_1/Switch_2Switchactivation_6_2/Eludropout_5_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/Shape_3Shapegradients_1/Switch_2:1*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu*
T0

gradients_1/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *%
_class
loc:@activation_6_2/Elu
Ѕ
gradients_1/zeros_2Fillgradients_1/Shape_3gradients_1/zeros_2/Const*
T0*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:џџџџџџџџџ
ъ
4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_5_2/cond/Merge_grad/cond_gradgradients_1/zeros_2*
N*
T0**
_output_shapes
:џџџџџџџџџ: *%
_class
loc:@activation_6_2/Elu
Р
3gradients_1/dropout_5_2/cond/dropout/mul_grad/ShapeShapedropout_5_2/cond/dropout/div*
_output_shapes
:*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
T0
Ф
5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1Shapedropout_5_2/cond/dropout/Floor*
T0*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*
_output_shapes
:
Ж
Cgradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
ё
1gradients_1/dropout_5_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1dropout_5_2/cond/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
Ё
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
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
ё
3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Muldropout_5_2/cond/dropout/div3gradients_1/dropout_5_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ї
3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_5_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_5_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul
 
7gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/mul_grad/Shape_1*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
И
3gradients_1/dropout_5_2/cond/dropout/div_grad/ShapeShapedropout_5_2/cond/mul*
out_type0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
_output_shapes
:*
T0
Љ
5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_5_2/cond/dropout/div
Ж
Cgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape5gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div
џ
5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape"dropout_5_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
1gradients_1/dropout_5_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_5_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/div

5gradients_1/dropout_5_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_5_2/cond/dropout/div_grad/Sum3gradients_1/dropout_5_2/cond/dropout/div_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
В
1gradients_1/dropout_5_2/cond/dropout/div_grad/NegNegdropout_5_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
§
7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_5_2/cond/dropout/div_grad/Neg"dropout_5_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0

7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_1"dropout_5_2/cond/dropout/keep_prob*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_5_2/cond/dropout/div

1gradients_1/dropout_5_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_5_2/cond/dropout/div_grad/RealDiv_2*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_1Sum1gradients_1/dropout_5_2/cond/dropout/div_grad/mulEgradients_1/dropout_5_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_5_2/cond/dropout/div

7gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape_1Reshape3gradients_1/dropout_5_2/cond/dropout/div_grad/Sum_15gradients_1/dropout_5_2/cond/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*/
_class%
#!loc:@dropout_5_2/cond/dropout/div*
T0
Б
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
loc:@dropout_5_2/cond/mul*
_output_shapes
: *
dtype0

;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_5_2/cond/mul_grad/Shape-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*'
_class
loc:@dropout_5_2/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
л
)gradients_1/dropout_5_2/cond/mul_grad/mulMul5gradients_1/dropout_5_2/cond/dropout/div_grad/Reshapedropout_5_2/cond/mul/y*
T0*'
_class
loc:@dropout_5_2/cond/mul*(
_output_shapes
:џџџџџџџџџ

)gradients_1/dropout_5_2/cond/mul_grad/SumSum)gradients_1/dropout_5_2/cond/mul_grad/mul;gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
њ
-gradients_1/dropout_5_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_5_2/cond/mul_grad/Sum+gradients_1/dropout_5_2/cond/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0*'
_class
loc:@dropout_5_2/cond/mul
ф
+gradients_1/dropout_5_2/cond/mul_grad/mul_1Muldropout_5_2/cond/mul/Switch:15gradients_1/dropout_5_2/cond/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_5_2/cond/mul*
T0

+gradients_1/dropout_5_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_5_2/cond/mul_grad/mul_1=gradients_1/dropout_5_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*'
_class
loc:@dropout_5_2/cond/mul*
_output_shapes
:
ю
/gradients_1/dropout_5_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_5_2/cond/mul_grad/Sum_1-gradients_1/dropout_5_2/cond/mul_grad/Shape_1*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_5_2/cond/mul*
T0
К
gradients_1/Switch_3Switchactivation_6_2/Eludropout_5_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu

gradients_1/Shape_4Shapegradients_1/Switch_3*
T0*
_output_shapes
:*
out_type0*%
_class
loc:@activation_6_2/Elu

gradients_1/zeros_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *%
_class
loc:@activation_6_2/Elu
Ѕ
gradients_1/zeros_3Fillgradients_1/Shape_4gradients_1/zeros_3/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu
ш
6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_5_2/cond/mul_grad/Reshapegradients_1/zeros_3**
_output_shapes
:џџџџџџџџџ: *
N*%
_class
loc:@activation_6_2/Elu*
T0
ы
gradients_1/AddN_2AddN4gradients_1/dropout_5_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_5_2/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_6_2/Elu*(
_output_shapes
:џџџџџџџџџ*
T0*
N
И
+gradients_1/activation_6_2/Elu_grad/EluGradEluGradgradients_1/AddN_2activation_6_2/Elu*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_6_2/Elu*
T0
ђ
(gradients_1/dense_2_2/MatMul_grad/MatMulMatMul+gradients_1/activation_6_2/Elu_grad/EluGraddense_2/kernel/read*
transpose_b(*
T0*#
_class
loc:@dense_2_2/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
я
*gradients_1/dense_2_2/MatMul_grad/MatMul_1MatMuldropout_4_2/cond/Merge+gradients_1/activation_6_2/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(*#
_class
loc:@dense_2_2/MatMul
ы
1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradSwitch(gradients_1/dense_2_2/MatMul_grad/MatMuldropout_4_2/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*#
_class
loc:@dense_2_2/MatMul
К
gradients_1/Switch_4Switchactivation_5_2/Eludropout_4_2/cond/pred_id*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu*
T0

gradients_1/Shape_5Shapegradients_1/Switch_4:1*
out_type0*%
_class
loc:@activation_5_2/Elu*
_output_shapes
:*
T0

gradients_1/zeros_4/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_2/Elu*
dtype0*
_output_shapes
: 
Ѕ
gradients_1/zeros_4Fillgradients_1/Shape_5gradients_1/zeros_4/Const*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu
ъ
4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_gradMerge1gradients_1/dropout_4_2/cond/Merge_grad/cond_gradgradients_1/zeros_4**
_output_shapes
:џџџџџџџџџ: *
N*%
_class
loc:@activation_5_2/Elu*
T0
Р
3gradients_1/dropout_4_2/cond/dropout/mul_grad/ShapeShapedropout_4_2/cond/dropout/div*
T0*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:
Ф
5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1Shapedropout_4_2/cond/dropout/Floor*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0
Ж
Cgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape5gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ё
1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulMul3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1dropout_4_2/cond/dropout/Floor*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ*
T0
Ё
1gradients_1/dropout_4_2/cond/dropout/mul_grad/SumSum1gradients_1/dropout_4_2/cond/dropout/mul_grad/mulCgradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/mul_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
ё
3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Muldropout_4_2/cond/dropout/div3gradients_1/dropout_4_2/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
Ї
3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_1Sum3gradients_1/dropout_4_2/cond/dropout/mul_grad/mul_1Egradients_1/dropout_4_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul
 
7gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape_1Reshape3gradients_1/dropout_4_2/cond/dropout/mul_grad/Sum_15gradients_1/dropout_4_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/mul*(
_output_shapes
:џџџџџџџџџ
И
3gradients_1/dropout_4_2/cond/dropout/div_grad/ShapeShapedropout_4_2/cond/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
_output_shapes
:
Љ
5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB */
_class%
#!loc:@dropout_4_2/cond/dropout/div
Ж
Cgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape5gradients_1/dropout_4_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
џ
5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivRealDiv5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape"dropout_4_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
1gradients_1/dropout_4_2/cond/dropout/div_grad/SumSum5gradients_1/dropout_4_2/cond/dropout/div_grad/RealDivCgradients_1/dropout_4_2/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

5gradients_1/dropout_4_2/cond/dropout/div_grad/ReshapeReshape1gradients_1/dropout_4_2/cond/dropout/div_grad/Sum3gradients_1/dropout_4_2/cond/dropout/div_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
Tshape0*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0
В
1gradients_1/dropout_4_2/cond/dropout/div_grad/NegNegdropout_4_2/cond/mul*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0
§
7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1RealDiv1gradients_1/dropout_4_2/cond/dropout/div_grad/Neg"dropout_4_2/cond/dropout/keep_prob*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*(
_output_shapes
:џџџџџџџџџ*
T0

7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2RealDiv7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_1"dropout_4_2/cond/dropout/keep_prob*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div*
T0

1gradients_1/dropout_4_2/cond/dropout/div_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/mul_grad/Reshape7gradients_1/dropout_4_2/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@dropout_4_2/cond/dropout/div
Ѕ
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
Б
+gradients_1/dropout_4_2/cond/mul_grad/ShapeShapedropout_4_2/cond/mul/Switch:1*
T0*
_output_shapes
:*
out_type0*'
_class
loc:@dropout_4_2/cond/mul

-gradients_1/dropout_4_2/cond/mul_grad/Shape_1Const*
valueB *'
_class
loc:@dropout_4_2/cond/mul*
dtype0*
_output_shapes
: 

;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients_1/dropout_4_2/cond/mul_grad/Shape-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
T0*'
_class
loc:@dropout_4_2/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
л
)gradients_1/dropout_4_2/cond/mul_grad/mulMul5gradients_1/dropout_4_2/cond/dropout/div_grad/Reshapedropout_4_2/cond/mul/y*(
_output_shapes
:џџџџџџџџџ*'
_class
loc:@dropout_4_2/cond/mul*
T0

)gradients_1/dropout_4_2/cond/mul_grad/SumSum)gradients_1/dropout_4_2/cond/mul_grad/mul;gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:*'
_class
loc:@dropout_4_2/cond/mul
њ
-gradients_1/dropout_4_2/cond/mul_grad/ReshapeReshape)gradients_1/dropout_4_2/cond/mul_grad/Sum+gradients_1/dropout_4_2/cond/mul_grad/Shape*
Tshape0*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0
ф
+gradients_1/dropout_4_2/cond/mul_grad/mul_1Muldropout_4_2/cond/mul/Switch:15gradients_1/dropout_4_2/cond/dropout/div_grad/Reshape*'
_class
loc:@dropout_4_2/cond/mul*(
_output_shapes
:џџџџџџџџџ*
T0

+gradients_1/dropout_4_2/cond/mul_grad/Sum_1Sum+gradients_1/dropout_4_2/cond/mul_grad/mul_1=gradients_1/dropout_4_2/cond/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@dropout_4_2/cond/mul*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ю
/gradients_1/dropout_4_2/cond/mul_grad/Reshape_1Reshape+gradients_1/dropout_4_2/cond/mul_grad/Sum_1-gradients_1/dropout_4_2/cond/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0*'
_class
loc:@dropout_4_2/cond/mul
К
gradients_1/Switch_5Switchactivation_5_2/Eludropout_4_2/cond/pred_id*
T0*%
_class
loc:@activation_5_2/Elu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

gradients_1/Shape_6Shapegradients_1/Switch_5*
out_type0*%
_class
loc:@activation_5_2/Elu*
_output_shapes
:*
T0

gradients_1/zeros_5/ConstConst*
valueB
 *    *%
_class
loc:@activation_5_2/Elu*
_output_shapes
: *
dtype0
Ѕ
gradients_1/zeros_5Fillgradients_1/Shape_6gradients_1/zeros_5/Const*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu*
T0
ш
6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_gradMerge-gradients_1/dropout_4_2/cond/mul_grad/Reshapegradients_1/zeros_5*%
_class
loc:@activation_5_2/Elu**
_output_shapes
:џџџџџџџџџ: *
T0*
N
ы
gradients_1/AddN_3AddN4gradients_1/dropout_4_2/cond/Switch_1_grad/cond_grad6gradients_1/dropout_4_2/cond/mul/Switch_grad/cond_grad*%
_class
loc:@activation_5_2/Elu*(
_output_shapes
:џџџџџџџџџ*
T0*
N
И
+gradients_1/activation_5_2/Elu_grad/EluGradEluGradgradients_1/AddN_3activation_5_2/Elu*
T0*(
_output_shapes
:џџџџџџџџџ*%
_class
loc:@activation_5_2/Elu
ђ
(gradients_1/dense_1_2/MatMul_grad/MatMulMatMul+gradients_1/activation_5_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ$*
transpose_a( *#
_class
loc:@dense_1_2/MatMul*
T0
ь
*gradients_1/dense_1_2/MatMul_grad/MatMul_1MatMulflatten_1_2/Reshape+gradients_1/activation_5_2/Elu_grad/EluGrad*
transpose_b( *
T0* 
_output_shapes
:
$*
transpose_a(*#
_class
loc:@dense_1_2/MatMul
a
Const_36Const*
valueB
$*    * 
_output_shapes
:
$*
dtype0


Variable_8
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
Variable_8/AssignAssign
Variable_8Const_36* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_8*
T0*
use_locking(
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
_output_shapes
:
*
dtype0*
valueB
*    


Variable_9
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Є
Variable_9/AssignAssign
Variable_9Const_37*
_class
loc:@Variable_9* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
q
Variable_9/readIdentity
Variable_9* 
_output_shapes
:
*
_class
loc:@Variable_9*
T0
a
Const_38Const* 
_output_shapes
:
*
dtype0*
valueB
*    

Variable_10
VariableV2*
shared_name *
dtype0*
shape:
* 
_output_shapes
:
*
	container 
Ї
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
_class
loc:@Variable_10* 
_output_shapes
:

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

І
Variable_11/AssignAssignVariable_11Const_39*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable_11*
T0*
use_locking(
s
Variable_11/readIdentityVariable_11*
T0*
_output_shapes
:	
*
_class
loc:@Variable_11
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
VariableV2*
shape:
$*
shared_name *
dtype0* 
_output_shapes
:
$*
	container 
Ї
Variable_12/AssignAssignVariable_12Const_40* 
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_12*
T0*
use_locking(
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
dtype0* 
_output_shapes
:
*
valueB
*    

Variable_13
VariableV2* 
_output_shapes
:
*
	container *
dtype0*
shared_name *
shape:

Ї
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
Variable_13/readIdentityVariable_13*
T0* 
_output_shapes
:
*
_class
loc:@Variable_13
a
Const_42Const* 
_output_shapes
:
*
dtype0*
valueB
*    

Variable_14
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
Ї
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
VariableV2*
shared_name *
dtype0*
shape:	
*
_output_shapes
:	
*
	container 
І
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
 *33s?*
_output_shapes
: *
dtype0
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
 *ЭЬL=*
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
add_16Addmul_33mul_34* 
_output_shapes
:
$*
T0

	Assign_20Assign
Variable_8add_16*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(* 
_output_shapes
:
$
M
add_17/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
Const_45Const*
_output_shapes
: *
dtype0*
valueB
 *  
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
mul_35Mul*gradients_1/dense_1_2/MatMul_grad/MatMul_1Sqrt_8*
T0* 
_output_shapes
:
$
M
add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
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
Const_47Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_12/MinimumMinimumadd_18Const_47* 
_output_shapes
:
$*
T0
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

truediv_10RealDivmul_35Sqrt_9*
T0* 
_output_shapes
:
$
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
Ё
	Assign_21Assigndense_1/kernelsub_7* 
_output_shapes
:
$*
validate_shape(*!
_class
loc:@dense_1/kernel*
T0*
use_locking(
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
truediv_10* 
_output_shapes
:
$*
T0
M
mul_38/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
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
_output_shapes
:
$*
validate_shape(*
_class
loc:@Variable_12*
T0*
use_locking(
M
mul_39/xConst*
dtype0*
_output_shapes
: *
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
 *ЭЬL=
M
mul_40Mulmul_40/x	Square_10*
T0* 
_output_shapes
:

H
add_20Addmul_39mul_40* 
_output_shapes
:
*
T0

	Assign_23Assign
Variable_9add_20*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(* 
_output_shapes
:

M
add_21/yConst*
valueB
 *wЬ+2*
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
Const_49Const*
valueB
 *  *
_output_shapes
: *
dtype0
`
clip_by_value_13/MinimumMinimumadd_21Const_49* 
_output_shapes
:
*
T0
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
 *wЬ+2
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
Const_51Const*
_output_shapes
: *
dtype0*
valueB
 *  
`
clip_by_value_14/MinimumMinimumadd_22Const_51*
T0* 
_output_shapes
:

j
clip_by_value_14Maximumclip_by_value_14/MinimumConst_50*
T0* 
_output_shapes
:

L
Sqrt_11Sqrtclip_by_value_14*
T0* 
_output_shapes
:

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
Ё
	Assign_24Assigndense_2/kernelsub_8*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

M
mul_43/xConst*
dtype0*
_output_shapes
: *
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
 *ЭЬL=
M
mul_44Mulmul_44/x	Square_11* 
_output_shapes
:
*
T0
H
add_23Addmul_43mul_44*
T0* 
_output_shapes
:


	Assign_25AssignVariable_13add_23*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(* 
_output_shapes
:

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
	Square_12Square*gradients_1/dense_3_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

M
mul_46/xConst*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
M
mul_46Mulmul_46/x	Square_12*
T0* 
_output_shapes
:

H
add_24Addmul_45mul_46* 
_output_shapes
:
*
T0

	Assign_26AssignVariable_10add_24*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*
_class
loc:@Variable_10
M
add_25/yConst*
valueB
 *wЬ+2*
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
 *  *
dtype0*
_output_shapes
: 
`
clip_by_value_15/MinimumMinimumadd_25Const_53* 
_output_shapes
:
*
T0
j
clip_by_value_15Maximumclip_by_value_15/MinimumConst_52* 
_output_shapes
:
*
T0
L
Sqrt_12Sqrtclip_by_value_15*
T0* 
_output_shapes
:

m
mul_47Mul*gradients_1/dense_3_2/MatMul_grad/MatMul_1Sqrt_12*
T0* 
_output_shapes
:

M
add_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
J
add_26Addadd_24add_26/y* 
_output_shapes
:
*
T0
M
Const_54Const*
valueB
 *    *
_output_shapes
: *
dtype0
M
Const_55Const*
valueB
 *  *
dtype0*
_output_shapes
: 
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
Sqrt_13Sqrtclip_by_value_16*
T0* 
_output_shapes
:

Q

truediv_12RealDivmul_47Sqrt_13*
T0* 
_output_shapes
:

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
Ё
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
mul_49/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
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
mul_50/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
M
mul_50Mulmul_50/x	Square_13*
T0* 
_output_shapes
:

H
add_27Addmul_49mul_50* 
_output_shapes
:
*
T0
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
mul_51/xConst*
valueB
 *33s?*
_output_shapes
: *
dtype0
S
mul_51Mulmul_51/xVariable_11/read*
T0*
_output_shapes
:	

i
	Square_14Square*gradients_1/dense_4_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

M
mul_52/xConst*
valueB
 *ЭЬL=*
_output_shapes
: *
dtype0
L
mul_52Mulmul_52/x	Square_14*
T0*
_output_shapes
:	

G
add_28Addmul_51mul_52*
_output_shapes
:	
*
T0

	Assign_29AssignVariable_11add_28*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(*
_output_shapes
:	

M
add_29/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
S
add_29AddVariable_15/readadd_29/y*
T0*
_output_shapes
:	

M
Const_56Const*
_output_shapes
: *
dtype0*
valueB
 *    
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
clip_by_value_17Maximumclip_by_value_17/MinimumConst_56*
T0*
_output_shapes
:	

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
 *wЬ+2
I
add_30Addadd_28add_30/y*
_output_shapes
:	
*
T0
M
Const_58Const*
dtype0*
_output_shapes
: *
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
Sqrt_15Sqrtclip_by_value_18*
_output_shapes
:	
*
T0
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
sub_10Subdense_4/kernel/readmul_54*
_output_shapes
:	
*
T0
Ё
	Assign_30Assigndense_4/kernelsub_10*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes
:	

M
mul_55/xConst*
dtype0*
_output_shapes
: *
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
mul_56/xConst*
valueB
 *ЭЬL=*
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
З
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
Д
init_3NoOp^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign""И
trainable_variables 
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
Variable_15:0Variable_15/AssignVariable_15/read:0"
cond_contextўњ
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
activation_7_1/Elu:0dropout_6_1/cond/Switch_1:0

dropout_1_2/cond/cond_textdropout_1_2/cond/pred_id:0dropout_1_2/cond/switch_t:0 *С
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
dropout_1_2/cond/cond_text_1dropout_1_2/cond/pred_id:0dropout_1_2/cond/switch_f:0*О
activation_2_2/Elu:0
dropout_1_2/cond/Switch_1:0
dropout_1_2/cond/Switch_1:1
dropout_1_2/cond/pred_id:0
dropout_1_2/cond/switch_f:03
activation_2_2/Elu:0dropout_1_2/cond/Switch_1:0

dropout_2_2/cond/cond_textdropout_2_2/cond/pred_id:0dropout_2_2/cond/switch_t:0 *С
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
dropout_2_2/cond/cond_text_1dropout_2_2/cond/pred_id:0dropout_2_2/cond/switch_f:0*О
activation_3_2/Elu:0
dropout_2_2/cond/Switch_1:0
dropout_2_2/cond/Switch_1:1
dropout_2_2/cond/pred_id:0
dropout_2_2/cond/switch_f:03
activation_3_2/Elu:0dropout_2_2/cond/Switch_1:0
Б
dropout_3_2/cond/cond_textdropout_3_2/cond/pred_id:0dropout_3_2/cond/switch_t:0 *з
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
Ў
dropout_3_2/cond/cond_text_1dropout_3_2/cond/pred_id:0dropout_3_2/cond/switch_f:0*д
dropout_3_2/cond/Switch_1:0
dropout_3_2/cond/Switch_1:1
dropout_3_2/cond/pred_id:0
dropout_3_2/cond/switch_f:0
max_pooling2d_1_2/transpose_1:0>
max_pooling2d_1_2/transpose_1:0dropout_3_2/cond/Switch_1:0

dropout_4_2/cond/cond_textdropout_4_2/cond/pred_id:0dropout_4_2/cond/switch_t:0 *С
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
dropout_4_2/cond/cond_text_1dropout_4_2/cond/pred_id:0dropout_4_2/cond/switch_f:0*О
activation_5_2/Elu:0
dropout_4_2/cond/Switch_1:0
dropout_4_2/cond/Switch_1:1
dropout_4_2/cond/pred_id:0
dropout_4_2/cond/switch_f:03
activation_5_2/Elu:0dropout_4_2/cond/Switch_1:0

dropout_5_2/cond/cond_textdropout_5_2/cond/pred_id:0dropout_5_2/cond/switch_t:0 *С
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
dropout_5_2/cond/cond_text_1dropout_5_2/cond/pred_id:0dropout_5_2/cond/switch_f:0*О
activation_6_2/Elu:0
dropout_5_2/cond/Switch_1:0
dropout_5_2/cond/Switch_1:1
dropout_5_2/cond/pred_id:0
dropout_5_2/cond/switch_f:03
activation_6_2/Elu:0dropout_5_2/cond/Switch_1:0

dropout_6_2/cond/cond_textdropout_6_2/cond/pred_id:0dropout_6_2/cond/switch_t:0 *С
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
dropout_6_2/cond/cond_text_1dropout_6_2/cond/pred_id:0dropout_6_2/cond/switch_f:0*О
activation_7_2/Elu:0
dropout_6_2/cond/Switch_1:0
dropout_6_2/cond/Switch_1:1
dropout_6_2/cond/pred_id:0
dropout_6_2/cond/switch_f:03
activation_7_2/Elu:0dropout_6_2/cond/Switch_1:0"Ў
	variables 
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
Variable_15:0Variable_15/AssignVariable_15/read:0Ўв_ђ       	vБЂи7SжA*

val_accтYQ?pWЃО       чЮј	=ВЂи7SжA*


accЌ[?ѓУѕU       ШС	ВЂи7SжA*

val_loss8о?Л       ЃK"	БВЂи7SжA*

lossлШ@эаe	       `/п#	iГји7SжA*

val_accнў`?оP       ё(	Дји7SжA*


acce№_?ьТй       йм2	ўДји7SжA*

val_loss3у&?|в       и-	aЕји7SжA*

lossўД&?хіTђ       `/п#	ЫWй7SжA*

val_acc	јf?
Ж       ё(	hWй7SжA*


accрЩj?h"       йм2	Wй7SжA*

val_lossР$?рЌ       и-	ФWй7SжA*

lossc3У>Йсv       `/п#	ЛйЌй7SжA*

val_acck?JaІ       ё(	sкЌй7SжA*


accФko?уwь       йм2	ЋкЌй7SжA*

val_lossgё>.л^U       и-	зкЌй7SжA*

lossЅ>ќ%5њ       `/п#	§Кћй7SжA*

val_accЋЊj?Xв8       ё(	ЖЛћй7SжA*


acc33s?Ѓв       йм2	ьЛћй7SжA*

val_lossУi§>йЕA       и-	Мћй7SжA*

loss~_>№QЊm       `/п#	HJк7SжA*

val_accdЈl?сФ       ё(	дHJк7SжA*


accrюs?Jv'       йм2	IJк7SжA*

val_lossћм>СJѕ       и-	8IJк7SжA*

lossўИj>Жё       `/п#	ТЭк7SжA*

val_accиm?Aз       ё(	hЮк7SжA*


accЮ}v?ЏUЩ0       йм2	ЁЮк7SжA*

val_lossNц>fe}8       и-	аЮк7SжA*

lossЅ^.>*Ni       `/п#	ьк7SжA*

val_acc5ёl?-ѕЁ       ё(	5ьк7SжA*


acc­w?ез((       йм2	ьк7SжA*

val_loss "л>q2ЯA       и-	чьк7SжA*

loss9>Њ%р       `/п#	pjAл7SжA*

val_acc5ёl?Oіл       ё(	kAл7SжA*


accx?Ў       йм2	йkAл7SжA*

val_loss@Ан>рMІР       и-	lAл7SжA*

lossаљ>ю       `/п#	л7SжA	*

val_accСl?З       ё(	kл7SжA	*


accЏx?UОx+       йм2	Ўл7SжA	*

val_lossї#№>ј       и-	чл7SжA	*

loss)sГ='*ѓл       `/п#	Ёaхл7SжA
*

val_accиm?а,        ё(	Tbхл7SжA
*


accнЂz?ОIШ       йм2	bхл7SжA
*

val_lossїп>$fњб       и-	Аbхл7SжA
*

lossп=\иqД       `/п#	а<м7SжA*

val_acc:m?сЁT       ё(	љ<м7SжA*


accч>{?,з$Т       йм2	B<м7SжA*

val_losspя>џг;       и-	t<м7SжA*

loss*kЙ=!^       `/п#	zкм7SжA*

val_acc5ёl? Љ­       ё(	Eлм7SжA*


acc8|?и[       йм2	лм7SжA*

val_loss`јф> RњN       и-	Улм7SжA*

loss'=Р3ў       `/п#	9йм7SжA*

val_accЊЫm?І\HЖ       ё(	@:йм7SжA*


acc0|?,!9/       йм2	:йм7SжA*

val_loss_>ш>aOў       и-	У:йм7SжA*

lossaМ=aq2       `/п#	M'н7SжA*

val_accЊЫm?№Є       ё(	йM'н7SжA*


accЪjy?       йм2	4N'н7SжA*

val_lossuй>]фV       и-	N'н7SжA*

lossзЧЙ=вМф       `/п#	[|н7SжA*

val_acc{n?mЁј@       ё(	[|н7SжA*


acc&њ{?&Ќ;       йм2	Ы[|н7SжA*

val_loss~с>ЅС       и-	і[|н7SжA*

lossqЄ=ш	7       `/п#	№ЙЫн7SжA*

val_accиm?Б) џ       ё(	ЯКЫн7SжA*


accћv|?ЊРW       йм2	-ЛЫн7SжA*

val_lossGwц>3ќХ       и-	{ЛЫн7SжA*

lossРVr=НџCо       `/п#	jkо7SжA*

val_acco?нКz       ё(	.lо7SжA*


acc}?ОЩdЉ       йм2	ylо7SжA*

val_lossХ-с>^ьJЫ       и-	Гlо7SжA*

loss$|=cj       `/п#	Bрiо7SжA*

val_accІn?л%{       ё(	Ьрiо7SжA*


accд|?пў2       йм2	сiо7SжA*

val_loss	Ѕё>Е[       и-	7сiо7SжA*

loss&'=vtY       `/п#	рzДо7SжA*

val_accK~q?Яpџ[       ё(	i{До7SжA*


acc0|?NWк       йм2	Ђ{До7SжA*

val_lossNк>V=       и-	б{До7SжA*

lossБх4=oВ       `/п#	Б_п7SжA*

val_acccЩo?ЦOt       ё(	:aп7SжA*


accoQ}?PТкІ       йм2	aп7SжA*

val_lossдЅт>?ѓzд       и-	Яaп7SжA*

loss"?=ЯЅ       `/п#	Pп7SжA*

val_acc[p?;0И       ё(	rPп7SжA*


acc:2}?3Ђ8       йм2	ЭPп7SжA*

val_loss;0й>>;эg       и-	Pп7SжA*

lossоL=ЯB|       `/п#	ћп7SжA*

val_accK~q?\fќэ       ё(	nп7SжA*


acc8|?Ђљ02       йм2	чп7SжA*

val_losswи>МЗYч       и-	п7SжA*

lossmt{=nюjШ       `/п#	Ћяъп7SжA*

val_acccЩo?=P       ё(	|№ъп7SжA*


accћv|?ю!Ј       йм2	л№ъп7SжA*

val_lossЛй>Z№M       и-	)ёъп7SжA*

lossz[=Ф[X5       `/п#	Y:р7SжA*

val_accзЃp?їHг       ё(	:р7SжA*


accЏ}?Э&Д       йм2	J:р7SжA*

val_lossЫ§д>Qs       и-	v:р7SжA*

lossђі)=?O`       `/п#	бfр7SжA*

val_acco?њўц       ё(	Igр7SжA*


acceЕ|?Aяд~       йм2	ygр7SжA*

val_lossJЌи>1M	э       и-	Ёgр7SжA*

loss^=Щфr       `/п#	ІCвр7SжA*

val_acc4p?:ёФ       ё(	Dвр7SжA*


acc:2}?=оЮу       йм2	юDвр7SжA*

val_loss_и>ЇЗэ       и-	GEвр7SжA*

lossBщT=йБO`       `/п#	М.с7SжA*

val_acc4p?D(       ё(	ќ.с7SжA*


accЎ~?У:Џ       йм2	}.с7SжA*

val_lossqЧу>
ЏЙ       и-	т.с7SжA*

lossn=.а       `/п#	ач{с7SжA*

val_acco?Na#э       ё(	Wш{с7SжA*


accxэ}?Mыџ       йм2	ш{с7SжA*

val_loss?ђ>QЋnJ       и-	Еш{с7SжA*

loss_Ўп<kх:       `/п#	NјЧс7SжA*

val_acc4p?АУЂм       ё(	љЧс7SжA*


acc}?5h       йм2	iљЧс7SжA*

val_lossау>)ѕо       и-	ГљЧс7SжA*

lossлV=хРЧЇ       `/п#	AЫт7SжA*

val_accЈьp?аХ       ё(	Ьт7SжA*


accK~?ёвM       йм2	ќЬт7SжA*

val_lossо>ъСyЉ       и-	jЭт7SжA*

lossB3:=bНFѓ       `/п#	yјfт7SжA*

val_acccЩo?гж$Ф       ё(	љfт7SжA*


accЏ}?КБ       йм2	3љfт7SжA*

val_lossСп>UNЛ       и-	]љfт7SжA*

loss==У       `/п#	иПЕт7SжA *

val_accK~q?wЬ^       ё(	QРЕт7SжA *


accCЮ}?ј_цЄ       йм2	РЕт7SжA *

val_lossЧrл>DpRЁ       и-	ЌРЕт7SжA *

lossYю<Р5ёD       `/п#	n	у7SжA!*

val_accзЃp?щP       ё(	,	у7SжA!*


acc~?ПЦпЬ       йм2	}	у7SжA!*

val_loss6Iч>]zb3       и-	Ћ	у7SжA!*

lossv<Pч       `/п#	вЏRу7SжA"*

val_accЁr?В{       ё(	АRу7SжA"*


accK~?YФ       йм2	рАRу7SжA"*

val_lossІuе>!|жд       и-	#БRу7SжA"*

lossPQ=є[=       `/п#	Йvу7SжA#*

val_acc[p?OA       ё(	wу7SжA#*


accMj~?7       йм2	xу7SжA#*

val_lossџ4т>giЦ       и-	]xу7SжA#*

loss)Ќ=5Ф       `/п#	чу7SжA$*

val_acccЩo?Пmd       ё(	чу7SжA$*


accK~?Њйуг       йм2	чу7SжA$*

val_lossќ>цКx       и-	єчу7SжA$*

lossлЖХ<-ЁЧ       `/п#	Џ2ф7SжA%*

val_accЧq?І6о       ё(	L2ф7SжA%*


accK~?W`Ѕ'       йм2	2ф7SжA%*

val_loss{9в>дЋё|       и-	Ы2ф7SжA%*

lossЯј<ЧћЖД       `/п#	ъ§}ф7SжA&*

val_accюr?ЇДіб       ё(	ў}ф7SжA&*


accW?Ь\Ы       йм2	Йў}ф7SжA&*

val_lossай>=Mp8       и-	уў}ф7SжA&*

lossИpЂ<,Dб       `/п#	иІЧф7SжA'*

val_accзЃp?з%ХЊ       ё(	YЇЧф7SжA'*


accMj~?pђ       йм2	ЇЧф7SжA'*

val_lossњХо>сД       и-	ГЇЧф7SжA'*

loss*є=osD"       `/п#	Oх7SжA(*

val_accbъr?]{*       ё(	4Pх7SжA(*


accMj~?ЃђВ       йм2	Pх7SжA(*

val_lossжа>ЪеHџ       и-	ЛPх7SжA(*

losso <C	       `/п#	eУ^х7SжA)*

val_accbъr?#}мi       ё(	;Ф^х7SжA)*


accЗЈ~?0>       йм2	Ф^х7SжA)*

val_lossuиа>ceЭj       и-	цФ^х7SжA)*

loss[*<Їmyi       `/п#	2ЁЋх7SжA**

val_accюr?d#м       ё(	ЂЋх7SжA**


accK~?PpaN       йм2	ЂЋх7SжA**

val_lossЗж>ТH       и-	шЂЋх7SжA**

lossѓ<Ще       `/п#	dјх7SжA+*

val_accЧq?Гыз&       ё(	чјх7SжA+*


accW?;}Ыч       йм2	јх7SжA+*

val_lossцт>Wm       и-	@јх7SжA+*

loss№<Y)ЮО       `/п#	2Gц7SжA,*

val_accЧq?Ёљ№       ё(	ЕGц7SжA,*


accЎ~?ЦЇюх       йм2	щGц7SжA,*

val_lossmuо>Ы(       и-	Gц7SжA,*

lossї<њ­       `/п#	Ыwц7SжA-*

val_accz5q?к	xл       ё(	xц7SжA-*


accW?<ф       йм2	тxц7SжA-*

val_lossт<ю>ћ2:Ч       и-	$yц7SжA-*

losslX<Tu$I       `/п#	5Кчц7SжA.*

val_accПXr?rlY{       ё(	АКчц7SжA.*


accMj~?NСu       йм2	хКчц7SжA.*

val_lossст>       и-	Лчц7SжA.*

lossУxЫ<БbGЇ       `/п#	x26ч7SжA/*

val_accюr?ЯТ       ё(	36ч7SжA/*


accьЧ~?ѕ       йм2	$46ч7SжA/*

val_lossЌ9о>.цИЅ       и-	46ч7SжA/*

loss;}=w_f       `/п#	пВч7SжA0*

val_accz5q?§P#       ё(	RГч7SжA0*


accьЧ~?"vЏг       йм2	Гч7SжA0*

val_lossЉHф>ГMЬ0       и-	ЌГч7SжA0*

lossЖHи<XШW       `/п#	НАйч7SжA1*

val_accЈьp?mХJ       ё(	;Бйч7SжA1*


accьЧ~? MБ       йм2	lБйч7SжA1*

val_lossЗщ>ЮЯn       и-	Бйч7SжA1*

lossK<шЌЕ"       `/п#	зx&ш7SжA2*

val_acc[p?Ъcў       ё(	Рy&ш7SжA2*


accMj~?Јe       йм2	z&ш7SжA2*

val_lossHя>pМ E       и-	Fz&ш7SжA2*

loss|Э=ЊУіj       `/п#	zsш7SжA3*

val_accзЃp?A^Ж       ё(	Єzsш7SжA3*


accьЧ~?]№       йм2	йzsш7SжA3*

val_lossпgх>ћL       и-	{sш7SжA3*

lossIМ<tf~       `/п#	аТш7SжA4*

val_accЧq?dІђВ       ё(	<бТш7SжA4*


acc"ч~?ьyЉ       йм2	бТш7SжA4*

val_lossKчь>'RСy       и-	ЬбТш7SжA4*

loss-л1<ј>m§       `/п#	Є0щ7SжA5*

val_accюr?]зн       ё(	+1щ7SжA5*


accЗЈ~?у!IЅ       йм2	a1щ7SжA5*

val_loss§>--       и-	1щ7SжA5*

loss	q<ѓлДx       `/п#	mcщ7SжA6*

val_accюr?4п       ё(	cщ7SжA6*


acc"ч~?NЁЯ       йм2	Mcщ7SжA6*

val_loss1ц>k\       и-	cщ7SжA6*

lossFО<MЁ       `/п#	[ќГщ7SжA7*

val_accz5q?Uѕ       ё(	Г§Гщ7SжA7*


acc"ч~?N4Ь       йм2	iўГщ7SжA7*

val_lossРжє>cпЦ       и-	џГщ7SжA7*

lossДи<ЖX       `/п#	ъ7SжA8*

val_accЧq?ж       ё(	ъ7SжA8*


acc"ч~?ўFіj       йм2	Fъ7SжA8*

val_losss6о>Xv"       и-	oъ7SжA8*

lossд=№яCУ       `/п#	qЂVъ7SжA9*

val_accЁr?јWCы       ё(	юЂVъ7SжA9*


acc"ч~?B8p№       йм2	"ЃVъ7SжA9*

val_lossDк>$7Ф       и-	NЃVъ7SжA9*

lossЏв_<ѓд3П       `/п#	*JЄъ7SжA:*

val_accЁr?­^rJ       ё(	дJЄъ7SжA:*


acc"ч~?W?Kr       йм2	KЄъ7SжA:*

val_lossMф>5щш       и-	YKЄъ7SжA:*

lossGІO<М%Т       `/п#	nљјъ7SжA;*

val_accЧq?Dр       ё(	#њјъ7SжA;*


accіc?v~s=       йм2	kњјъ7SжA;*

val_loss`№>O f       и-	Єњјъ7SжA;*

losspz<ИYёЊ       `/п#	ГЭHы7SжA<*

val_accзЃp?!Я>з       ё(	GЮHы7SжA<*


accСD?-Њіг       йм2	ЮHы7SжA<*

val_lossЭ5ќ>ВJ7Ђ       и-	АЮHы7SжA<*

loss^>1<ДбIY       `/п#	tы7SжA=*

val_accЈьp?У7ЦЊ       ё(	ўtы7SжA=*


accЗЈ~?џiџ       йм2	.uы7SжA=*

val_loss	2?Жhђ       и-	Xuы7SжA=*

loss>ьЎ<(b"       `/п#	xKшы7SжA>*

val_accK~q?щ,?э       ё(	{Lшы7SжA>*


accW?D
Я       йм2	ФLшы7SжA>*

val_lossЙ?Нз{Й       и-	ќLшы7SжA>*

lossЁg<и#       `/п#	:ь7SжA?*

val_accзЃp?Ц']`       ё(	:ь7SжA?*


accK~? МЭ       йм2	:ь7SжA?*

val_loss)\ё>Н.юb       и-	ю:ь7SжA?*

loss'SЫ<Ы0є       `/п#	n|ь7SжA@*

val_accзЃp?pЂГ       ё(	Й~ь7SжA@*


accW?u       йм2	 ь7SжA@*

val_loss%џ>IЩЛ       и-	Fь7SжA@*

lossЦha<ЗW]       `/п#	z:сь7SжAA*

val_acc4p?RЪWQ       ё(	$;сь7SжAA*


accW?iДмњ       йм2	k;сь7SжAA*

val_loss ?ђўr       и-	 ;сь7SжAA*

lossx&<я=А       `/п#	-4э7SжAB*

val_accЈьp?Оa       ё(	Њ-4э7SжAB*


accСD?(В=       йм2	р-4э7SжAB*

val_lossD?Zаc§       и-	
.4э7SжAB*

lossGѕ<KАЧє       `/п#	?јэ7SжAC*

val_acc[p?
       ё(	шјэ7SжAC*


accaЂ?ТЄ(       йм2	 љэ7SжAC*

val_lossэ?>е$       и-	Lљэ7SжAC*

lossљ<Ѓїрф       `/п#	иэ7SжAD*

val_accЧq?mУ       ё(	иэ7SжAD*


accCЮ}?|MД       йм2	њиэ7SжAD*

val_lossАї?ћЕ       и-	Rиэ7SжAD*

lossT.=~MЩ       `/п#	P*ю7SжAE*

val_accюr?Q6       ё(	Ю*ю7SжAE*


accСD?<уoд       йм2	*ю7SжAE*

val_lossшЛѕ>ЈИФТ       и-	.*ю7SжAE*

lossУj<Ёћ-P       `/п#	:zю7SжAF*

val_accЧq?а8       ё(	Уzю7SжAF*


accьЧ~?7 v       йм2	іzю7SжAF*

val_lossЬј>dwл       и-	!zю7SжAF*

lossљО><е       `/п#	бKЪю7SжAG*

val_accюr?ІЂ_:       ё(	љLЪю7SжAG*


acc~?C{       йм2	MЪю7SжAG*

val_loss:3ь>>       и-		NЪю7SжAG*

losso/Й<|WoF       `/п#	Упя7SжAH*

val_accПXr? V       ё(	iря7SжAH*


accMj~?с,       йм2	Бря7SжAH*

val_lossTь>f)ox       и-	ьря7SжAH*

lossЃMИ<bп?       `/п#	knя7SжAI*

val_accK~q?/Д       ё(	Inя7SжAI*


accЗЈ~?pЧ&Ю       йм2	эnя7SжAI*

val_lossИмщ>рњ       и-	mnя7SжAI*

loss%j<ЂњДІ       `/п#	ЙФя7SжAJ*

val_accЈьp?рзѕЏ       ё(	LФя7SжAJ*


accЗЈ~?њZд       йм2	Фя7SжAJ*

val_lossFл?г"К       и-	ЦФя7SжAJ*

lossVђ<і#ж       `/п#	Нt№7SжAK*

val_accЈьp?фл       ё(	Nu№7SжAK*


acc%?=T       йм2	u№7SжAK*

val_lossа ?ИжT       и-	Пu№7SжAK*

lossВ<аЉ~       `/п#	џc№7SжAL*

val_accЧq?ДdНu       ё(	Vc№7SжAL*


accW? ЛЫ       йм2		c№7SжAL*

val_lossЧPћ>рЇZЗ       и-	Ѕc№7SжAL*

loss{HЅ<VЧ.К       `/п#	}гВ№7SжAM*

val_accK~q? іrЊ       ё(	дВ№7SжAM*


acc+?dNв       йм2	aдВ№7SжAM*

val_lossтДѓ>­VВ       и-	дВ№7SжAM*

lossЅD<ЮРчV       `/п#	шЌё7SжAN*

val_accz5q?ўt       ё(	Д­ё7SжAN*


accіc?Ж­ѕ       йм2	Ўё7SжAN*

val_lossz;ъ>rь.ќ       и-	DЎё7SжAN*

lossЦ<јЩS5       `/п#	њsXё7SжAO*

val_accK~q?і??0       ё(	ЗtXё7SжAO*


accW?ЋЌT       йм2	њtXё7SжAO*

val_lossЭdь>jїЮт       и-	+uXё7SжAO*

lossJба<       `/п#	&ЕЈё7SжAP*

val_accЈьp?;эЄ       ё(	3ЖЈё7SжAP*


accьЧ~?o[       йм2	ЏЖЈё7SжAP*

val_lossЩщ>!о@ј       и-	ЗЈё7SжAP*

lossЇыz<zФС       `/п#	@Oќё7SжAQ*

val_accЧq?ьЭ!y       ё(	Pќё7SжAQ*


accСD? +РI       йм2	hPќё7SжAQ*

val_lossнч>.	З@       и-	ЗPќё7SжAQ*

lossЪ<;:Ъ       `/п#	Mђ7SжAR*

val_accюr?к$ м       ё(	GMђ7SжAR*


accС?х+I       йм2	Mђ7SжAR*

val_lossЪlл>§Иќ       и-	ДMђ7SжAR*

lossЉяv;Ію"       `/п#	љђ7SжAS*

val_accЧq?'шГ%       ё(	ђ7SжAS*


accСD?E$2ї       йм2	лђ7SжAS*

val_lossUш>Ї       и-	ђ7SжAS*

loss}D <йskl       `/п#	Qf№ђ7SжAT*

val_accюr?tзf       ё(	ёf№ђ7SжAT*


acc+?юАбГ       йм2	6g№ђ7SжAT*

val_lossBM№>+>       и-	lg№ђ7SжAT*

lossќЕ;uЅ)А       `/п#	 WAѓ7SжAU*

val_accЈьp?ІЌ        ё(	+XAѓ7SжAU*


accьЧ~?	щО       йм2	mXAѓ7SжAU*

val_lossРъ>ьЖ       и-	ЄXAѓ7SжAU*

loss"&2<§C       `/п#	умѓ7SжAV*

val_accz5q?GТ       ё(	Шнѓ7SжAV*


accW?OфЃ       йм2	2оѓ7SжAV*

val_lossФ ї>)ВЙo       и-	оѓ7SжAV*

lossсюЂ<FІЫi       `/п#		цѓ7SжAW*

val_acc[p?ћ       ё(	сцѓ7SжAW*


accЗЈ~?Ст       йм2	Lцѓ7SжAW*

val_loss+6§>ЬЊO{       и-	Јцѓ7SжAW*

lossз­<a33B       `/п#	6:є7SжAX*

val_acc[p?й       ё(	`7:є7SжAX*


acc+?a%       йм2	џ7:є7SжAX*

val_lossЩў>ЫXу       и-	8:є7SжAX*

losshk<FнВ       `/п#	лВє7SжAY*

val_acc4p?ЪCЊ<       ё(	Гє7SжAY*


accіc?Ѕf=       йм2	јГє7SжAY*

val_lossв|џ>щУт       и-	NДє7SжAY*

lossr<.нX       `/п#	u;мє7SжAZ*

val_accЈьp?ЪV       ё(	3<мє7SжAZ*


accСD?Хљњ,       йм2	f<мє7SжAZ*

val_loss1%?єтhI       и-	<мє7SжAZ*

loss&-<q­­       `/п#	зз)ѕ7SжA[*

val_accK~q?Ин       ё(	Zи)ѕ7SжA[*


accW?ѕх       йм2	и)ѕ7SжA[*

val_lossЩч>{0EЛ       и-	Ди)ѕ7SжA[*

lossд@<Н~н       `/п#	ЊЫ{ѕ7SжA\*

val_accz5q?4/9       ё(	nЬ{ѕ7SжA\*


accW?@ТM       йм2	ЃЬ{ѕ7SжA\*

val_lossЯ ?№Ў4       и-	ЬЬ{ѕ7SжA\*

lossM1z<I%A9       `/п#	Т0Ъѕ7SжA]*

val_accюr?ўў1й       ё(	Л1Ъѕ7SжA]*


accСD?L є       йм2	-2Ъѕ7SжA]*

val_lossЊЈј>;.Х       и-	2Ъѕ7SжA]*

lossљ<[Ещ       `/п#	Њі7SжA^*

val_accz5q?4К81       ё(	Њі7SжA^*


acc%?єз       йм2	ДЊі7SжA^*

val_lossY?ЂT)       и-	пЊі7SжA^*

lossаh<няMІ       `/п#	2Щlі7SжA_*

val_accЈьp?№ї7@       ё(	аЩlі7SжA_*


accСD?я2Ъ       йм2	Ъlі7SжA_*

val_lossI]?т[n/       и-	QЪlі7SжA_*

loss/О<kbЙЄ       `/п#	eMМі7SжA`*

val_accПXr?`ЛЁ       ё(	YNМі7SжA`*


accьЧ~?OО       йм2	ФNМі7SжA`*

val_loss,6ь>ќ|Dj       и-	OМі7SжA`*

lossЋ<едaд       `/п#	I<ї7SжAa*

val_accЁr?9oе       ё(	о<ї7SжAa*


acc"ч~?2ыzК       йм2	=ї7SжAa*

val_lossЦоь>КРB       и-	T=ї7SжAa*

lossѓ(<МЭW       `/п#	йЧ]ї7SжAb*

val_accЁr?=Ч/       ё(	\Ш]ї7SжAb*


accW?
уџX       йм2	Ш]ї7SжAb*

val_loss/mѕ>вSk       и-	ЕШ]ї7SжAb*

lossЇAU<Zь.       `/п#	TЌї7SжAc*

val_accюr?IjнБ       ё(	 Ќї7SжAc*


accіc?vm       йм2	Ќї7SжAc*

val_lossў)ѓ>$бщ       и-	Ќї7SжAc*

lossuј<hzqC