package hsf.ban_xe_dap.controller;


import hsf.ban_xe_dap.entity.Product;
import hsf.ban_xe_dap.service.ProductService;
import hsf.ban_xe_dap.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/products")
public class ProductController {
    @Autowired
    private ProductService productService;

    @Autowired
    private WarehouseService warehouseService;

    @GetMapping
    public String listProducts(Model model) {
        model.addAttribute("products", productService.getAllProducts());
        return "product/list";
    }

    @GetMapping("/new")
    public String createProductForm(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("warehouses", warehouseService.getAllWarehouses());
        return "product/form";
    }

    @PostMapping
    public String saveProduct(@ModelAttribute Product product) {
        productService.saveProduct(product);
        return "redirect:/products";
    }

    @GetMapping("/edit/{id}")
    public String editProductForm(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        model.addAttribute("warehouses", warehouseService.getAllWarehouses());
        return "product/form";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/products";
    }
}