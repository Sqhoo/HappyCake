package com.happycake.service;

import com.happycake.pojo.*;

import java.util.List;

public interface ProductService {
    /*添加商品信息和详细信息和默认图片*/
    void addProductInfo(Product product, Pic pic, List<Pinfo> pinfos);
    /*添加图片*/
    void addpics(Pic pic);
    /*查询所有商品ID*/
    /*删除商品所有信息*/
    void deleteProductInfo(String product_id);
    List<String> queryProductId();
    /*更新商品详细信息*/
    void updateProinfo(Pinfo pinfo);
    /*根据ID查询商品*/
    Product queryProduct(String product_Id);
    /*模糊查询&分页列出商品*/
    ProductExt queryProducts(ProductExt productExt);
    /*模糊查询,分类&分页列出商品*/
    PinfoExt queryPinfos(PinfoExt pinfoExt);
    /*所有种类的集合*/
    KindVo queryKinds();
}
