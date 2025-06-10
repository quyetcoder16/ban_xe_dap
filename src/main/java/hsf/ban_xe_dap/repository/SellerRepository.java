package hsf.ban_xe_dap.repository;

import hsf.ban_xe_dap.entity.Seller;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SellerRepository extends JpaRepository<Seller, Long> {
}