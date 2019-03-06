<?php

use Illuminate\Database\Seeder;

class KhoaHocSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('khoa_hoc')->insert([
            ['mangKH_id'=>1,'giangvien_id'=>rand(1,5),'tenKH'=>"WordPress",'tomtat'=>"Khóa học về đồ họa ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>1,'giangvien_id'=>rand(1,5),'tenKH'=>"Photoshop",'tomtat'=>"Khóa học về đồ họa ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>2,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về phần cứng máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>2,'giangvien_id'=>rand(1,5),'tenKH'=>"Sửa chữa điện thoại di động",'tomtat'=>"Khóa học về phần cứng máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>3,'giangvien_id'=>rand(1,5),'tenKH'=>"Lập trình di động",'tomtat'=>"Khóa học về phần mềm máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>3,'giangvien_id'=>rand(1,5),'tenKH'=>"Thiết kế website",'tomtat'=>"Khóa học về phần mềm máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>4,'giangvien_id'=>rand(1,5),'tenKH'=>"Thiết lập router",'tomtat'=>"Khóa học về phần mạng máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>4,'giangvien_id'=>rand(1,5),'tenKH'=>"Vấn đề về kết nối mạng",'tomtat'=>"Khóa học về mạng máy tính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>5,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về tài chính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>5,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về tài chính ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>6,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về sales ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>6,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về sales ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>7,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về chiến lược kinh tế ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>8,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về toán học ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>9,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về khoa học ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>10,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về ngôn ngữ học ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>11,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về dinh dưỡng ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>12,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về Yoga-Fitness ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>13,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về sơ cứu ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>14,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về thanh nhạc ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>15,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về kỹ thuật nhạc cổ điện ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
            ['mangKH_id'=>15,'giangvien_id'=>rand(1,5),'tenKH'=>"Xử lý bo mạch",'tomtat'=>"Khóa học về phần mềm âm nhạc ",'giatien'=>rand(100000,500000),'danhgia'=>rand(1,5),'soluotxem'=>rand(100,1000)],
        ]);
    }
}
