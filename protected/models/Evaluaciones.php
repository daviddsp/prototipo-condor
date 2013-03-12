<?php

/**
 * This is the model class for table "evaluaciones".
 *
 * The followings are the available columns in table 'evaluaciones':
 * @property integer $id_evaluaciones
 * @property string $nombre_evaluaciones
 * @property string $descripcion
 * @property integer $id_tema
 *
 * The followings are the available model relations:
 * @property Temas $idTema
 * @property Remediales[] $remediales
 * @property EvaPregunta[] $evaPreguntas
 */
class Evaluaciones extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Evaluaciones the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'evaluaciones';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nombre_evaluaciones, descripcion, id_tema', 'required'),
			array('id_tema', 'numerical', 'integerOnly'=>true),
			array('nombre_evaluaciones', 'length', 'max'=>100),
			array('descripcion', 'length', 'max'=>200),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_evaluaciones, nombre_evaluaciones, descripcion, id_tema', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'idTema' => array(self::BELONGS_TO, 'Temas', 'id_tema'),
			'remediales' => array(self::HAS_MANY, 'Remediales', 'id_evaluaciones'),
			'evaPreguntas' => array(self::HAS_MANY, 'EvaPregunta', 'id_evaluaciones'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_evaluaciones' => 'Id Evaluaciones',
			'nombre_evaluaciones' => 'Nombre Evaluaciones',
			'descripcion' => 'Descripcion',
			'id_tema' => 'Id Tema',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_evaluaciones',$this->id_evaluaciones);
		$criteria->compare('nombre_evaluaciones',$this->nombre_evaluaciones,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('id_tema',$this->id_tema);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}