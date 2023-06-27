package com.mycompany.app.codegroup;

public class CodeGroup {

    // 디비컬럼명 첫글자는 소문자
    // seq는 편의상 디비에는 Int 지만 String으로 선언
    // 주로 테이블의 컬럼명과 일치
    private String seq;
    private String name;
    private Integer delNy;

    //    -----
    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDelNy() {
        return delNy;
    }

    public void setDelNy(Integer delNy) {
        this.delNy = delNy;
    }
}
