package hsf.ban_xe_dap.repository;


import hsf.ban_xe_dap.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}