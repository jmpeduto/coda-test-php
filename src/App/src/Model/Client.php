<?php

namespace App\Model;

/**
 * Description of Model
 * @property int $id ID of item
 * @property mixed $firstname client first name
 * @property mixed $lastname client last name
 * @property mixed $email client email
 * @property mixed $phone client phone
 * @property mixed $photo client photo route
 * @property mixed $created_at date of creation
 * @property mixed $updated_at date of update
 * @property mixed $deleted date of deletion

 *
 * @OA\Schema()
 * @OA\Property(
 *  property="id",
 *  type="integer",
 *  description=""
 * )
 * @OA\Property(
 *  property="firstname",
 *  type="string",
 *  description=""
 * )
 * @OA\Property(
 *  property="lastname",
 *  type="string",
 *  description=""
 * )
 * @OA\Property(
 *  property="email",
 *  type="string",
 *  description=""
 * )
 * @OA\Property(
 *  property="phone",
 *  type="string",
 *  description=""
 * )
 * @OA\Property(
 *  property="photo",
 *  type="string",
 *  description=""
 * )
 * @OA\Property(
 *  property="updated_at",
 *  type="",
 *  description=""
 * )
 * @OA\Property(
 *  property="deleted",
 *  type="integer",
 *  description=""
 * )

 *
 * @author jmpeduto
 */
class Client extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'client';
    
    /**
    * Configurar un filtro a todas las querys
    * @return void
    */
    protected static function boot(): void
    {
        parent::boot();
        
        static::addGlobalScope('exclude', function (\Illuminate\Database\Eloquent\Builder $builder) {
            $builder->where('client.deleted', 0);
        });
    }
}