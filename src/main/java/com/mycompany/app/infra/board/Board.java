package com.mycompany.app.infra.board;

public class Board {
    private Integer shOption;
    private String shKeyword;
    private String seq;
    private String writer;
    private String writing;
    private String regdate;
    private String title;

    //--


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

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getWriting() {
        return writing;
    }

    public void setWriting(String writing) {
        this.writing = writing;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
