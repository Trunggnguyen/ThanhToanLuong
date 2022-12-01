<%@ page import="java.util.List" %>
<%@ page import="com.nvtrung.thanhtoan.model.BacSi" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.nvtrung.thanhtoan.model.Cong" %>
<%@ page import="com.nvtrung.thanhtoan.model.BangCong" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<h3>Chi tiết bác sĩ</h3>

<div>
    <%
        BacSi bacSi = (BacSi) request.getAttribute("bacSi");
        BangCong bangCong = (BangCong) request.getAttribute("bangCong");
        int tongCaLam = (int) request.getAttribute("tongCaLam");
    %>
    <p>
        Trạng thái:<%=bangCong.getTrangthai() %>
    </p>
    <p>
        Chức vụ:<%=bacSi.getCapbac() %>
    </p>
    <p>
        Email:<%=bacSi.getEmail() %>
    </p>
    <p>
        Sđt:<%=bacSi.getSdt() %>
    </p>
    <p>
        Địa chỉ:<%=bacSi.getDiachi().toString() %>
    </p>


    <h2>Bảng công</h2>

    <p>
        Tổng lương:
        <%=bangCong.getTongluong()%>
    </p>
    <p>Tổng thời gian<%=bangCong.getTonggio() %>
    </p>
    <p>
        Thuế: <%=bangCong.getThue() %>
    </p>
    <p>
        Thực nhận: <%=bangCong.getThucnhan() %>
    </p>
    <p>
        Tổng ca làm: <%=tongCaLam %>
    </p>

</div>
<a href="http://localhost:8080/thanhtoan_war/gdChinhQuanLy.jsp">
    <button>Quay lại</button>
</a>


</body>
</html>
