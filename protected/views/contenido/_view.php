<?php
/* @var $this ContenidoController */
/* @var $data Contenido */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_contenido')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_contenido), array('view', 'id'=>$data->id_contenido)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre_contenido')); ?>:</b>
	<?php echo CHtml::encode($data->nombre_contenido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contenido')); ?>:</b>
	<?php echo CHtml::encode($data->contenido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_leccion')); ?>:</b>
	<?php echo CHtml::encode($data->id_leccion); ?>
	<br />


</div>