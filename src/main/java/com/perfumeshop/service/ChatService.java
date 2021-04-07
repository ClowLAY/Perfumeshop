package com.perfumeshop.service;


import com.perfumeshop.entity.Chat;
import com.perfumeshop.entity.ChatExample;

import java.util.List;

public interface ChatService {
    public void insertChatSelective(Chat chat);

    public List<Chat> selectChatByExample(ChatExample chatExample);
}
