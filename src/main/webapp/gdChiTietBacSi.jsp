<%@ page import="java.util.List" %>
<%@ page import="com.nvtrung.thanhtoan.model.BacSi" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.nvtrung.thanhtoan.model.Cong" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<h3>Chi tiết bác sĩ</h3>

<div>
    <%
        BacSi bacSi = (BacSi) request.getAttribute("bacSi");
    %>
    <p>
        <%=bacSi.getId() %>
    </p>

    <p>
        Chức vụ: <%=bacSi.getCapbac() %>
    </p>
    <p>
        Email: <%=bacSi.getEmail() %>
    </p>
    <p>
        Sđt: <%=bacSi.getSdt() %>
    </p>
    <p>
        Địa chỉ: <%=bacSi.getDiachi().toString() %>
    </p>
    <table style="border: 1px solid black; border-collapse: collapse;">
        <%

            List<Cong> congList = (ArrayList) request.getAttribute("congList");
            if (congList != null) {
        %>
        <tr>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Ngày làm việc</th>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Số ca làm</th>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Giờ làm</th>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Đơn giá</th>
            <th style="border: 1px solid black; padding: 0 20px 0 20px">Tổng</th>
        </tr>
        <%
            for (Cong cong : congList) {
        %>
        <tr>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px"><%=cong.getNgaylam()%>
            </td>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px"><%=cong.getCalam() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px"><%=cong.getGiolam() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px"><%=cong.getDongia() %>
            </td>
            <td style="border: 1px solid black; padding: 5px 20px 5px 20px">
                <%=Integer.parseInt(cong.getGiolam()) * Double.parseDouble(cong.getDongia())%>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        Khong tim thay bac si
        <%}%>
    </table>


    <%! double tongLuong(List<Cong> congList) {
        double sum = 0.0;
        for (Cong cong : congList)
            sum += Integer.parseInt(cong.getGiolam()) * Double.parseDouble(cong.getDongia());
        return sum;
    }
    %>
    <%! int tongGio(List<Cong> congList) {
        int sum = 0;
        for (Cong cong : congList)
            sum += Integer.parseInt(cong.getGiolam());
        return sum;
    }
    %>
    <%! String getListCongID(List<Cong> congList) {
        String s = "";
        for (Cong cong : congList)
            s += cong.getId() + " ";
        return s;
    }
    %>

</div>
<form action="ThanhToanServlet" method="post">

    Tổng lương:
    <br><input style="border: none" type="text" name="tongluong" id="tongluong" value="<%=tongLuong(congList) %>"/><br>
    <br><input hidden type="text" name="tonggio" id="tonggio" value="<%=tongGio(congList) %>"/><br>
    <br><input hidden type="text" name="BacSitblNhanVienid" id="BacSitblNhanVienid" value="<%=bacSi.getId() %>"/><br>
    <br><input hidden type="text" name="getListCongID" id="congList" value="<%=getListCongID(congList) %>"/><br>
    <br><input type="submit" value="Xác nhận thanh toán"><br>
</form>


</body>
</html>
