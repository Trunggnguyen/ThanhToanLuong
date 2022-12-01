import com.nvtrung.thanhtoan.dao.BangCongDAO;
import com.nvtrung.thanhtoan.model.BangCong;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestnhapVaLayBangCong {
    BangCongDAO bangcomgDao = new BangCongDAO();


    @Test
    void tongCalam() {
        int tong   = bangcomgDao.tongCaLam(1);
        Assertions.assertNotNull(tong);
    }

    @Test
    void luuBangCong() throws SQLException {
        BangCong bangCong = new BangCong();
        bangCong.setTonggio("tonggio");
        bangCong.setTongluong("tongluong");
        bangCong.setBacSitblNhanVienid(Integer.valueOf("1"));
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        bangCong.setNgaythanhtoan(String.valueOf(dateFormat.format(date)));
        bangCong.setThue("100");
        bangCong.setThucnhan("100");
        bangCong.setTrangthai("Da thanh toan");

        int res = bangcomgDao.luuBangCong(bangCong);
        Assertions.assertNotNull(res);
    }

    @Test
    void layBangCong() {
        BangCong bangCong = bangcomgDao.getLastBangCongById(1);
        Assertions.assertNotNull(bangCong);
    }
}
