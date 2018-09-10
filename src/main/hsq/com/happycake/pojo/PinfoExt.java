package com.happycake.pojo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-25
 * Time: 下午7:32
 */
public class PinfoExt {
    private Integer totalPage;
    private Integer currentPage;
    private Integer pagePlace;
    private Integer pageSize;
    private Pinfo pinfo;
    private List<Pinfo> pinfos;

    public Pinfo getPinfo() {
        return pinfo;
    }

    public void setPinfo(Pinfo pinfo) {
        this.pinfo = pinfo;
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

    public Integer getPagePlace() {
        return pagePlace;
    }

    public void setPagePlace(Integer pagePlace) {
        this.pagePlace = pagePlace;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<Pinfo> getPinfos() {
        return pinfos;
    }

    public void setPinfos(List<Pinfo> pinfos) {
        this.pinfos = pinfos;
    }
}
