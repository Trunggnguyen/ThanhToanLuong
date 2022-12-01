package com.nvtrung.thanhtoan;

import com.nvtrung.thanhtoan.dao.BacSiDAO;
import com.nvtrung.thanhtoan.dao.BangCongDAO;
import com.nvtrung.thanhtoan.dao.CongDAO;
import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.BangCong;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet("/ThanhToanServlet")
public class ThanhToanServlet extends HttpServlet {
    private BangCongDAO bangCongDAO = new BangCongDAO();
    private CongDAO congDAO = new CongDAO();
    private BacSiDAO bacSiDAO = new BacSiDAO();
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {


            String str = request.getParameter("getListCongID");
            BangCong bangCong = new BangCong();
            bangCong.setTonggio(request.getParameter("tonggio"));
            bangCong.setTongluong(request.getParameter("tongluong"));
            bangCong.setBacSitblNhanVienid(Integer.valueOf(request.getParameter("BacSitblNhanVienid")));

            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            bangCong.setNgaythanhtoan(String.valueOf(dateFormat.format(date)));

            bangCong.setThue("100");
            bangCong.setThucnhan("100");
            bangCong.setTrangthai("Da thanh toan");

            int res = bangCongDAO.luuBangCong(bangCong);
            BangCong bangCong1 = bangCongDAO.getLastBangCongById(res);

            BacSi bacSi = bacSiDAO.getBacSiByID(Integer.valueOf(request.getParameter("BacSitblNhanVienid")));
            String[] getListCongID = str.split(" ");
            for(int i=0; i< getListCongID.length; i++){
                res = congDAO.updateBangCongId(bangCong1.getId(), Integer.valueOf(getListCongID[i]));
            }

            int tongCaLam = bangCongDAO.tongCaLam(bangCong1.getId());

            request.setAttribute("bacSi", bacSi);
            request.setAttribute("bangCong", bangCong);
            request.setAttribute("tongCaLam", tongCaLam);


            doGet(request, response);
        } catch (Throwable ignored) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/gdBangCong.jsp").forward(request, response);
    }
}
