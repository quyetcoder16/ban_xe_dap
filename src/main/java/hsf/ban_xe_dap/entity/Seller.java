package hsf.ban_xe_dap.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@DiscriminatorValue("SELLER")
public class Seller extends User {
    private String name;
    private String email;
    private String phone;
    private String address;

    @OneToOne
    @JoinColumn(name = "warehouse_id")
    private Warehouse warehouse;
}