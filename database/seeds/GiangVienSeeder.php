<?php

use Illuminate\Database\Seeder;
// use Faker\Provider\tr_TR\DateTime;

class GiangVienSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 5; $i++) { 
            DB::table('giang_vien')->insert([
                'user_id' => rand(1,10),
                'TenGiangVien' => "GV_".$i+1,
                'tomtat' => "Tôi là giảng viên ".$i+1,
                'SoLuongHocVien' => rand(10,50),
                'SoLuongKhoaHoc' => rand(1,10),
                'thoihanGV_id' => rand(1,4),
                'created_at' => new DateTime(),
            ]);
        }
    }
}
