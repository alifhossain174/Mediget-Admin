<?php

namespace App\Http\Resources;

use App\Models\MedicineRequestItem;
use Illuminate\Http\Resources\Json\JsonResource;

class MedicineRequestResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'id' => $this->id,
            'serial_no' => $this->serial_no,
            'user_id' => $this->user_id,
            'name' => $this->name,
            'phone' => $this->phone,
            'address' => $this->address,
            'slug' => $this->slug,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'requested_items' => MedicineRequestItem::where('medicine_request_id', $this->id)->get(),
        ];
    }
}
