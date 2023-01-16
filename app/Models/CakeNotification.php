<?php

namespace App\Models;

use App\Events\UserNotificationToCake;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class CakeNotification extends Model
{
    use HasFactory;
    use Notifiable;

    protected $guarded = [];

    protected $table = 'cake_notification';

    protected $fillable = [
        'email',
        'cake_id'
    ];

    protected $dispatchesEvents = [
        'saved' => UserNotificationToCake::class,
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo<\App\Models\Cake, 
     * \App\Models\CakeNotification>
     * @author  Fabrício Pinheiro fabricio@psdesigneweb.com.br
     */
    public function cake(): BelongsTo
    {
        return $this->belongsTo(Cake::class);
    }

    public static function verificaSeInscrito($email, $cake_id)
    {
        if(count(CakeNotification::where([
            ['email', 'like', "%$email%"],
            ['cake_id','=',$cake_id]
            ])->get()) > 0){
            return true;
        }
        return false;
    }
}
