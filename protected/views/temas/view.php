<?php
$this->breadcrumbs=array(
	'Temas'=>array('index'),
	$model->id_tema,
);

$this->menu=array(
	array('label'=>'Listar Temas','url'=>array('index')),
	array('label'=>'Crear Temas','url'=>array('create')),
	array('label'=>'Actualizar Temas','url'=>array('update','id'=>$model->id_tema)),
	array('label'=>'Borrar Temas','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_tema),'confirm'=>'Realmente quiere borrar esto?')),
	array('label'=>'Gestión de Temas','url'=>array('admin')),
);
?>

<h1>Vista de Temas #<?php echo $model->id_tema; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id_tema',
		'nombre',
		'descripcion',
		'id_usuario',
	),
)); ?>
