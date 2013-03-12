<?php
/* @var $this EvaluacionesController */
/* @var $data Evaluaciones */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_evaluaciones')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_evaluaciones), array('view', 'id'=>$data->id_evaluaciones)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre_evaluaciones')); ?>:</b>
	<?php echo CHtml::encode($data->nombre_evaluaciones); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tema')); ?>:</b>
	<?php echo CHtml::encode($data->id_tema); ?>
	<br />


</div>