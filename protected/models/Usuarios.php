<?php

/**
 * This is the model class for table "usuarios".
 *
 * The followings are the available columns in table 'usuarios':
 * @property integer $id_usuario
 * @property string $login
 * @property string $password
 * @property string $nombre
 * @property string $apellido
 * @property string $correo_electronico
 * @property string $profesion
 * @property string $tipo_usuario
 * @property string $fecha
 *
 * The followings are the available model relations:
 * @property Temas[] $temases
 * @property Movimientos[] $movimientoses
 */
class Usuarios extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Usuarios the static model class
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
		return 'usuarios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('login, password, nombre, apellido, correo_electronico, profesion, tipo_usuario, fecha', 'required'),
			array('login, password, nombre, apellido, correo_electronico', 'length', 'max'=>50),
			array('profesion', 'length', 'max'=>100),
			array('tipo_usuario', 'length', 'max'=>11),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_usuario, login, password, nombre, apellido, correo_electronico, profesion, tipo_usuario, fecha', 'safe', 'on'=>'search'),
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
			'temases' => array(self::HAS_MANY, 'Temas', 'id_usuario'),
			'movimientoses' => array(self::HAS_MANY, 'Movimientos', 'id_usuario'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_usuario' => 'Id Usuario',
			'login' => 'Login',
			'password' => 'Password',
			'nombre' => 'Nombre',
			'apellido' => 'Apellido',
			'correo_electronico' => 'Correo Electronico',
			'profesion' => 'Profesion',
			'tipo_usuario' => 'Tipo Usuario',
			'fecha' => 'Fecha',
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

		$criteria->compare('id_usuario',$this->id_usuario);
		$criteria->compare('login',$this->login,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('apellido',$this->apellido,true);
		$criteria->compare('correo_electronico',$this->correo_electronico,true);
		$criteria->compare('profesion',$this->profesion,true);
		$criteria->compare('tipo_usuario',$this->tipo_usuario,true);
		$criteria->compare('fecha',$this->fecha,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}