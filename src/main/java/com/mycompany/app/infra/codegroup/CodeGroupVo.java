package com.mycompany.app.infra.codegroup;

import com.mycompany.app.infra.common.base.BaseVo;
import lombok.Getter;

public class CodeGroupVo extends BaseVo {

    private Integer shOption;
    private String shKeyword;
    private String seq;
    private Integer delNy;
    private int totalRows;
    private String groupName;

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

    public Integer getDelNy() {
        return delNy;
    }

    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }

    @Override
    public int getTotalRows() {
        return totalRows;
    }

    @Override
    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }


    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
}
