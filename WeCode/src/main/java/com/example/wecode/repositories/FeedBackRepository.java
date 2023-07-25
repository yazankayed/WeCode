package com.example.wecode.repositories;

import com.example.wecode.models.FeedBack;
import com.example.wecode.models.Languages;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
    public interface FeedBackRepository extends CrudRepository<FeedBack, Long> {
        // this method retrieves all the books from the database
        List<FeedBack> findAll();
        // this method finds books with descriptions containing the search string
//    List<Skills> findByCommitmentContaining(String search);
        // this method counts how many titles contain a certain string
//    Long countByCommitmentContaining(String search);
//    // this method deletes a book that starts with a specific title
//    Long deleteByCommitmentStartingWith(String search);
    }



