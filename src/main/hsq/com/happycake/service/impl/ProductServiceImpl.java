package com.happycake.service.impl;

import com.happycake.mapper.ProductMapper;
import com.happycake.pojo.*;
import com.happycake.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-22
 * Time: 下午9:23
 */
@Service
public class ProductServiceImpl implements ProductService {
    private final ProductMapper productMapper;

    @Autowired
    public ProductServiceImpl(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    @Override
    public void addProductInfo(Product product, Pic pic,List<Pinfo> pinfos) {
        productMapper.addProduct(product);
        productMapper.addIndexPic(pic);
        productMapper.addProinfo(pinfos);
    }

    @Override
    public void addpics(Pic pic) {
        productMapper.addIndexPic(pic);
    }

    @Override
    public void deleteProductInfo(String product_id) {
        productMapper.deleteProduct(product_id);
        productMapper.deletePinfo(product_id);
    }

    @Override
    public List<String> queryProductId() {
        return productMapper.queryProductId();
    }

    @Override
    public void updateProinfo(Pinfo pinfo) {
        productMapper.updateProinfo(pinfo);
    }

    @Override
    public Product queryProduct(String product_Id) {
        return productMapper.queryProduct(product_Id);
    }

    @Override
    public ProductExt queryProducts(ProductExt productExt) {
        int count=productMapper.queryProuctsCount(productExt);
        productExt.setPagePlace(productExt.getPageSize()*(productExt.getCurrentPage()-1));
        int totalPage=(int) Math.ceil(count*1.0/productExt.getPageSize());
        productExt.setTotalPage(totalPage);
        List<Product> products = productMapper.queryProducts(productExt);
        productExt.setProducts(products);
        return productExt;
    }

    @Override
    public PinfoExt queryPinfos(PinfoExt pinfoExt) {
        int count=productMapper.queryPinfoExtCount(pinfoExt);
        pinfoExt.setPagePlace(pinfoExt.getPageSize()*(pinfoExt.getCurrentPage()-1));
        int totalPage= (int) Math.ceil(count*1.0/pinfoExt.getPageSize());
        pinfoExt.setTotalPage(totalPage);
        List<Pinfo> pinfos=productMapper.queryPinfoExt(pinfoExt);
        pinfoExt.setPinfos(pinfos);
        return pinfoExt;
    }

    @Override
    public KindVo queryKinds() {
        KindVo kindVo=new KindVo();
        kindVo.setColors(productMapper.queryColors());
        kindVo.setWeights(productMapper.queryWeights());
        kindVo.setSteps(productMapper.querySteps());
        return kindVo;
    }
}
