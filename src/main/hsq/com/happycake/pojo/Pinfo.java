package com.happycake.pojo;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-23
 * Time: 上午8:42
 */
public class Pinfo {
    private String pinfoId;
    private String productName;
    private String productId;
    private String pinfoColor;
    private String pinfoWeight;
    private String pinfoStep;
    private Double pinfoPrice;
    private Integer pinfoStock;
    private String pinfoTime;

    public String getPinfoId() {
        return pinfoId;
    }

    public void setPinfoId(String pinfoId) {
        this.pinfoId = pinfoId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getPinfoColor() {
        return pinfoColor;
    }

    public void setPinfoColor(String pinfoColor) {
        this.pinfoColor = pinfoColor;
    }

    public String getPinfoWeight() {
        return pinfoWeight;
    }

    public void setPinfoWeight(String pinfoWeight) {
        this.pinfoWeight = pinfoWeight;
    }

    public String getPinfoStep() {
        return pinfoStep;
    }

    public void setPinfoStep(String pinfoStep) {
        this.pinfoStep = pinfoStep;
    }

    public Double getPinfoPrice() {
        return pinfoPrice;
    }

    public void setPinfoPrice(Double pinfoPrice) {
        this.pinfoPrice = pinfoPrice;
    }

    public Integer getPinfoStock() {
        return pinfoStock;
    }

    public void setPinfoStock(Integer pinfoStock) {
        this.pinfoStock = pinfoStock;
    }

    public String getPinfoTime() {
        return pinfoTime;
    }

    public void setPinfoTime(String pinfoTime) {
        this.pinfoTime = pinfoTime;
    }

    @Override
    public String toString() {
        return "Pinfo{" +
                "pinfoId='" + pinfoId + '\'' +
                ", productName='" + productName + '\'' +
                ", productId='" + productId + '\'' +
                ", pinfoColor='" + pinfoColor + '\'' +
                ", pinfoWeight='" + pinfoWeight + '\'' +
                ", pinfoStep='" + pinfoStep + '\'' +
                ", pinfoPrice=" + pinfoPrice +
                ", pinfoStock=" + pinfoStock +
                ", pinfoTime=" + pinfoTime +
                '}';
    }
}
