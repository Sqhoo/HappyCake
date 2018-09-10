package com.happycake.pojo;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-22
 * Time: 下午8:28
 */
public class Product {
    private String productId;
    private String productName;
    private String productDisc;
    private String productColor;
    private String productWeight;
    private String productStep;
    private Double productAvg;
    private String productPath;
    private String productTime;


    public Double getProductAvg() {
        return productAvg;
    }

    public void setProductAvg(Double productAvg) {
        this.productAvg = productAvg;
    }

    public String getProductPath() {
        return productPath;
    }

    public void setProductPath(String productPath) {
        this.productPath = productPath;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDisc() {
        return productDisc;
    }

    public void setProductDisc(String productDisc) {
        this.productDisc = productDisc;
    }

    public String getProductColor() {
        return productColor;
    }

    public void setProductColor(String productColor) {
        this.productColor = productColor;
    }

    public String getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(String productWeight) {
        this.productWeight = productWeight;
    }

    public String getProductStep() {
        return productStep;
    }

    public void setProductStep(String productStep) {
        this.productStep = productStep;
    }

    public String getProductTime() {
        return productTime;
    }

    public void setProductTime(String productTime) {
        this.productTime = productTime;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", productDisc='" + productDisc + '\'' +
                ", productColor='" + productColor + '\'' +
                ", productWeight='" + productWeight + '\'' +
                ", productStep='" + productStep + '\'' +
                ", productAvg='" + productAvg + '\'' +
                ", productPath='" + productPath + '\'' +
                ", productTime='" + productTime + '\'' +
                '}';
    }
}
