package hsf.ban_xe_dap.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
public class Warehouse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String location;
    private int capacity;

    @OneToOne(mappedBy = "warehouse")
    private Seller seller;

    @OneToMany(mappedBy = "warehouse")
    private List<Product> products;
}