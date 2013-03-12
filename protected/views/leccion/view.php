<?php
/* @var $this LeccionController */
/* @var $model Leccion */

$this->breadcrumbs=array(
	'Leccions'=>array('index'),
	$model->id_leccion,
);

$this->menu=array(
	array('label'=>'List Leccion', 'url'=>array('index')),
	array('label'=>'Create Leccion', 'url'=>array('create')),
	array('label'=>'Update Leccion', 'url'=>array('update', 'id'=>$model->id_leccion)),
	array('label'=>'Delete Leccion', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_leccion),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Leccion', 'url'=>array('admin')),
);
?>

<h1>View Leccion #<?php echo $model->id_leccion; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_leccion',
		'nombre_leccion',
		'descripcion',
		'leccion',
		'id_tema',
	),
)); ?>
