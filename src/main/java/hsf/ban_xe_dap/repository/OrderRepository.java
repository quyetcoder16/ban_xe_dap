package hsf.ban_xe_dap.repository;
import hsf.ban_xe_dap.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Long> {
}