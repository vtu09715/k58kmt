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
