package com.nvtrung.thanhtoan.model;

public class CaKham {

    private int id;
    private String cakham, soluong, dongia;

    public CaKham() {
    }

    public CaKham(int id, String cakham, String soluong, String dongia) {
        this.id = id;
        this.cakham = cakham;
        this.soluong = soluong;
        this.dongia = dongia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCakham() {
        return cakham;
    }

    public void setCakham(String cakham) {
        this.cakham = cakham;
    }

    public String getSoluong() {
        return soluong;
    }

    public void setSoluong(String soluong) {
        this.soluong = soluong;
    }

    public String getDongia() {
        return dongia;
    }

    public void setDongia(String dongia) {
        this.dongia = dongia;
    }
}
