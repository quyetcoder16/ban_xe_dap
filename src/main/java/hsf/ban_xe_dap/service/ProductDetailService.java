package hsf.ban_xe_dap.service;
import hsf.ban_xe_dap.entity.ProductDetail;
import hsf.ban_xe_dap.repository.ProductDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductDetailService {
    @Autowired
    private ProductDetailRepository productDetailRepository;

    public List<ProductDetail> getAllProductDetails() {
        return productDetailRepository.findAll();
    }

    public ProductDetail getProductDetailById(Long id) {
        return productDetailRepository.findById(id).orElse(null);
    }

    public ProductDetail saveProductDetail(ProductDetail productDetail) {
        return productDetailRepository.save(productDetail);
    }

    public void deleteProductDetail(Long id) {
        productDetailRepository.deleteById(id);
    }
}