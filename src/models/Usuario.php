<?php
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model {
    protected $table = 'usuarios';
    public $timestamps = false;
    protected $primaryKey = 'pk_usuarios';
}