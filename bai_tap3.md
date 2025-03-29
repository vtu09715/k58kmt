 BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------
Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

Nhắc lại nội quy học tập:
SV vi phạm 1 trong các lỗi sau chỉ 1 lần sẽ bị cấm thi: 🚫
1. Nghỉ ko lý do chính đáng.
2. Không làm bài tập về nhà.
3. Vắng bài kiểm tra.
4. Nói chuyện tự do trong lớp.

Bên cạnh đó, sẽ có điểm thưởng 10đ cho sv :  🎁
1. Trả lời đúng câu hỏi trên lớp.
2. Hỏi câu hỏi làm thầy khó trả lời.

---NHẮC LẠI THỜI HẠN DEADLINE: 23H59 NGÀY 30/03/2025---


I. tạo bảng DKMH và bảng Diem
quy trình tạo bảng DKMH mới 
![image](https://github.com/user-attachments/assets/0cdd9f69-642e-4f2f-8103-0f14c1fd9470)
![image](https://github.com/user-attachments/assets/e8ed183f-b0df-40ad-b4b8-507467abec18)
![image](https://github.com/user-attachments/assets/de622d3f-fc31-4cca-a39c-f7afd4692c19)
![image](https://github.com/user-attachments/assets/83dfe4f0-c565-4ffd-83ff-5f9bd4f039b3)
tạo khoá ngoại cho bảng DKMH (tạo khoá ngoại như đã làm ở bài 2)
![image](https://github.com/user-attachments/assets/67da61b7-7e05-46be-89f6-876ec61625ee)
đặt điều kiện cho trường PhanTramThi(đặt như đã hướng dẫn ửo bài 2)
![image](https://github.com/user-attachments/assets/62f2a984-f170-4866-9a57-610a3a58de78)
tạo bảng iem
![image](https://github.com/user-attachments/assets/f8e27689-96a3-4c35-90da-3c3c10432d4a)
tạo khoá ngoại cho bảng Diem
![image](https://github.com/user-attachments/assets/c176ad96-84c1-437f-95a9-d38e78691b29)
dặt điều kiện cho trường điểm 
![image](https://github.com/user-attachments/assets/f723b5f3-a601-4504-947f-20ef1505a656)

II. nhập thông tin cho sinh viên để truy vấn tính điểm 
![image](https://github.com/user-attachments/assets/f651e441-c3c2-4b39-bc87-1f2badff3548)
![image](https://github.com/user-attachments/assets/cffec933-7360-42b8-abf2-c22fbfbaf1f7)
![image](https://github.com/user-attachments/assets/e505bf09-e9b2-4738-8eee-6a107574decc)
![image](https://github.com/user-attachments/assets/e1654d1a-d500-4c8a-8415-eee8f75fe9d9)
![image](https://github.com/user-attachments/assets/a96f5f13-3b79-4c7e-be98-7e283fc63e6f)
![image](https://github.com/user-attachments/assets/437d6930-d841-45fe-b297-c2a0791aef1f)
kết quả tính điểm thành phần của 1 sinh viên
![image](https://github.com/user-attachments/assets/ae9103f4-a40f-4fa6-8d04-44e40d0091f9)___
II. tạo các bảng liên kết khoá ngoại và khoá chính 
![image](https://github.com/user-attachments/assets/e42d78a9-e9ef-435e-b642-87b4706a195c)
![image](https://github.com/user-attachments/assets/5177c967-d6a5-4b77-bc22-9cd4887e1b21)
kết quả
![image](https://github.com/user-attachments/assets/5eac931b-ae57-4537-9907-acf5fc3cdd2e)
LỆNH TRUY VẤN TÍNH ĐIỂM THÀNH PHẦN CỦA 1 SINH VIÊN TẠI 1 LỚP HỌC 
USE QUANLYSV;

SELECT 
    SV.Masv, 
    SV.HoTen, 
    LHP.MaLopHP, 
    LHP.TenLopHP, 
    MH.Tenmon, 
	SUM(CAST(D.diem AS FLOAT)) * (1 - CAST(DKMH.PhanTramThi AS FLOAT) / 100) AS DiemThanhPhan
FROM 
    SinhVien SV
JOIN 
    DKMH ON SV.Masv = DKMH.Masv
JOIN 
    LopHP LHP ON DKMH.MaLopHP = LHP.MaLopHP
JOIN 
    MonHoc MH ON LHP.MaMon = MH.MaMon
JOIN 
    Diem D ON DKMH.id_dk = D.id_dk
WHERE 
    SV.Masv = 'k123' -- Thay MASV123 bằng mã sinh viên cần tìm
GROUP BY 
    SV.Masv, SV.HoTen, LHP.MaLopHP, LHP.TenLopHP, MH.Tenmon, DKMH.PhanTramThi;
    
