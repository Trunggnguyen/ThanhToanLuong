package com.nvtrung.thanhtoan.dao;

import com.nvtrung.thanhtoan.model.BangCong;
import com.nvtrung.thanhtoan.model.Cong;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BangCongDAO extends  DAO {
    public int tongCaLam(int idBangCong) {
        String sql = "SELECT count(*) as cnt FROM tblcong WHERE tblBangCongid = ?";
        System.out.println("id bang cong:" + idBangCong);
        int cnt = -1;
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, idBangCong);
            ResultSet result = preparedStatement.executeQuery();
            if (result.next()) {
                cnt = result.getInt("cnt");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cnt;
    }
    public BangCong getLastBangCongById(int id) {
        BangCong bangCong = null;
        String sql = "SELECT * FROM db_tra_luong.tblbangcong order by id desc limit 1;";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet result = preparedStatement.executeQuery();
            if (result.next()) {
                bangCong = new BangCong(result.getInt("id"),
                        result.getString("tongluong"),
                        result.getString("tonggio"),
                        result.getString("ngaythanhtoan"),
                        result.getString("thue"),
                        result.getString("thucnhan"),
                        result.getString("trangthai"),
                        result.getInt("BacSitblNhanVienid"),
                        result.getInt("tblQuanLytblNhanVienid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bangCong;
    }
    public int luuBangCong(BangCong bangCong) throws SQLException {
        String sql = "INSERT INTO tblbangcong (tongluong, tonggio, ngaythanhtoan, thue, " +
                "thucnhan, trangthai, BacSitblNhanVienid, tblQuanLytblNhanVienid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, bangCong.getTongluong());
        statement.setString(2, bangCong.getTonggio());
        statement.setString(3, bangCong.getNgaythanhtoan());
        statement.setString(4, bangCong.getThue());
        statement.setString(5, bangCong.getThucnhan());
        statement.setString(6, bangCong.getTrangthai());
        statement.setInt(7, bangCong.getBacSitblNhanVienid());
        statement.setInt(8, bangCong.getBacSitblNhanVienid());
        System.out.println("tong luong: " + bangCong.getTongluong());

        int rowsInserted = statement.executeUpdate();
        if (rowsInserted > 0) {
            System.out.println("A new bang cong was inserted successfully!");
            return 1;
        }
        else {
            System.out.println("khong thanh cong");
            return 0;
        }
    }
}
