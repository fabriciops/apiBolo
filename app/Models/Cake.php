<?php
/**
 * @name Model Cake
 * @tutorial migration responsável pelos dados da tabela cake
 * Teste técnico da empresa Checklist Fácil.
 * fabricio@psdesigneweb.com.br
 * @since 2023/01/14
*/

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Relations\HasMany;


class Cake extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'cakes';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'weight',
        'price',
        'quantity',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany<\App\Models\CakeNotification>
     * @author Fabrício Pinheiro fabricio@psdesigneweb.com.br
     */
    public function subscriptionsNotification(): HasMany
    {
        return $this->hasMany(CakeNotification::class);
    }
}
