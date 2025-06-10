package hsf.ban_xe_dap.repository;
import hsf.ban_xe_dap.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
}