package com.happycake.pojo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-24
 * Time: 上午11:35
 */
public class ProductExt{
    private Integer totalPage;
    private Integer currentPage;
    private Integer pagePlace;
    private Integer pageSize;
    private Integer productAvg;
    private String productId;
    private List<Product> products;

    public Integer getPagePlace() {
        return pagePlace;
    }

    public void setPagePlace(Integer pagePlace) {
        this.pagePlace = pagePlace;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Integer getProductAvg() {
        return productAvg;
    }

    public void setProductAvg(Integer productAvg) {
        this.productAvg = productAvg;
    }
}
