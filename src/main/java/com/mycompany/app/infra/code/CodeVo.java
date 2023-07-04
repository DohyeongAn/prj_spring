package com.mycompany.app.infra.code;

import com.mycompany.app.infra.common.base.BaseVo;

public class CodeVo extends BaseVo {

    private Integer shOption;
    private String shKeyword;
    private String seq;
    private String codeGroup_seq;
    private Integer delNy;
    private Integer male;
    private Integer female;
    private Integer etc;
    //	----
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
    public String getCodeGroup_seq() {
        return codeGroup_seq;
    }
    public void setCodeGroup_seq(String codeGroup_seq) {
        this.codeGroup_seq = codeGroup_seq;
    }
    public Integer getDelNy() {
        return delNy;
    }
    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }
    public Integer getMale() {
        return male;
    }
    public void setMale(Integer male) {
        this.male = male;
    }
    public Integer getFemale() {
        return female;
    }
    public void setFemale(Integer female) {
        this.female = female;
    }
    public Integer getEtc() {
        return etc;
    }
    public void setEtc(Integer etc) {
        this.etc = etc;
    }


}