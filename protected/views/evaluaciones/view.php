<?php
/* @var $this EvaluacionesController */
/* @var $model Evaluaciones */

$this->breadcrumbs=array(
	'Evaluaciones'=>array('index'),
	$model->id_evaluaciones,
);

$this->menu=array(
	array('label'=>'List Evaluaciones', 'url'=>array('index')),
	array('label'=>'Create Evaluaciones', 'url'=>array('create')),
	array('label'=>'Update Evaluaciones', 'url'=>array('update', 'id'=>$model->id_evaluaciones)),
	array('label'=>'Delete Evaluaciones', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_evaluaciones),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Evaluaciones', 'url'=>array('admin')),
);
?>

<h1>View Evaluaciones #<?php echo $model->id_evaluaciones; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_evaluaciones',
		'nombre_evaluaciones',
		'descripcion',
		'id_tema',
	),
)); ?>
