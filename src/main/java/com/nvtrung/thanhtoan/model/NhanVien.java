package com.nvtrung.thanhtoan.model;

public class NhanVien {

    private int id;
    private String ten, email, gioitinh, tendangnhap, matkhau, ngaysinh, sdt;
    private DiaChi diachi;

    public NhanVien() {
    }

    public NhanVien(int id, String ten, String email, String gioitinh, String tendangnhap, String matkhau, String ngaysinh, String sdt, DiaChi diachi) {
        this.id = id;
        this.ten = ten;
        this.email = email;
        this.gioitinh = gioitinh;
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
        this.ngaysinh = ngaysinh;
        this.sdt = sdt;
        this.diachi = diachi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public DiaChi getDiachi() {
        return diachi;
    }

    public void setDiachi(DiaChi diachi) {
        this.diachi = diachi;
    }
}
