package com.nvtrung.thanhtoan.model;

import java.util.ArrayList;

public class CaKhamDaDangKy {
    private int id;
    private String thoigiandangky;
    private ArrayList<CaKham> caKham;
    private ArrayList<BenhNhanDaKham> benhNhanDaKham;

    public CaKhamDaDangKy() {
    }

    public CaKhamDaDangKy(int id, String thoigiandangky, ArrayList<CaKham> caKham, ArrayList<BenhNhanDaKham> benhNhanDaKham) {
        this.id = id;
        this.thoigiandangky = thoigiandangky;
        this.caKham = caKham;
        this.benhNhanDaKham = benhNhanDaKham;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getThoigiandangky() {
        return thoigiandangky;
    }

    public void setThoigiandangky(String thoigiandangky) {
        this.thoigiandangky = thoigiandangky;
    }

    public ArrayList<CaKham> getCaKham() {
        return caKham;
    }

    public void setCaKham(ArrayList<CaKham> caKham) {
        this.caKham = caKham;
    }

    public ArrayList<BenhNhanDaKham> getBenhNhanDaKham() {
        return benhNhanDaKham;
    }

    public void setBenhNhanDaKham(ArrayList<BenhNhanDaKham> benhNhanDaKham) {
        this.benhNhanDaKham = benhNhanDaKham;
    }
}
