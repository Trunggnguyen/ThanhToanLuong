package com.nvtrung.thanhtoan.model;

public class Cong {
    private int id;
    private String ngaylam, calam, giolam, dongia;

    private BacSi bacsi;
    private  QuanLy quanly;
    private  BangCong bangCong ;


    public Cong(int id, String ngaylam, String calam, String giolam, String dongia, BangCong bangCong) {
        this.id = id;
        this.ngaylam = ngaylam;
        this.calam = calam;
        this.giolam = giolam;
        this.dongia = dongia;
        this.bangCong = bangCong;
    }


    public Cong() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNgaylam() {
        return ngaylam;
    }

    public void setNgaylam(String ngaylam) {
        this.ngaylam = ngaylam;
    }

    public String getCalam() {
        return calam;
    }

    public void setCalam(String calam) {
        this.calam = calam;
    }

    public String getGiolam() {
        return giolam;
    }

    public void setGiolam(String giolam) {
        this.giolam = giolam;
    }

    public String getDongia() {
        return dongia;
    }

    public void setdDongia(String dongia) {
        this.dongia = dongia;
    }
}
