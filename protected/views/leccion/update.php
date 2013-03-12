<?php
/* @var $this LeccionController */
/* @var $model Leccion */

$this->breadcrumbs=array(
	'Leccions'=>array('index'),
	$model->id_leccion=>array('view','id'=>$model->id_leccion),
	'Update',
);

$this->menu=array(
	array('label'=>'List Leccion', 'url'=>array('index')),
	array('label'=>'Create Leccion', 'url'=>array('create')),
	array('label'=>'View Leccion', 'url'=>array('view', 'id'=>$model->id_leccion)),
	array('label'=>'Manage Leccion', 'url'=>array('admin')),
);
?>

<h1>Update Leccion <?php echo $model->id_leccion; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>