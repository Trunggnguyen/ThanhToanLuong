package com.nvtrung.thanhtoan;

import com.nvtrung.thanhtoan.dao.BacSiDAO;
import com.nvtrung.thanhtoan.dao.CongDAO;
import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.Cong;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/chi_tiet_bac_si")
public class ChiTietBacSiServlet extends HttpServlet {
    BacSiDAO bacSiDAO = new BacSiDAO();
    CongDAO congDAO = new CongDAO();
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        String idBacSi = request.getParameter("idBacSi").toString();
        BacSi bacSi = bacSiDAO.getBacSiByID(Integer.parseInt(idBacSi));

        List<Cong> congList = congDAO.layDsCong(Integer.parseInt(idBacSi));
        System.out.println(Integer.parseInt(idBacSi));

        request.setAttribute("bacSi", bacSi);
        request.setAttribute("congList", congList);
        request.getRequestDispatcher("/gdChiTietBacSi.jsp").forward(request, response);
    }

}
