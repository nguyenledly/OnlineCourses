<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CyrildeWit\EloquentViewable\Viewable;
use CyrildeWit\EloquentViewable\Contracts\Viewable as ViewableContract;

class KhoaHoc extends Model implements ViewableContract
{
    use Viewable;
    //
    protected $table = "khoa_hoc";
    protected $fillable = ['MangKH_id','GiangVien_id','HinhAnh','TenKH','TomTat','GiaTien','GiamGia','ThanhTien','DanhGia','SoLuotXem','TrangThai'];
    public function giang_vien()
    {
        return $this->belongsTo('App\GiangVien','GiangVien_id','id');
    }

    public function mang_khoa_hoc()
    {
        return $this->belongsTo('App\MangKhoaHoc','MangKH_id','id');
    }

    public function hoa_don()
    {
        return $this->hasMany('App\HoaDon','KhoaHoc_id','id');
    }
    
    public function comment()
    {
        return $this->hasMany('App\Comment','KhoaHoc_id','id');
    }

    public function bai_giang()
    {
        return $this->hasMany('App\BaiGiang','KhoaHoc_id','id');
    }

    public function code_KH()
    {
        return $this->hasMany('App\CodeKhoaHoc','KhoaHoc_id','id');
    }
    public function danh_gia()
    {
        return $this->hasManyThrough('App\DanhGia','App\HoaDon','KhoaHoc_id','HoaDon_id','id');
    }
}
