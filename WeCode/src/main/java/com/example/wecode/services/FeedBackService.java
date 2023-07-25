package com.example.wecode.services;

import com.example.wecode.models.FeedBack;
import com.example.wecode.models.Languages;
import com.example.wecode.repositories.FeedBackRepository;
import com.example.wecode.repositories.LanguagesRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;




@Service
public class FeedBackService {
    // adding the book repository as a dependency
    private final FeedBackRepository feedBackRepository;

    public FeedBackService(FeedBackRepository feedBackRepository) {
        this.feedBackRepository = feedBackRepository;
    }
    // returns all the books
    public List<FeedBack> allFeedBacks() {
        return feedBackRepository.findAll();
    }
    // creates a book
    public FeedBack createFeedBack(FeedBack b) {
        return feedBackRepository.save(b);
    }
    public FeedBack updateFeedBack(FeedBack u) {
        return feedBackRepository.save(u);
    }
    public void deleteFeedBackById(Long id) {
        feedBackRepository.deleteById(id);
    }
    public void deleteFeedBack(FeedBack b) {
        feedBackRepository.delete(b);
    }
    // retrieves a book
    public FeedBack findFeedBack(Long id) {
        Optional<FeedBack> optionalFeedBack = feedBackRepository.findById(id);
        if(optionalFeedBack.isPresent()) {
            return optionalFeedBack.get();
        } else {
            return null;
        }
    }
}
