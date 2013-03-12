<?php
/* @var $this EvaluacionesController */
/* @var $model Evaluaciones */

$this->breadcrumbs=array(
	'Evaluaciones'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Evaluaciones', 'url'=>array('index')),
	array('label'=>'Manage Evaluaciones', 'url'=>array('admin')),
);
?>

<h1>Create Evaluaciones</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>