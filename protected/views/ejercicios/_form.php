<?php
/* @var $this EjerciciosController */
/* @var $model Ejercicios */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'ejercicios-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre_ejercicios'); ?>
		<?php echo $form->textField($model,'nombre_ejercicios',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'nombre_ejercicios'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ejercicio'); ?>
		<?php echo $form->textField($model,'ejercicio',array('size'=>60,'maxlength'=>1000)); ?>
		<?php echo $form->error($model,'ejercicio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'id_leccion'); ?>
		<?php echo $form->textField($model,'id_leccion'); ?>
		<?php echo $form->error($model,'id_leccion'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->