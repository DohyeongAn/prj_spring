package com.mycompany.app.infra.kakao;


import org.springframework.stereotype.Service;

@Service
public interface KakaoService {
    String getAccessToken(String authorize_code);

    Kakao getUserInfo(String access_Token);

}
