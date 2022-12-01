package com.nvtrung.thanhtoan.model;

public class DiaChi {
    private int id ;
    private String soNha, duong, tinh, quocgia;

    public DiaChi() {
    }

    public DiaChi(int id, String soNha, String duong, String tinh, String quocgia) {
        this.id = id;
        this.soNha = soNha;
        this.duong = duong;
        this.tinh = tinh;
        this.quocgia = quocgia;
    }

    public DiaChi( String soNha, String duong, String tinh, String quocgia) {
        this.soNha = soNha;
        this.duong = duong;
        this.tinh = tinh;
        this.quocgia = quocgia;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSoNha() {
        return soNha;
    }

    public void setSoNha(String soNha) {
        this.soNha = soNha;
    }

    public String getDuong() {
        return duong;
    }

    public void setDuong(String duong) {
        this.duong = duong;
    }

    public String getTinh() {
        return tinh;
    }

    public void setTinh(String tinh) {
        this.tinh = tinh;
    }

    public String getQuocgia() {
        return quocgia;
    }

    public void setQuocgia(String quocgia) {
        this.quocgia = quocgia;
    }

    @Override
    public String toString() {
        return "soNha: " + soNha + ", duong: " + duong + ", tinh: " + tinh + ", quocgia: " + quocgia;
    }
}
