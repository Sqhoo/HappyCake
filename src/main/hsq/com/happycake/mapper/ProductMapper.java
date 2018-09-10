package com.happycake.mapper;

import com.happycake.pojo.*;

import java.util.List;

public interface ProductMapper {
    void addProduct(Product product);
    void addIndexPic(Pic pic);
    void addProinfo(List<Pinfo> pinfos);
    void updateProinfo(Pinfo pinfo);
    void deleteProduct(String productId);
    void deletePinfo(String product);
    List<String> queryProductId();
    Product queryProduct(String product_Id);
    Integer queryProuctsCount(ProductExt productExt);
    List<Product> queryProducts(ProductExt productExt);
    Integer queryPinfoExtCount(PinfoExt pinfoExt);
    List<Pinfo> queryPinfoExt(PinfoExt pinfoExt);
    List<String> queryColors();
    List<String> queryWeights();
    List<String> querySteps();
}
