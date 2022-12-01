package com.nvtrung.thanhtoan;

import java.util.List;

import com.nvtrung.thanhtoan.dao.BacSiDAO;
import com.nvtrung.thanhtoan.model.BacSi;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "GiaoDienChinhServlet", value = "/ds_bacsi")
public class GiaoDienChinhServlet extends HttpServlet {
    BacSiDAO bacSiDAO = new BacSiDAO();

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<BacSi> dsbacsi = bacSiDAO.layDsBacSi();
            request.setAttribute("dsbacsi", dsbacsi);
            request.getRequestDispatcher("/gdDsBacSi.jsp").forward(request, response);
        } catch (Throwable ignored) {}
    }
    public void destroy() {
    }
}