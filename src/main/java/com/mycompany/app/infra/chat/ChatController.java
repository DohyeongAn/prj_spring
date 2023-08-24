package com.mycompany.app.infra.chat;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ChatController {
    private final ChatRepository chatRepository;

    @ResponseBody
    @RequestMapping("/chat.json")
    public List<ChatDTO> list(){
        return chatRepository.list();
    }

    @RequestMapping(value = "/chat/insert", method = RequestMethod.POST)
    public int insert(ChatDTO dto){
        chatRepository.insert(dto);
        int last = chatRepository.last();
        System.out.println("-------------마지막으로 보낸 메세지의 seq: " + last);
        return last;
    }

    @RequestMapping(value = "/chat/delete", method = RequestMethod.POST)
    public void delete(int seq){chatRepository.delete(seq);}


}//END OF CONTROLLER
