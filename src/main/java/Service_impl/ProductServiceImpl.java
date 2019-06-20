package Service_impl;

import Mapper.ProductMapper;
import PO.Product;
import Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 8:23
 */

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> findProductByName(Product product) {
        return productMapper.findProductByName(product);
    }
}
