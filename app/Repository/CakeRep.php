<?php

namespace App\Repository;

use App\Http\Resources\CakeResource;
use App\Models\Cake;

class CakeRep implements CakeRepository{

    function all(): array {
        $cake = [
            CakeResource::collection(Cake::with('subscriptionsNotification'))->paginate(20)
        ];
        
        return $cake;
    }
}

