package com.mycompany.app.infra.chat;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class ChatDTO {

    private String seq;
    private String sender;
    private String message;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="Asia/Seoul")
    private Date regdate;
}
