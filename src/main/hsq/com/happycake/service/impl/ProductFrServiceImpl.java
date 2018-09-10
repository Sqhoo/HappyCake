package com.happycake.service.impl;

import com.happycake.mapper.ProductMapperFr;
import com.happycake.pojo.Pinfo;
import com.happycake.pojo.Product;
import com.happycake.pojo.ProductExt;
import com.happycake.service.ProductFrService;
import com.happycake.util.Subset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-28
 * Time: 上午9:07
 */
@Service
public class ProductFrServiceImpl implements ProductFrService{
    private final ProductMapperFr productMapperFr;

    @Autowired
    public ProductFrServiceImpl(ProductMapperFr productMapperFr) {
        this.productMapperFr = productMapperFr;
    }

    @Override
    public ProductExt queryProducts(ProductExt productExt) {
        int count=productMapperFr.queryProductsCount(productExt);
        productExt.setPagePlace(productExt.getPageSize()*(productExt.getCurrentPage()-1));
        int totalPage=(int) Math.ceil(count*1.0/productExt.getPageSize());
        productExt.setTotalPage(totalPage);
        List<Product> products = productMapperFr.queryProducts(productExt);
        productExt.setProducts(products);
        return productExt;
    }

    @Override
    public List<String> queryPinfoColor() {
        return productMapperFr.queryPinfoColor();
    }

    @Override
    public Product queryProduct(String productId) {
        return productMapperFr.queryProduct(productId);
    }

    @Override
    public Double queryPinfoPrice(Pinfo pinfo) {
        return productMapperFr.queryPinfoPrice(pinfo);
    }
}
