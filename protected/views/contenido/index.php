<?php
/* @var $this ContenidoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Contenidos',
);

$this->menu=array(
	array('label'=>'Create Contenido', 'url'=>array('create')),
	array('label'=>'Manage Contenido', 'url'=>array('admin')),
);
?>

<h1>Contenidos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
