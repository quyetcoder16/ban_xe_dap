package hsf.ban_xe_dap.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@DiscriminatorValue("CUSTOMER")
public class Customer extends User {
    private String name;
    private String email;
    private String phone;
    private String address;

    @OneToMany(mappedBy = "customer")
    private List<Order> orders;
}