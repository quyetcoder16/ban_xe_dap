package hsf.ban_xe_dap.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class ProductDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private String color;
    private String size;
}