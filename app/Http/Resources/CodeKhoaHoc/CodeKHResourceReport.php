<?php

namespace App\Http\Resources\CodeKhoaHoc;

use Illuminate\Http\Resources\Json\JsonResource;

class CodeKHResourceReport extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'code' => $this->code,
            'KhoaHoc_id' =>$this->KhoaHoc_id,
            'TrangThai' => $this->TrangThai,
        ];
    }
}
