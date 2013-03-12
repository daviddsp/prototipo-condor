<?php
/* @var $this EvaluacionesController */
/* @var $model Evaluaciones */

$this->breadcrumbs=array(
	'Evaluaciones'=>array('index'),
	$model->id_evaluaciones=>array('view','id'=>$model->id_evaluaciones),
	'Update',
);

$this->menu=array(
	array('label'=>'List Evaluaciones', 'url'=>array('index')),
	array('label'=>'Create Evaluaciones', 'url'=>array('create')),
	array('label'=>'View Evaluaciones', 'url'=>array('view', 'id'=>$model->id_evaluaciones)),
	array('label'=>'Manage Evaluaciones', 'url'=>array('admin')),
);
?>

<h1>Update Evaluaciones <?php echo $model->id_evaluaciones; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>