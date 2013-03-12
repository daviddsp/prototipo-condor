<?php
/* @var $this EjerciciosController */
/* @var $model Ejercicios */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_ejercicio'); ?>
		<?php echo $form->textField($model,'id_ejercicio'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre_ejercicios'); ?>
		<?php echo $form->textField($model,'nombre_ejercicios',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ejercicio'); ?>
		<?php echo $form->textField($model,'ejercicio',array('size'=>60,'maxlength'=>1000)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_leccion'); ?>
		<?php echo $form->textField($model,'id_leccion'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->