package hsf.ban_xe_dap.controller;


import hsf.ban_xe_dap.entity.OrderDetail;
import hsf.ban_xe_dap.service.OrderDetailService;
import hsf.ban_xe_dap.service.OrderService;
import hsf.ban_xe_dap.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/orderdetails")
public class OrderDetailController {
    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    @GetMapping
    public String listOrderDetails(Model model) {
        model.addAttribute("orderDetails", orderDetailService.getAllOrderDetails());
        return "orderdetail/list";
    }

    @GetMapping("/new")
    public String createOrderDetailForm(Model model) {
        model.addAttribute("orderDetail", new OrderDetail());
        model.addAttribute("orders", orderService.getAllOrders());
        model.addAttribute("products", productService.getAllProducts());
        return "orderdetail/form";
    }

    @PostMapping
    public String saveOrderDetail(@ModelAttribute OrderDetail orderDetail) {
        orderDetailService.saveOrderDetail(orderDetail);
        return "redirect:/orderdetails";
    }

    @GetMapping("/edit/{id}")
    public String editOrderDetailForm(@PathVariable Long id, Model model) {
        model.addAttribute("orderDetail", orderDetailService.getOrderDetailById(id));
        model.addAttribute("orders", orderService.getAllOrders());
        model.addAttribute("products", productService.getAllProducts());
        return "orderdetail/form";
    }

    @GetMapping("/delete/{id}")
    public String deleteOrderDetail(@PathVariable Long id) {
        orderDetailService.deleteOrderDetail(id);
        return "redirect:/orderdetails";
    }
}