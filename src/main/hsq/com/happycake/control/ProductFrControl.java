package com.happycake.control;

import com.happycake.pojo.KindVo;
import com.happycake.pojo.Pinfo;
import com.happycake.pojo.Product;
import com.happycake.pojo.ProductExt;
import com.happycake.service.ProductFrService;
import com.happycake.util.Subset;
import com.happycake.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-27
 * Time: 上午11:06
 */
@Controller
@RequestMapping("/front/product")
public class ProductFrControl {
    private final ProductFrService productFrService;

    @Autowired
    public ProductFrControl(ProductFrService productFrService) {
        this.productFrService = productFrService;
    }

    @RequestMapping("checkout")
    public String checkout(){
        return "/front/checkout";
    }
    @RequestMapping("contact")
    public String contact(){
        return "/front/contact";
    }
    @RequestMapping("products")
    public String products(){
        return "/front/products";
    }
    @RequestMapping("single")
    public String single(String productId,HttpServletRequest request){
        Product product = productFrService.queryProduct(productId);
        List<String>colors=new ArrayList<>();
        List<String>weights=new ArrayList<>();
        List<String>steps=new ArrayList<>();
        for (String color:
             product.getProductColor().split(" ")) {
            colors.add(color);
        }
        for (String weight:
                product.getProductWeight().split(" ")) {
            weights.add(weight);
        }
        for (String step:
                product.getProductStep().split(" ")) {
            steps.add(step);
        }
        KindVo kindVo=new KindVo();
        kindVo.setColors(colors);
        kindVo.setWeights(weights);
        kindVo.setSteps(steps);
        request.setAttribute("product",product);
        request.setAttribute("kindVo",kindVo);
        return "/front/single";
    }

    /*获得商品的颜色*/
    @RequestMapping("queryColors")
    @ResponseBody
    public List<String> queryColors(){
        return productFrService.queryPinfoColor();
    }

    /*获得筛选出的商品*/
    @RequestMapping("queryProducts")
    @ResponseBody
    public ProductExt queryProducts(ProductExt productExt){
        productExt.setPageSize(2);
        return productFrService.queryProducts(productExt);
    }
    /*获取商品价格*/
    @RequestMapping("queryPinfoPrice")
    @ResponseBody
    public Double queryPinfoPrice(Pinfo pinfo){
        return productFrService.queryPinfoPrice(pinfo);
    }
}
