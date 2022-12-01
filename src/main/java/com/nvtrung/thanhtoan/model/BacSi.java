package com.nvtrung.thanhtoan.model;

public class BacSi extends NhanVien {
    private String capbac;

    public BacSi() {
    }
    public BacSi(String capbac) {
        this.capbac = capbac;
    }

    public BacSi(int id, String ten, String email, String gioitinh, String tendangnhap, String matkhau, String ngaysinh, String sdt, DiaChi diachi, String capbac) {
        super(id, ten, email, gioitinh, tendangnhap, matkhau, ngaysinh, sdt, diachi);
        this.capbac = capbac;
    }

    public String getCapbac() {
        return capbac;
    }

    public void setCapbac(String capbac) {
        this.capbac = capbac;
    }
}
