package com.example.wecode.services;


import com.example.wecode.models.Skills;
import com.example.wecode.repositories.SkillsRepository;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;


@Service
public class SkillsService {
    // adding the book repository as a dependency
    private final SkillsRepository skillsRepository;

    public SkillsService(SkillsRepository skillsRepository) {
        this.skillsRepository = skillsRepository;
    }
    // returns all the books
    public List<Skills> allSkills() {
        return skillsRepository.findAll();
    }
    // creates a book
    public Skills createSkills(Skills b) {
        return skillsRepository.save(b);
    }
    public Skills updateSkills(Skills u) {
        return skillsRepository.save(u);
    }
    public void deleteSkillsById(Long id) {
        skillsRepository.deleteById(id);
    }
    public void deleteSkills(Skills b) {
        skillsRepository.delete(b);
    }
    // retrieves a book
    public Skills findSkills(Long id) {
        Optional<Skills> optionalSkills = skillsRepository.findById(id);
        if(optionalSkills.isPresent()) {
            return optionalSkills.get();
        } else {
            return null;
        }
    }
}
