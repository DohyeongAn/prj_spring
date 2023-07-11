package com.mycompany.app.infra.dodomall;

import com.mycompany.app.infra.common.base.BaseVo;

public class DodomallVo extends BaseVo {

    private Integer shOption;
    private String shKeyword;
    private String seq;
    private String defaultNy;
    private String itemImageUrl;
    private String itemDescription;
    private String itemName;
    private Integer itemDiscountRate;
    private Integer itemPrice1;
    private Integer itemPrice2;
    private String itemDeliveryStatus;
    private Integer delNy;
    //	-----


    public Integer getShOption() {
        return shOption;
    }

    public void setShOption(Integer shOption) {
        this.shOption = shOption;
    }

    public String getShKeyword() {
        return shKeyword;
    }

    public void setShKeyword(String shKeyword) {
        this.shKeyword = shKeyword;
    }

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getDefaultNy() {
        return defaultNy;
    }

    public void setDefaultNy(String defaultNy) {
        this.defaultNy = defaultNy;
    }

    public String getItemImageUrl() {
        return itemImageUrl;
    }

    public void setItemImageUrl(String itemImageUrl) {
        this.itemImageUrl = itemImageUrl;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Integer getItemDiscountRate() {
        return itemDiscountRate;
    }

    public void setItemDiscountRate(Integer itemDiscountRate) {
        this.itemDiscountRate = itemDiscountRate;
    }

    public Integer getItemPrice1() {
        return itemPrice1;
    }

    public void setItemPrice1(Integer itemPrice1) {
        this.itemPrice1 = itemPrice1;
    }

    public Integer getItemPrice2() {
        return itemPrice2;
    }

    public void setItemPrice2(Integer itemPrice2) {
        this.itemPrice2 = itemPrice2;
    }

    public String getItemDeliveryStatus() {
        return itemDeliveryStatus;
    }

    public void setItemDeliveryStatus(String itemDeliveryStatus) {
        this.itemDeliveryStatus = itemDeliveryStatus;
    }

    public Integer getDelNy() {
        return delNy;
    }

    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }
}
