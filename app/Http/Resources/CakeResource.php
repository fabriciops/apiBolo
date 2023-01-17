<?php

namespace App\Http\Resources;

use App\Models\Cake;
use Illuminate\Http\Resources\Json\JsonResource;
/**
 * @OA\Schema(
 *     title="CakeResource",
 *     description="Project resource",
 *     @OA\Xml(
 *         name="CakeResource"
 *     )
 * )
 */
class CakeResource extends JsonResource
{
     /**
     * @OA\Property(
     *     title="Data",
     *     description="Data wrapper"
     * )
     *
     * @var \App\Models\Cake[]
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
