<?php
/* @var $this LeccionController */
/* @var $model Leccion */

$this->breadcrumbs=array(
	'Leccions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Leccion', 'url'=>array('index')),
	array('label'=>'Manage Leccion', 'url'=>array('admin')),
);
?>

<h1>Create Leccion</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>