<?php

/**
 * @name AuthController
 * @tutorial Controller responsável por realizar as funções de login e registro
 * Teste técnico da empresa Checklist Fácil.
 * fabricio@psdesigneweb.com.br
 * @since 2023/01/14
*/

namespace App\Http\Requests\Api\V1\CakesController;

use Illuminate\Foundation\Http\FormRequest;


/**
 * Class CakeStoreRequest.
 *
 * @author Fabrício Pinheiro fabricio@psdesigneweb.com.br
 */

class CakeStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
            'weight' => 'required|numeric',
            'quantity' => 'required|integer',
        ];
    }
}
