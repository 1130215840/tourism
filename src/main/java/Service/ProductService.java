package Service;

import PO.Product;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 8:23
 */
public interface ProductService {

    List<Product> findProductByName(Product product);
}
