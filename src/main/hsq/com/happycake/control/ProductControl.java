package com.happycake.control;

import com.happycake.pojo.*;
import com.happycake.service.ProductService;
import com.happycake.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-22
 * Time: 下午9:26
 */
@Controller
@RequestMapping("behind/product")
public class ProductControl {
    private final ProductService productService;

    @Autowired
    public ProductControl(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("addprodisc")
    public String addprodisc() {
        return "behind/addprodisc";
    }

    @RequestMapping("addproduct")
    public String addproduct() {
        return "behind/addproduct";
    }

    @RequestMapping("comment")
    public String comment() {
        return "behind/comment";
    }

    @RequestMapping("order")
    public String order() {
        return "behind/order";
    }

    @RequestMapping("prodisc")
    public String prodisc() {
        return "behind/prodisc";
    }

    @RequestMapping("productInfo")
    public String productInfo() {
        return "behind/productInfo";
    }

    @RequestMapping("uploadpic")
    public String uploadpic() {
        return "behind/uploadpic";
    }


    /*添加商品*/
    @RequestMapping("addproductDo")
    public String addproductDo(Product product, HttpServletRequest request) {
        product.setProductId(String.valueOf(new Date().getTime()));
        String[] colors=product.getProductColor().split(" ");
        String[] weights=product.getProductWeight().split(" ");
        String[] steps=product.getProductStep().split(" ");
        List<Pinfo> pinfos=new ArrayList<>();
        Pinfo pinfo=null;
        for (String color:
             colors) {
            for (String weight:
                 weights) {
                for (String step:
                     steps) {
                    pinfo=new Pinfo();
                    pinfo.setPinfoId(UUIDUtil.randomUUID());
                    pinfo.setProductId(product.getProductId());
                    pinfo.setPinfoColor(color);
                    pinfo.setPinfoWeight(weight);
                    pinfo.setPinfoStep(step);
                    pinfos.add(pinfo);
                }
            }
        }
        /*图片*/
        Pic pic =new Pic();
        pic.setPicId(UUIDUtil.randomUUID());
        pic.setPicPath("default.jpg");
        pic.setProductId(product.getProductId());
        productService.addProductInfo(product,pic,pinfos);
        return "redirect:/behind/admin/index";
    }
    /*更新详细信息*/
    @RequestMapping("updateProductInfo")
    public String updateProductInfo(Pinfo pinfo){
        productService.updateProinfo(pinfo);
        return "redirect:/behind/admin/index";
    }
    /*加载商品编号*/
    @RequestMapping("queryProductId")
    @ResponseBody
    public List<String> queryProductId(){
        return productService.queryProductId();
    }
    /*根据商品编号加载颜色，重量，层数*/
    @RequestMapping("queryProduct")
    @ResponseBody
    public Product queryProduct(String productId){
        if (productId.equals("index")){
            return new Product();
        }
        return productService.queryProduct(productId);
    }
    /*上传图片*/
    @RequestMapping("uploadPic")
    @ResponseBody
    public String uploadPic(MultipartFile itemImager,HttpServletRequest request) throws IOException {
        /*上传图片*/
        String productId=request.getParameter("productId");
        String dir=request.getServletContext().getRealPath("/pic");
        String sux=itemImager.getOriginalFilename().substring(itemImager.getOriginalFilename().lastIndexOf("."));
        String picId=UUIDUtil.randomUUID();
        String productPath=dir+ File.separator+productId;
        File product=new File(productPath);
        product.setWritable(true,false);
        product.mkdirs();
        String filename=picId+sux;
        String picPath=productPath+File.separator+filename;
        File pics=new File(picPath);
        itemImager.transferTo(pics);
        /*存入数据库*/
        Pic pic=new Pic();
        pic.setProductId(productId);
        pic.setPicId(picId);
        pic.setPicPath(productId+File.separator+filename);
        productService.addpics(pic);
        return "{\"result\":\"success\"}";
    }
    /*查询商品表*/
    @RequestMapping("queryProducts")
    @ResponseBody
    public ProductExt queryProducts(Integer currentPage,String productId){
        ProductExt productExt=new ProductExt();
        productExt.setCurrentPage(currentPage);
        productExt.setProductId(productId);
        productExt.setPageSize(2);
        return productService.queryProducts(productExt);
    }
    /*查询商品详细表*/
    @RequestMapping("queryPinfos")
    @ResponseBody
    public PinfoExt queryPinfos(PinfoExt pinfoExt){
        pinfoExt.setPageSize(10);
        return productService.queryPinfos(pinfoExt);
    }
    /*删除商品(所有信息)*/
    @RequestMapping("deleteProductInfo")
    @ResponseBody
    public String deleteProductInfo(String productId){
        productService.deleteProductInfo(productId);
        return "success";
    }
    /*得到商品种类*/
    @RequestMapping("queryKinds")
    @ResponseBody
    public KindVo queryKinds(){
        return productService.queryKinds();
    }
}
