package com.nvtrung.thanhtoan.dao;

import com.nvtrung.thanhtoan.model.DiaChi;
import com.nvtrung.thanhtoan.model.NhanVien;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NhanVienDAO extends DAO{

    public NhanVienDAO() {
        super();
    }

    public NhanVien layNhanVienTheoId(int id) {
        String sql = "SELECT * FROM tblNhanVien WHERE id = ?";
        try {
            NhanVien nhanVien = new NhanVien();
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet result = preparedStatement.executeQuery();
            if (result.next()) {
                nhanVien.setId(result.getInt("id"));
                nhanVien.setTen(result.getString("ten"));
                nhanVien.setEmail(result.getString("email"));
                nhanVien.setGioitinh(result.getString("gioitinh"));
                nhanVien.setTendangnhap(result.getString("tendangnhap"));
                nhanVien.setMatkhau(result.getString("matkhau"));
                nhanVien.setNgaysinh(result.getString("ngaysinh"));
                nhanVien.setSdt(result.getString("sdt"));
                nhanVien.setDiachi(new DiaChi(result.getString("sonha"),result.getString("duong"),result.getString("tinh"),result.getString("quocgia") ));
            }
            return nhanVien;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
