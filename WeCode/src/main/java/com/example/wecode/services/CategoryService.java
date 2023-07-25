package com.example.wecode.services;

import com.example.wecode.models.Category;
import com.example.wecode.models.Languages;
import com.example.wecode.repositories.CategoryRepository;
import com.example.wecode.repositories.LanguagesRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;




@Service
public class CategoryService {
    // adding the book repository as a dependency
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
    // returns all the books
    public List<Category> allCategories() {
        return categoryRepository.findAll();
    }
    // creates a book
    public Category createCategory(Category b) {
        return categoryRepository.save(b);
    }
    public Category updateCategory(Category u) {
        return categoryRepository.save(u);
    }
    public void deleteCategoryById(Long id) {
        categoryRepository.deleteById(id);
    }
    public void deleteCategory(Category b) {
        categoryRepository.delete(b);
    }
    // retrieves a book
    public Category findCategory(Long id) {
        Optional<Category> optionalCategory = categoryRepository.findById(id);
        if(optionalCategory.isPresent()) {
            return optionalCategory.get();
        } else {
            return null;
        }
    }
}
