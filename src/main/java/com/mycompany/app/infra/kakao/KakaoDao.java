package com.mycompany.app.infra.kakao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

@Repository
public class KakaoDao {
    // mapper를 호출하기 위한 클래스 주입.
    @Autowired
    private SqlSessionTemplate sql;

    // 정보 저장
    public void kakaoinsert(HashMap<String, Object> userInfo) {
        sql.insert("com.mycompany.app.infra.kakao.KakaoMapper.kakaoInsert", userInfo);
    }

    // 정보 확인
    public Kakao findkakao(HashMap<String, Object> userInfo) {
        System.out.println("RN:" + userInfo.get("nickname"));
        System.out.println("RE:" + userInfo.get("email"));
        return sql.selectOne("com.mycompany.app.infra.kakao.KakaoMapper.findKakao", userInfo);
    }
}
