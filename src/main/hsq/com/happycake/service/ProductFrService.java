package com.happycake.service;

import com.happycake.pojo.Pinfo;
import com.happycake.pojo.Product;
import com.happycake.pojo.ProductExt;

import java.util.List;

public interface ProductFrService {
    ProductExt queryProducts(ProductExt productExt);
    List<String> queryPinfoColor();
    Product queryProduct(String productId);
    Double queryPinfoPrice(Pinfo pinfo);
}
