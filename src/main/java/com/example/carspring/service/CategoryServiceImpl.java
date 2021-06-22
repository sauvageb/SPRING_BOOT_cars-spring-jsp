package com.example.carspring.service;

import com.example.carspring.model.Category;
import com.example.carspring.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("CategoryService")
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    @Override
    public void createCategory(Category category) {
        categoryRepository.save(category);
    }

    @Override
    public List<Category> fetchAllCategory() {
        return (List<Category>) categoryRepository.findAll();
    }

    @Override
    public void removeCategory(Long id) {
        categoryRepository.deleteById(id);
    }

    @Override
    public Category fetchSpecificCategory(Long id) {
        return categoryRepository.findById(id).orElse(null);
    }
}
