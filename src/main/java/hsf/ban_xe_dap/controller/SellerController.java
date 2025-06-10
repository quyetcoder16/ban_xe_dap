package hsf.ban_xe_dap.controller;

import hsf.ban_xe_dap.entity.Seller;
import hsf.ban_xe_dap.service.SellerService;
import hsf.ban_xe_dap.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/sellers")
public class SellerController {
    @Autowired
    private SellerService sellerService;

    @Autowired
    private WarehouseService warehouseService;

    @GetMapping
    public String listSellers(Model model) {
        model.addAttribute("sellers", sellerService.getAllSellers());
        return "seller/list";
    }

    @GetMapping("/new")
    public String createSellerForm(Model model) {
        model.addAttribute("seller", new Seller());
        model.addAttribute("warehouses", warehouseService.getAllWarehouses());
        return "seller/form";
    }

    @PostMapping
    public String saveSeller(@ModelAttribute Seller seller) {
        sellerService.saveSeller(seller);
        return "redirect:/sellers";
    }

    @GetMapping("/edit/{id}")
    public String editSellerForm(@PathVariable Long id, Model model) {
        model.addAttribute("seller", sellerService.getSellerById(id));
        model.addAttribute("warehouses", warehouseService.getAllWarehouses());
        return "seller/form";
    }

    @GetMapping("/delete/{id}")
    public String deleteSeller(@PathVariable Long id) {
        sellerService.deleteSeller(id);
        return "redirect:/sellers";
    }
}