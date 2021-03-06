<?php

namespace App\Http\Resources\TheLoaiKhoaHoc;

use Illuminate\Http\Resources\Json\JsonResource;

class TheLoaiKHResource extends JsonResource
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
            'TenTheLoai' =>$this->TenTheLoai,
            'MangKH' => $this->mang_khoa_hoc,
        ]; 
    }
}
