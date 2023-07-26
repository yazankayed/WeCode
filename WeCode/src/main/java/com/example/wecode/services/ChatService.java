package com.example.wecode.services;

import com.example.wecode.models.Chat;
import com.example.wecode.repositories.ChatRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;




@Service
public class ChatService {
    // adding the book repository as a dependency
    private final ChatRepository chatRepository;

    public ChatService(ChatRepository chatRepository) {
        this.chatRepository = chatRepository;
    }
    // returns all the books
    public List<Chat> allChats() {
        return chatRepository.findAll();
    }
    // creates a book
    public Chat createChat(Chat b) {
        return chatRepository.save(b);
    }
    public Chat updateChat(Chat u) {
        return chatRepository.save(u);
    }
    public void deleteChatyById(Long id) {
        chatRepository.deleteById(id);
    }
    public void deleteChat(Chat b) {
        chatRepository.delete(b);
    }
    // retrieves a book
    public Chat findChat(Long id) {
        Optional<Chat> optionalChat = chatRepository.findById(id);
        if(optionalChat.isPresent()) {
            return optionalChat.get();
        } else {
            return null;
        }
    }
}
