<?php
$this->breadcrumbs=array(
	'Temases'=>array('index'),
	$model->id_tema,
);

$this->menu=array(
	array('label'=>'List Temas','url'=>array('index')),
	array('label'=>'Create Temas','url'=>array('create')),
	array('label'=>'Update Temas','url'=>array('update','id'=>$model->id_tema)),
	array('label'=>'Delete Temas','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_tema),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Temas','url'=>array('admin')),
);
?>

<h1>View Temas #<?php echo $model->id_tema; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id_tema',
		'nombre',
		'descripcion',
		'id_usuario',
	),
)); ?>
