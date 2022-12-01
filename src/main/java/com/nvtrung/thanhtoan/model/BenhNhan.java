package com.nvtrung.thanhtoan.model;

public class BenhNhan {
    public BenhNhan() {
    }

    private int id;
    private String ten, gioitinh, diachi;

    public BenhNhan(int id, String ten, String gioitinh, String diachi) {
        this.id = id;
        this.ten = ten;
        this.gioitinh = gioitinh;
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

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
}
