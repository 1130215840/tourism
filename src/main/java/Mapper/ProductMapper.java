package Mapper;

import PO.Product;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 8:18
 */
public interface ProductMapper {

    List<Product> findProductByName(Product product);

}
