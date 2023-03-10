<?php



namespace App\Http\Requests\Api\V1\CakesController;

use Illuminate\Foundation\Http\FormRequest;
use OpenApi\Attributes as OA;


class CakeUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'string|max:255',
            'price' => 'numeric',
            'weight_in_grams' => 'numeric',
            'quantity' => 'integer',
        ];
    }
}
