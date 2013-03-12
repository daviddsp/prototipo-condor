<?php
/* @var $this LeccionController */
/* @var $model Leccion */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'leccion-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre_leccion'); ?>
		<?php echo $form->textField($model,'nombre_leccion',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'nombre_leccion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>60,'maxlength'=>200)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'leccion'); ?>
		<?php echo $form->textField($model,'leccion',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'leccion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'id_tema'); ?>
		<?php echo $form->textField($model,'id_tema'); ?>
		<?php echo $form->error($model,'id_tema'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->