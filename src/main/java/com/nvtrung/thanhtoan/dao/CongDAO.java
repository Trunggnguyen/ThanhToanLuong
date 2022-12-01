package com.nvtrung.thanhtoan.dao;

import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.BangCong;
import com.nvtrung.thanhtoan.model.Cong;
import com.nvtrung.thanhtoan.model.NhanVien;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CongDAO extends  DAO{
    public ArrayList<Cong> layDsCong(int idBacSi) {
        ArrayList<Cong> dscong = new ArrayList<>();
        String sql = "SELECT * FROM tblcong WHERE tblBacSitblNhanVienid = ?";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, idBacSi);
            ResultSet result = preparedStatement.executeQuery();
            while (result.next()) {
                dscong.add( new Cong(result.getInt("id"),
                        result.getString("ngaylam"),
                        result.getString("calam"),
                        result.getString("giolam"),
                        result.getString("dongia"),
                        result.getInt("tblBangCongId")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dscong;
    }
    public int updateBangCongId(Integer bangCongId, Integer congId) throws SQLException {
        String sql = "UPDATE tblcong SET tblBangCongId = ? WHERE id=?";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, bangCongId);
        statement.setInt(2, congId);

        int rowsInserted = statement.executeUpdate();
        System.out.println(1);
        if (rowsInserted > 0) {
            System.out.println("update thanh cong");
            return 1;
        }
        else {
            System.out.println("update khong thanh cong");
            return 0;
        }
    }
}
