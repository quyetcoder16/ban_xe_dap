package hsf.ban_xe_dap.controller;


import hsf.ban_xe_dap.entity.ProductDetail;
import hsf.ban_xe_dap.service.ProductDetailService;
import hsf.ban_xe_dap.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/productdetails")
public class ProductDetailController {
    @Autowired
    private ProductDetailService productDetailService;

    @Autowired
    private ProductService productService;

    @GetMapping
    public String listProductDetails(Model model) {
        model.addAttribute("productDetails", productDetailService.getAllProductDetails());
        return "productdetail/list";
    }

    @GetMapping("/new")
    public String createProductDetailForm(Model model) {
        model.addAttribute("productDetail", new ProductDetail());
        model.addAttribute("products", productService.getAllProducts());
        return "productdetail/form";
    }

    @PostMapping
    public String saveProductDetail(@ModelAttribute ProductDetail productDetail) {
        productDetailService.saveProductDetail(productDetail);
        return "redirect:/productdetails";
    }

    @GetMapping("/edit/{id}")
    public String editProductDetailForm(@PathVariable Long id, Model model) {
        model.addAttribute("productDetail", productDetailService.getProductDetailById(id));
        model.addAttribute("products", productService.getAllProducts());
        return "productdetail/form";
    }

    @GetMapping("/delete/{id}")
    public String deleteProductDetail(@PathVariable Long id) {
        productDetailService.deleteProductDetail(id);
        return "redirect:/productdetails";
    }
}