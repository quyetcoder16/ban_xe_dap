package hsf.ban_xe_dap.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "orders")
@Data
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "seller_id")
    private Seller seller;

    private LocalDateTime orderDate;
    private String status; // pending, completed, cancelled
    private double totalAmount;

    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;
}