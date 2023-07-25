package com.example.wecode.services;

import com.example.wecode.models.Languages;
import com.example.wecode.models.Skills;
import com.example.wecode.repositories.LanguagesRepository;
import com.example.wecode.repositories.SkillsRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;



@Service
public class LanguagesService {
    // adding the book repository as a dependency
    private final LanguagesRepository languagesRepository;

    public LanguagesService(LanguagesRepository languagesRepository) {
        this.languagesRepository = languagesRepository;
    }
    // returns all the books
    public List<Languages> allLanguages() {
        return languagesRepository.findAll();
    }
    // creates a book
    public Languages createLanguages(Languages b) {
        return languagesRepository.save(b);
    }
    public Languages updateLanguages(Languages u) {
        return languagesRepository.save(u);
    }
    public void deleteLanguagesById(Long id) {
        languagesRepository.deleteById(id);
    }
    public void deleteLanguages(Languages b) {
        languagesRepository.delete(b);
    }
    // retrieves a book
    public Languages findLanguages(Long id) {
        Optional<Languages> optionalLanguages = languagesRepository.findById(id);
        if(optionalLanguages.isPresent()) {
            return optionalLanguages.get();
        } else {
            return null;
        }
    }
}
