package hsf.ban_xe_dap.controller;

import hsf.ban_xe_dap.entity.Warehouse;
import hsf.ban_xe_dap.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/warehouses")
public class WarehouseController {
    @Autowired
    private WarehouseService warehouseService;

    @GetMapping
    public String listWarehouses(Model model) {
        model.addAttribute("warehouses", warehouseService.getAllWarehouses());
        return "warehouse/list";
    }

    @GetMapping("/new")
    public String createWarehouseForm(Model model) {
        model.addAttribute("warehouse", new Warehouse());
        return "warehouse/form";
    }

    @PostMapping
    public String saveWarehouse(@ModelAttribute Warehouse warehouse) {
        warehouseService.saveWarehouse(warehouse);
        return "redirect:/warehouses";
    }

    @GetMapping("/edit/{id}")
    public String editWarehouseForm(@PathVariable Long id, Model model) {
        model.addAttribute("warehouse", warehouseService.getWarehouseById(id));
        return "warehouse/form";
    }

    @GetMapping("/delete/{id}")
    public String deleteWarehouse(@PathVariable Long id) {
        warehouseService.deleteWarehouse(id);
        return "redirect:/warehouses";
    }
}