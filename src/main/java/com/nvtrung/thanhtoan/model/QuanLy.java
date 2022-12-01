package com.nvtrung.thanhtoan.model;

public class QuanLy extends NhanVien{
    String vitri;


    public QuanLy() {
    }

    public QuanLy(String vitri) {
        this.vitri = vitri;
    }

//    public QuanLy(int id, String ten, String email, String gioitinh, String tendangnhap, String matkhau, String ngaysinh, String sdt, DiaChi diachi, String vitri) {
//        super(id, ten, email, gioitinh, tendangnhap, matkhau, ngaysinh, sdt, diachi);
//        this.vitri = vitri;
//    }

    public String getVitri() {
        return vitri;
    }

    public void setVitri(String vitri) {
        this.vitri = vitri;
    }
}
