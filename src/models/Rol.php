<?php
use Illuminate\Database\Eloquent\Model;

class Rol extends Model {

    /**
     * tabla asociada
     * @var string
     */
    protected $table = 'roles';
    /**
     * llave primaria
     * @var string
     */
    protected $primaryKey = 'pk_roles';
    /**
     * 
     */
    public $timestamps = false;
}