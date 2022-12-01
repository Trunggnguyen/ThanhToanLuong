
import com.nvtrung.thanhtoan.dao.BacSiDAO;
import com.nvtrung.thanhtoan.dao.NhanVienDAO;
import com.nvtrung.thanhtoan.model.BacSi;
import com.nvtrung.thanhtoan.model.NhanVien;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;

public class TestLayDanhSachBacSi {
    NhanVienDAO nvDao = new NhanVienDAO();
    BacSiDAO bsDao = new BacSiDAO();

    @Test
    void getBaSiById() {
       BacSi bacSi = bsDao.getBacSiByID(1);
        Assertions.assertNotNull(bacSi);
    }

    @Test
    void layDsBacsi() {
        ArrayList<BacSi> bacsi = bsDao.layDsBacSi();
        Assertions.assertNotNull(bacsi.get(0).getId());
    }

    @Test
    void getNvById() {
        NhanVien nhanVien = nvDao.layNhanVienTheoId(1);
        Assertions.assertNotNull(nhanVien);
    }

}
