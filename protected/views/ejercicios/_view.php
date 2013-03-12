<?php
/* @var $this EjerciciosController */
/* @var $data Ejercicios */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_ejercicio')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_ejercicio), array('view', 'id'=>$data->id_ejercicio)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre_ejercicios')); ?>:</b>
	<?php echo CHtml::encode($data->nombre_ejercicios); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ejercicio')); ?>:</b>
	<?php echo CHtml::encode($data->ejercicio); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_leccion')); ?>:</b>
	<?php echo CHtml::encode($data->id_leccion); ?>
	<br />


</div>