package com.nvtrung.thanhtoan.dao;

import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.NhanVien;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BacSiDAO extends DAO{

    private NhanVienDAO nhanvienDAo;
    public BacSiDAO() {
        super();
        nhanvienDAo = new NhanVienDAO();

    }

    public BacSi getBacSiByID(int idBacSi) {
        String sql = "SELECT * FROM tblBacSi WHERE tblNhanVienid = ?";
        BacSi bacSi = new BacSi();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, idBacSi);
            ResultSet result = preparedStatement.executeQuery();
            if (result.next()) {
                NhanVien nv = nhanvienDAo.layNhanVienTheoId(idBacSi);
             return new BacSi(idBacSi, nv.getTen(), nv.getEmail(), nv.getGioitinh(), nv.getTendangnhap(), nv.getMatkhau(), nv.getNgaysinh(), nv.getSdt(),nv.getDiachi(), result.getString("capbac") );

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<BacSi> layDsBacSi() {
        ArrayList<BacSi> dsbacsi = new ArrayList<>();
        String sql = "SELECT * FROM tblBacSi ";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            ResultSet result = pre.executeQuery();
            while (result.next()) {
                NhanVien nv = nhanvienDAo.layNhanVienTheoId(result.getInt("tblNhanVienid"));
                dsbacsi.add( new BacSi(result.getInt("tblNhanVienid"), nv.getTen(), nv.getEmail(), nv.getGioitinh(), nv.getTendangnhap(), nv.getMatkhau(), nv.getNgaysinh(), nv.getSdt(),nv.getDiachi(), result.getString("capbac") ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dsbacsi;
    }
}
