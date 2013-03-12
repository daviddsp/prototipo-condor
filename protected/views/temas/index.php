<?php
$this->breadcrumbs=array(
	'Temas',
);

$this->menu=array(
	array('label'=>'Crear Temas','url'=>array('create')),
	array('label'=>'Gestión de Temas','url'=>array('admin')),
);
?>

<h1>Temas</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
