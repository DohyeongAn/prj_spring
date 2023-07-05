package com.mycompany.app.infra.member;

import com.mycompany.app.infra.common.base.BaseVo;

public class MemberVo extends BaseVo {

    private Integer shOption;
    private String shKeyword;
    private String seq;
    private String defultNy;
    private String userName;
    private String PhoneNumber;
    private String id;
    private String nickName;
    private String password;
    private String address;
    private String addressDetail;
    private Integer smsCheck;
    private String cratedAt;
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

    public String getDefultNy() {
        return defultNy;
    }

    public void setDefultNy(String defultNy) {
        this.defultNy = defultNy;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
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

    public String getCratedAt() {
        return cratedAt;
    }

    public void setCratedAt(String cratedAt) {
        this.cratedAt = cratedAt;
    }

    public Integer getDelNy() {
        return delNy;
    }

    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }

}
