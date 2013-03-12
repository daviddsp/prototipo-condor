<?php
/* @var $this LeccionController */
/* @var $data Leccion */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_leccion')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_leccion), array('view', 'id'=>$data->id_leccion)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre_leccion')); ?>:</b>
	<?php echo CHtml::encode($data->nombre_leccion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('leccion')); ?>:</b>
	<?php echo CHtml::encode($data->leccion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tema')); ?>:</b>
	<?php echo CHtml::encode($data->id_tema); ?>
	<br />


</div>