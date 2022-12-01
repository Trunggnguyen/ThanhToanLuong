CREATE DATABASE db_tra_luong;
USE db_tra_luong;

CREATE TABLE tblBenhNhanDaKham (id int(10) NOT NULL AUTO_INCREMENT, thoigiankham varchar(255) NOT NULL, donthuoc varchar(255) NOT NULL, chiphi varchar(255) NOT NULL, tblBenhNhanid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblCaLamDaDangKy (id int(10) NOT NULL AUTO_INCREMENT, thoigiandangky varchar(255) NOT NULL, tblCaLamid int(10) NOT NULL, tblBenhNhanDaKhamid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblCong (id int(10) NOT NULL AUTO_INCREMENT, ngaylam varchar(255) NOT NULL, calam varchar(255) NOT NULL, giolam varchar(255) NOT NULL, dongia varchar(255) NOT NULL,  tblBacSitblNhanVienid int(10) NOT NULL, tblCaLamDaDangKyid int(10) NOT NULL, tblBangCongid int(10), PRIMARY KEY (id));
CREATE TABLE tblBangCong (id int(10) NOT NULL AUTO_INCREMENT, tongluong varchar(255) NOT NULL, tonggio varchar(255) NOT NULL, ngaythanhtoan varchar(255) NOT NULL, thue varchar(255) NOT NULL, thucnhan varchar(255) NOT NULL, trangthai varchar(255) NOT NULL,  BacSitblNhanVienid int(10) NOT NULL, tblQuanLytblNhanVienid int(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblBacSi (tblNhanVienid int(10) NOT NULL, capbac varchar(255) NOT NULL, PRIMARY KEY (tblNhanVienid));
CREATE TABLE tblQuanLy (tblNhanVienid int(10) NOT NULL, vitri varchar(255) NOT NULL, PRIMARY KEY (tblNhanVienid));
CREATE TABLE tblNhanVien (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, email varchar(255) NOT NULL, gioitinh varchar(255) NOT NULL, tendangnhap varchar(255) NOT NULL, matkhau varchar(255) NOT NULL, ngaysinh varchar(255) NOT NULL, sdt varchar(255) NOT NULL, sonha varchar(255) NOT NULL, duong varchar(255) NOT NULL, tinh varchar(255) NOT NULL, quocgia varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblCaLam (id int(10) NOT NULL AUTO_INCREMENT, calam varchar(255) NOT NULL, soluong varchar(255) NOT NULL, dongia varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE tblBenhNhan (id int(10) NOT NULL AUTO_INCREMENT, ten varchar(255) NOT NULL, goitinh varchar(255) NOT NULL, diachi varchar(255) NOT NULL, PRIMARY KEY (id));


INSERT INTO tblCong (id, ngaylam, calam, giolam, dongia, tblBacSitblNhanVienid, tblCaLamDaDangKyid)
VALUES (1, '18/11/2022', '10h', '2', '400.000', 1, 1);
INSERT INTO tblCong (id, ngaylam, calam, giolam, dongia, tblBacSitblNhanVienid, tblCaLamDaDangKyid)
VALUES (2, '19/11/2022', '10h', '2', '400.000', 1, 1);

INSERT INTO tblCong (id, ngaylam, calam, giolam, dongia, tblBacSitblNhanVienid, tblCaLamDaDangKyid)
VALUES (3, '20/11/2022', '13h', '2', '600.000', 1, 1);

INSERT INTO tblCong (id, ngaylam, calam, giolam, dongia, tblBacSitblNhanVienid, tblCaLamDaDangKyid)
VALUES (4, '21/11/2022', '10h', '2', '400.000', 1, 1);

INSERT INTO tblCong (id, ngaylam, calam, giolam, dongia, tblBacSitblNhanVienid, tblCaLamDaDangKyid)
VALUES (5, '22/11/2022', '10h', '2', '400.000', 1, 1);


INSERT INTO tblNhanVien (id, ten, email, gioitinh, tendangnhap, matkhau, ngaysinh, sdt, sonha, duong, tinh, quocgia)
VALUES (1, 'Nv A' , 'trungvannguyen282@gmail.com' ,'Nam' ,'NvA' , 'abc', '20/10/19998', '083888383838', '1', 'Thanh binh', 'Ha Nam', 'VietNam' );
INSERT INTO tblNhanVien (id, ten, email, gioitinh, tendangnhap, matkhau,ngaysinh, sdt, sonha, duong, tinh, quocgia)
VALUES (2, 'Nv B' , 'trungvannguyen282@gmail.com' ,'Nam' ,'NvA' , 'abc', '20/10/19998', '083888383838', '1', 'Thanh binh', 'Ha Nam', 'VietNam' );
INSERT INTO tblNhanVien (id, ten, email, gioitinh, tendangnhap, matkhau,ngaysinh, sdt, sonha, duong, tinh, quocgia)
VALUES (3, 'NT C' , 'trungva@gmail.com' ,'Nam' ,'NvA' , 'abc', '20/10/19998', '083888383838', '1', 'Thanh binh', 'Ha Nam', 'VietNam' );
INSERT INTO tblNhanVien (id, ten, email, gioitinh, tendangnhap, matkhau,ngaysinh, sdt, sonha, duong, tinh, quocgia)
VALUES (4, 'Nguyen Van T' , 'abc@gmail.com' ,'Nam' ,'NvA' , 'abc', '20/10/19998', '083888383838', '1', 'Thanh binh', 'Ha Nam', 'VietNam' );
INSERT INTO tblNhanVien (id, ten, email, gioitinh, tendangnhap, matkhau,ngaysinh, sdt, sonha, duong, tinh, quocgia)
VALUES (5, 'Nguyen Thi C' , 'trungvannguyen282@gmail.com' ,'Nu' ,'NvA' , 'abc', '20/10/19998', '083888383838', '1', 'Thanh binh', 'Ha Nam', 'VietNam' );

INSERT INTO tblQuanLy (tblNhanVienid, vitri)
VALUES (1, 'QuanLy');
INSERT INTO tblQuanLy (tblNhanVienid, vitri)
VALUES (2, 'GiamSat');




INSERT INTO tblBacSi (tblNhanVienid, capbac)
VALUES (1, 'BacSi');
INSERT INTO tblBacSi (tblNhanVienid, capbac)
VALUES (2, 'BacSi');
INSERT INTO tblBacSi (tblNhanVienid, capbac)
VALUES (3, 'BacSi');
INSERT INTO tblBacSi (tblNhanVienid, capbac)
VALUES (4, 'Y Ta');
INSERT INTO tblBacSi (tblNhanVienid, capbac)
VALUES (5, 'BacSi');




INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (1, '20/10/2022' ,1 , 1);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (2, '20/10/2022' ,1 , 1);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (3, '20/10/2022' ,1 , 2);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (4, '20/10/2022' ,1 , 2);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (5, '20/10/2022' ,3 , 3);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (6, '20/10/2022' ,2 , 3);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (7, '20/10/2022' ,2 , 4);
INSERT INTO tblCaLamDaDangKy (id, thoigiandangky, tblCaLamid, tblBenhNhanDaKhamid)
VALUES (8, '20/10/2022' ,1 , 5);




INSERT INTO tblBenhNhanDaKham (id, thoigiankham, donthuoc, chiphi, tblBenhNhanid)
VALUES (1, '08h30' ,'Paracetamol' , '200.000', 1);
INSERT INTO tblBenhNhanDaKham (id, thoigiankham, donthuoc, chiphi, tblBenhNhanid)
VALUES (2, '13h30' ,'Paracetamol' , '600.000', 2);
INSERT INTO tblBenhNhanDaKham (id, thoigiankham, donthuoc, chiphi, tblBenhNhanid)
VALUES (3, '14h30' ,'Paracetamol' , '200.000', 3);
INSERT INTO tblBenhNhanDaKham (id, thoigiankham, donthuoc, chiphi, tblBenhNhanid)
VALUES (4, '10h30' ,'Paracetamol' , '400.000', 4);
INSERT INTO tblBenhNhanDaKham (id, thoigiankham, donthuoc, chiphi, tblBenhNhanid)
VALUES (5, '08h30' ,'Paracetamol' , '200.000', 5);

INSERT INTO tblCaLam (id, calam, soluong, dongia)
VALUES (1, 'Sang', '10', '200.000');
INSERT INTO tblCaLam (id, calam, soluong, dongia)
VALUES (2, 'Chieu', '20', '400.000');
INSERT INTO tblCaLam (id, calam, soluong, dongia)
VALUES (3, 'Toi', '20', '600.000');

INSERT INTO tblBenhNhan (id, ten, goitinh, diachi)
VALUES (1, 'BenhNhan01', 'Nam', 'Ha Noi');
INSERT INTO tblBenhNhan (id, ten, goitinh, diachi)
VALUES (2, 'BenhNhan02', 'Nam', 'Ha Nam');
INSERT INTO tblBenhNhan (id, ten, goitinh, diachi)
VALUES (3, 'BenhNhan03', 'Nam', 'HCM');
INSERT INTO tblBenhNhan (id, ten, goitinh, diachi)
VALUES (4, 'BenhNhan04', 'Nam', 'SaiGon');
INSERT INTO tblBenhNhan (id, ten, goitinh, diachi)
VALUES (5, 'BenhNhan05', 'Nam', 'Nghe An');




ALTER TABLE tblCong ADD CONSTRAINT FKtblCong875624 FOREIGN KEY (tblBangCongid) REFERENCES tblBangCong (id);

ALTER TABLE tblBacSi ADD CONSTRAINT FKtblBacSi507985 FOREIGN KEY (tblNhanVienid) REFERENCES tblNhanVien (id);
ALTER TABLE tblQuanLy ADD CONSTRAINT FKtblQuanLy552567 FOREIGN KEY (tblNhanVienid) REFERENCES tblNhanVien (id);
ALTER TABLE tblBangCong ADD CONSTRAINT FKtblBangCon271009 FOREIGN KEY (BacSitblNhanVienid) REFERENCES tblBacSi (tblNhanVienid);
ALTER TABLE tblCong ADD CONSTRAINT FKtblCong255649 FOREIGN KEY (tblBacSitblNhanVienid) REFERENCES tblBacSi (tblNhanVienid);
ALTER TABLE tblCaLamDaDangKy ADD CONSTRAINT FKtblCaLamDa81798 FOREIGN KEY (tblCaLamid) REFERENCES tblCaLam (id);
ALTER TABLE tblBangCong ADD CONSTRAINT FKtblBangCon376 FOREIGN KEY (tblQuanLytblNhanVienid) REFERENCES tblQuanLy (tblNhanVienid);
ALTER TABLE tblBenhNhanDaKham ADD CONSTRAINT FKtblBenhNha46557 FOREIGN KEY (tblBenhNhanid) REFERENCES tblBenhNhan (id);
ALTER TABLE tblCaLamDaDangKy ADD CONSTRAINT FKtblCaLamDa60765 FOREIGN KEY (tblBenhNhanDaKhamid) REFERENCES tblBenhNhanDaKham (id);
ALTER TABLE tblCong ADD CONSTRAINT FKtblCong228459 FOREIGN KEY (tblCaLamDaDangKyid) REFERENCES tblCaLamDaDangKy (id);










