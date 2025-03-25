# k58kmt
Bài tập 02 của sv:k225480106068 - VŨ ĐỨC TÚ - Môn Hệ quản trị csdl
BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 25/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

I. tạo bảng 
tạo bảng cho BoMon
![image](https://github.com/user-attachments/assets/87cfd89e-a343-42f1-85da-c5c8b0b94aa4)

nhập thuộc tính của bảng
![image](https://github.com/user-attachments/assets/16be8e16-2d7b-4730-8f61-6e6497612d2b)

tạo khoá chính cho bảng 
![image](https://github.com/user-attachments/assets/219d4af7-6de3-4d66-b75d-bab0ff6e9258)

đặt tên cho bảng 
![image](https://github.com/user-attachments/assets/adea97f0-6bee-49d3-ac5f-77f1e76d8b75)

*Các bảng còn lại làm tương tự.
tạo bảng DKMH
![image](https://github.com/user-attachments/assets/5c13cc7c-e303-4438-946d-f4c7b2964189)

tạo bảng giaovien
![image](https://github.com/user-attachments/assets/cc79cc3a-7ea0-4b70-92dd-ffa5dd12133c)
tạo bảng GVCN
![image](https://github.com/user-attachments/assets/ed0f5133-912b-4a68-94a0-b45d868c62cd)
tạo bảng khoa
![image](https://github.com/user-attachments/assets/1401e097-3d73-45df-a176-1dbd0271d4c1)
tạo bảng Lop
![image](https://github.com/user-attachments/assets/b171ea88-655d-4008-b7a4-cb0fd2db8952)
tạo bảng LopHP
![image](https://github.com/user-attachments/assets/ad776b73-2bd5-45e7-8ad7-c48725d825aa)
tạo bảng LopSV
![image](https://github.com/user-attachments/assets/a240655b-7c75-4991-a7fd-1ece0107166a)
tạo bảng MonHoc
![image](https://github.com/user-attachments/assets/ae68135e-dc33-4bf0-98e1-bc262c5b3bd4)
tạo bảng SinhVien
![image](https://github.com/user-attachments/assets/20b4a944-7105-487c-a56c-571b03d2c8a8)

II. Tạo khoá phụ cho bảng 
tạo khoá phụ cho bảng MonHoc
![image](https://github.com/user-attachments/assets/152911a6-3181-4cba-855b-d497cde1bc3f)
cài đặt liên kết 
![image](https://github.com/user-attachments/assets/7e5269df-c090-4cb9-b018-35842754735f)
![image](https://github.com/user-attachments/assets/d3f16420-0418-47b7-a81d-5e35fea11347)
![image](https://github.com/user-attachments/assets/36208f25-671f-40c8-af43-f9981ee9e740)

*Các bảng còn lại làm tương tự
tạo khoá cho DKMH
![image](https://github.com/user-attachments/assets/17083f1c-506a-43f8-879a-6b88c0c66ab5)
tạo khoá cho bảng GiaoVien
![image](https://github.com/user-attachments/assets/a89f4332-4a6b-401c-a4d0-22e994e0ece2)
tạo khoá cho bảng GVCN
![image](https://github.com/user-attachments/assets/20442bdd-9aaa-434f-bf2f-4f92f4a1bd39)
tạo khoá cho bảng GVCN
![image](https://github.com/user-attachments/assets/3496dbf2-8735-452c-a310-3392ee4d4983)
![image](https://github.com/user-attachments/assets/dc6bf86e-e742-45e9-b2b3-c0ed6cf4cfed)
tạo khoá cho bảng LopHP
![image](https://github.com/user-attachments/assets/fc1cf039-6777-40c9-8321-c074295035e4)
![image](https://github.com/user-attachments/assets/35343d78-b1e1-4fd3-abf1-1ccfc6401870)
tạo bảng cho LopSV
![image](https://github.com/user-attachments/assets/532b9634-150f-4a99-a0df-81da51f5908f)
![image](https://github.com/user-attachments/assets/6a6774fc-eb90-40bf-8b7a-3873bf7b2ddf)

III. Tạo điều kiện cho bảng
tạo điều kiện cho bảng SinhVien
![image](https://github.com/user-attachments/assets/8993fec8-f68a-4299-80da-e868db594036)
viết điều kiện cho bảng 
![image](https://github.com/user-attachments/assets/19e558fb-7209-40e9-830c-dd943e9b08ce)
![image](https://github.com/user-attachments/assets/5d702baf-1a23-4213-93c5-e82f6d6ba51d)
check xem điều kiện xem có chạy theo đúng không
![image](https://github.com/user-attachments/assets/9563f904-5786-4996-aa7d-0720146cb6ed)

*Các bảng còn lại làm tương tự
tạo điều kiện cho bảng GiaoVien
![image](https://github.com/user-attachments/assets/bee763ff-5e53-49c8-b93c-d54738ae21a4)
tạo điều kiện cho bảng MonHoc
![image](https://github.com/user-attachments/assets/8022865d-75b3-47b0-9fb2-2bc4439c60f6)
tạo điều kiện cho bảng DKMH
![image](https://github.com/user-attachments/assets/64927870-75d1-4455-b8a4-5b7bc6d40c27)

IV. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương.
![image](https://github.com/user-attachments/assets/54e4b7d2-03c0-45bf-b9be-4db2ffc4c736)
![image](https://github.com/user-attachments/assets/4206682f-825a-4855-be66-163f7a1dfb43)
![image](https://github.com/user-attachments/assets/c0204e1d-b8a9-4384-a6fc-3e3f68a0f768)
![image](https://github.com/user-attachments/assets/b638e83d-c9ac-4ed5-b2b6-707fac072491)
![image](https://github.com/user-attachments/assets/a16cb93e-5452-4d04-a300-f22964b808d5)
![image](https://github.com/user-attachments/assets/bd7d6e55-53a3-4219-bb6a-91c9738f98fa)
![image](https://github.com/user-attachments/assets/73e01070-a889-4ca9-af88-6c32682ea295)
Kết Thúc bài em cảm ơn thầy đã xem ạ.



