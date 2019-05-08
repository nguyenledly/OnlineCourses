<?php

namespace App\Http\Controllers;

use App\GiangVien;
use Illuminate\Http\Request;
use App\Http\Resources\GiangVien\GiangVienCollection;
use App\Http\Resources\GiangVien\GiangVienResource;
use App\Http\Requests\GiangVienRequest;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\KhoaHoc;
use App\Http\Resources\User\KhoaHocCuaToiCollection;
use App\Exceptions\GiangVienKhongDung;
use App\HoaDon;
use App\Http\Resources\GiangVien\LichSuBanKhoaHocResource;
use App\Http\Resources\KhoaHoc\KhoaHocCollection;


class GiangVienController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api')->except('index','show','KhoaHocDaDay');
        $this->middleware('isGiangVien')->except('index','show','KhoaHocDaDay');
        // $this->middleware('checkThoiHanGV');
        // $this->KiemTraThoiHanGV(Request $request, GiangVien $GiangVien, \Closure $next);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return GiangVienResource::collection(GiangVien::all());
    }
    public function getGiangVien()
    {
        $user = Auth::user();
        $giangvien = GiangVien::where('user_id',$user->id)->first();
        return new GiangVienResource($giangvien);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GiangVien  $giangVien
     * @return \Illuminate\Http\Response
     */
    public function show( GiangVien $GiangVien)
    {
        // $giangVien = GiangVien::find($id);
        return new GiangVienResource($GiangVien);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GiangVien  $giangVien
     * @return \Illuminate\Http\Response
     */
    public function edit(GiangVien $giangVien)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GiangVien  $giangVien
     * @return \Illuminate\Http\Response
     */
    public function update(GiangVienRequest $request,  GiangVien $GiangVien)
    {
        $GiangVien->update($request->all());
        return response()->json([
            'data' => "Cập nhật thành công giảng viên $GiangVien->TenGiangVien",
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GiangVien  $giangVien
     * @return \Illuminate\Http\Response
     */
    public function destroy( GiangVien $GiangVien)
    {
        $GiangVien->delete();
        return response()->json([
            'data' => "Xoá thành công giảng viên $GiangVien->TenGiangVien",
        ]);
    }

    public function GiaHanThoiHanGV(Request $request,  GiangVien $GiangVien)
    {
        $ThoiHanGVMoi = \App\ThoiHanGV::select('SoNgay')->where('id',$request->ThoiHanGV_id)->first()->value('SoNgay');
        $NgayHetHanCu = $GiangVien->NgayHetHan;
        $NgayHetHanMoi = date('d-m-Y H:i:s',strtotime($NgayHetHanCu.' + '.$ThoiHanGVMoi.' days'));
        $GiangVien->NgayHetHan = $NgayHetHanMoi;
        $GiangVien->ThoiHanGV_id = $request->ThoiHanGV_id;
        $GiangVien->save();  
        
        return response([
            'data' => new GiangVienResource($GiangVien),
        ]);
    }

    public function KhoaHocDaDay( GiangVien $GiangVien)
    {
        $khoahoc = KhoaHoc::where('GiangVien_id',$GiangVien->id)->where('TrangThai',1)->get();
        return KhoaHocCuaToiCollection::collection($khoahoc);
    }

    public function LichSuBanKhoaHoc( GiangVien $GiangVien)
    {
        $this->KiemTraGiangVien($GiangVien);
        $khoahoc = KhoaHoc::where('GiangVien_id',$GiangVien->id)->get();
        $collection = collect();
        foreach($khoahoc as $kh)
        {
            $hoadon = HoaDon::where('KhoaHoc_id',$kh->id)->get();
            foreach($hoadon as $hd)
            {
                $collection->add($hd);
            }
        }
        return LichSuBanKhoaHocResource::collection($collection);
    }
    public function KiemTraGiangVien(GiangVien $GiangVien)
    {
        $giangvien = Auth::user()->giang_vien;
        foreach($giangvien as $gv)
        {
            if($gv->id != $GiangVien->id)
                throw new GiangVienKhongDung;
        }
    }
    public function KhoaHocChoDuyet(GiangVien $GiangVien)
    {
        $this->KiemTraGiangVien($GiangVien);
        $khoahoc = KhoaHoc::where('GiangVien_id',$GiangVien->id)->where('TrangThai',0)->get();
        return KhoaHocCollection::collection($khoahoc);
    }
}
