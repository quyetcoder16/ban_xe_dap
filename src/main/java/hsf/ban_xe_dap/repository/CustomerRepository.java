package hsf.ban_xe_dap.repository;
import hsf.ban_xe_dap.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}