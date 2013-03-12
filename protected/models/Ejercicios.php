<?php

/**
 * This is the model class for table "ejercicios".
 *
 * The followings are the available columns in table 'ejercicios':
 * @property integer $id_ejercicio
 * @property string $nombre_ejercicios
 * @property string $descripcion
 * @property string $ejercicio
 * @property integer $id_leccion
 *
 * The followings are the available model relations:
 * @property Leccion $idLeccion
 */
class Ejercicios extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Ejercicios the static model class
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
		return 'ejercicios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nombre_ejercicios, descripcion, ejercicio, id_leccion', 'required'),
			array('id_leccion', 'numerical', 'integerOnly'=>true),
			array('nombre_ejercicios', 'length', 'max'=>50),
			array('descripcion', 'length', 'max'=>100),
			array('ejercicio', 'length', 'max'=>1000),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_ejercicio, nombre_ejercicios, descripcion, ejercicio, id_leccion', 'safe', 'on'=>'search'),
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
			'idLeccion' => array(self::BELONGS_TO, 'Leccion', 'id_leccion'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_ejercicio' => 'Id Ejercicio',
			'nombre_ejercicios' => 'Nombre Ejercicios',
			'descripcion' => 'Descripcion',
			'ejercicio' => 'Ejercicio',
			'id_leccion' => 'Id Leccion',
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

		$criteria->compare('id_ejercicio',$this->id_ejercicio);
		$criteria->compare('nombre_ejercicios',$this->nombre_ejercicios,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('ejercicio',$this->ejercicio,true);
		$criteria->compare('id_leccion',$this->id_leccion);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}