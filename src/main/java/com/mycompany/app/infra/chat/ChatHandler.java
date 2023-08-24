package com.mycompany.app.infra.chat;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ChatHandler extends TextWebSocketHandler {

    // 여러개의 웹소켓 세션을 담도록 리스트를 생성한다.
    List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        System.out.println("연결됨: " + session.getId());
        sessionList.add(session);


        super.afterConnectionEstablished(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        System.out.println("연결끊김: " + session.getId());

        sessionList.remove(session);
        super.afterConnectionClosed(session, status);
    }


    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // 메시지가 들어오는 부분
        String strMessage = message.getPayload();

        // 연결된세션들에게 메시지를 보낼때
        // 현재 시간도 보내보자.
        SimpleDateFormat stf = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
        String strDate = stf.format(new Date());
        strMessage += "|" + strDate;
        System.out.println("메세지 : " + strMessage);

        for(WebSocketSession webSocketSession:sessionList){
            webSocketSession.sendMessage(new TextMessage(strMessage));
        }
        super.handleTextMessage(session, message);
    }
}//END OF ChatHandler
