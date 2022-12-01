import com.nvtrung.thanhtoan.dao.BacSiDAO;
import com.nvtrung.thanhtoan.dao.CongDAO;
import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.Cong;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.util.ArrayList;

public class TestLayDanhSachCong {
    CongDAO comgDao = new CongDAO();


    @Test
    void layDsCong() {
        ArrayList<Cong> com = comgDao.layDsCong(1);
        Assertions.assertNotNull(com.get(0).getId());
    }

    @Test
    void upDateCong() throws SQLException {
        int  com = comgDao.updateBangCongId(1, 1);
        Assertions.assertNotNull(com);
    }

}
