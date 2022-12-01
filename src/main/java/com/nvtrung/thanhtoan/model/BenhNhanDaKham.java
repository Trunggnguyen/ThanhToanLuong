package com.nvtrung.thanhtoan.model;

public class BenhNhanDaKham {

    private int id;
    private String thoigian, donthuoc, chiphi;
    private  BenhNhan benhnhan;

    public BenhNhanDaKham() {
    }

    public BenhNhanDaKham(int id, String thoigian, String donthuoc, String chiphi, BenhNhan benhnhan) {
        this.id = id;
        this.thoigian = thoigian;
        this.donthuoc = donthuoc;
        this.chiphi = chiphi;
        this.benhnhan = benhnhan;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getThoigian() {
        return thoigian;
    }

    public void setThoigian(String thoigian) {
        this.thoigian = thoigian;
    }

    public String getDonthuoc() {
        return donthuoc;
    }

    public void setDonthuoc(String donthuoc) {
        this.donthuoc = donthuoc;
    }

    public String getChiphi() {
        return chiphi;
    }

    public void setChiphi(String chiphi) {
        this.chiphi = chiphi;
    }

    public BenhNhan getBenhnhan() {
        return benhnhan;
    }

    public void setBenhnhan(BenhNhan benhnhan) {
        this.benhnhan = benhnhan;
    }
}
