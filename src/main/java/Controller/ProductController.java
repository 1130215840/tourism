package Controller;

import PO.Product;
import Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author Mr Cheng
 * @date 2019/6/13 - 8:27
 */
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/toSearch")
    public String search(Product product, Model model){
        System.out.println(product.getName());
        List<Product> productList=productService.findProductByName(product);
        System.out.println(productList.size());
        model.addAttribute("productList",productList);
        return "searchResult";
    }
}
