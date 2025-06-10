package hsf.ban_xe_dap.repository;
import hsf.ban_xe_dap.entity.Warehouse;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WarehouseRepository extends JpaRepository<Warehouse, Long> {
}