package com.happycake.mapper;

import com.happycake.pojo.Pinfo;
import com.happycake.pojo.Product;
import com.happycake.pojo.ProductExt;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-27
 * Time: 上午11:07
 */
public interface ProductMapperFr {
   Integer queryProductsCount(ProductExt productExt);
   List<Product> queryProducts(ProductExt productExt);
   List<String> queryPinfoColor();
   Product queryProduct(String productId);
   Double queryPinfoPrice(Pinfo pinfo);
}
