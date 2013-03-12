<?php
/* @var $this LeccionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Leccions',
);

$this->menu=array(
	array('label'=>'Create Leccion', 'url'=>array('create')),
	array('label'=>'Manage Leccion', 'url'=>array('admin')),
);
?>

<h1>Leccions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
