package com.nvtrung.thanhtoan.model;

import java.util.ArrayList;

public class BangCong {
    private int id;
    private String tongluong, tonggio, ngaythanhtoan, thue, thucnhan, trangthai;
    private Integer tblQuanLytblNhanVienid;
    private Integer BacSitblNhanVienid;

    public BangCong() {
    }

    public BangCong(int id, String tongluong, String tonggio, String ngaythanhtoan, String thue, String thucnhan, String trangthai, Integer tblQuanLytblNhanVienid, Integer bacSitblNhanVienid) {
        this.id = id;
        this.tongluong = tongluong;
        this.tonggio = tonggio;
        this.ngaythanhtoan = ngaythanhtoan;
        this.thue = thue;
        this.thucnhan = thucnhan;
        this.trangthai = trangthai;
        this.tblQuanLytblNhanVienid = tblQuanLytblNhanVienid;
        this.BacSitblNhanVienid = bacSitblNhanVienid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTongluong() {
        return tongluong;
    }

    public void setTongluong(String tongluong) {
        this.tongluong = tongluong;
    }

    public String getTonggio() {
        return tonggio;
    }

    public void setTonggio(String tonggio) {
        this.tonggio = tonggio;
    }

    public String getNgaythanhtoan() {
        return ngaythanhtoan;
    }

    public void setNgaythanhtoan(String ngaythanhtoan) {
        this.ngaythanhtoan = ngaythanhtoan;
    }

    public String getThue() {
        return thue;
    }

    public void setThue(String thue) {
        this.thue = thue;
    }

    public String getThucnhan() {
        return thucnhan;
    }

    public void setThucnhan(String thucnhan) {
        this.thucnhan = thucnhan;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }


    public Integer getTblQuanLytblNhanVienid() {
        return tblQuanLytblNhanVienid;
    }

    public void setTblQuanLytblNhanVienid(Integer tblQuanLytblNhanVienid) {
        this.tblQuanLytblNhanVienid = tblQuanLytblNhanVienid;
    }

    public Integer getBacSitblNhanVienid() {
        return BacSitblNhanVienid;
    }

    public void setBacSitblNhanVienid(Integer bacSitblNhanVienid) {
        BacSitblNhanVienid = bacSitblNhanVienid;
    }
}
