<%@ page import="java.util.List" %>
<%@ page import="com.nvtrung.thanhtoan.model.BacSi" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function openPage(pageURL) {
            window.location.href = pageURL;
        }
    </script>
</head>
<body>
<h3> Danh sách bác sĩ</h3>
<div>
    <table style="border: 1px solid black; border-collapse: collapse;">
        <%
            List<BacSi> bacsi;
            bacsi = (ArrayList)request.getAttribute("dsbacsi");
            if (bacsi != null && bacsi.size() > 0) {
        %>
        <i>Danh sách bác sĩ</i>
        <tr>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">ID</th>
            <th style="border: 1px solid black; padding: 0 40px 0 40px">Tên</th>
            <th style="border: 1px solid black; padding: 0 100px 0 100px">SĐT</th>
            <th style="border: 1px solid black; padding: 0 70px 0 70px">Chức vụ</th>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Chọn</th>
        </tr>
        <%
            for (BacSi bacsis : bacsi) {
        %>
        <tr>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px"><%=bacsis.getId() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 40px 5px 40px"><%=bacsis.getTen() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 100px 5px 100px"><%=bacsis.getSdt() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 70px 5px 70px"><%=bacsis.getCapbac() %>
            </td>

            </td>
            <td style="border: 1px solid black; padding: 5px 70px 5px 70px"><a href="http://localhost:8080/thanhtoan_war/chi_tiet_bac_si?idBacSi=<%=bacsis.getId()%>">Thanh toán</a>
            </td>
          
        </tr>
        <%
            }
        }else{
        %>
        Không tìm thấy 
        <%}%>
    </table>
</div>

</body>
</html>
