USE [QUANLYSV]
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'k123      ', N'vuductu', N'2004-10-23')
GO
INSERT [dbo].[Khoa] ([makhoa], [tenKhoa]) VALUES (N'999       ', N'dientu    ')
GO
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'123       ', N'dientu    ', N'999       ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'456       ', N'doduycop', N'1981-01-01', N'123       ')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'2323      ', N'toan', N'2         ')
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [mamon], [magv]) VALUES (N'123       ', N'kmt', N'3         ', N'2323      ', N'456       ')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [masv], [DiemThi], [PhanTramThi]) VALUES (N'111       ', N'123       ', N'k123      ', N'4         ', N'5         ')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'789       ', N'111       ', N'10        ')
GO
