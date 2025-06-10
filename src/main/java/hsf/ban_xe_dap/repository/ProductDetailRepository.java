package hsf.ban_xe_dap.repository;
import hsf.ban_xe_dap.entity.ProductDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductDetailRepository extends JpaRepository<ProductDetail, Long> {
}