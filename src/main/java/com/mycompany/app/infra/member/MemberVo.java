package com.mycompany.app.infra.member;

import com.mycompany.app.infra.common.base.BaseVo;

public class MemberVo extends BaseVo {

    private Integer shOption;
    private String shKeyword;
    private String seq;
    private String defaultNy;
    private String userName;
    private String phoneNumber;
    private String id;
    private String nickName;
    private String password;
    private String postalCode;
    private String address;
    private String addressDetail;
    private Integer smsCheck;
    private String createdAt;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddressDetail() {
        return addressDetail;
    }

    public void setAddressDetail(String addressDetail) {
        this.addressDetail = addressDetail;
    }

    public Integer getSmsCheck() {
        return smsCheck;
    }

    public void setSmsCheck(Integer smsCheck) {
        this.smsCheck = smsCheck;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public Integer getDelNy() {
        return delNy;
    }

    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }


}
