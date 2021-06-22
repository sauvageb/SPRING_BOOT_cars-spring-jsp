package com.example.carspring.service;

import com.example.carspring.model.Category;

import java.util.List;

public interface CategoryService {

    void createCategory(Category category);

    List<Category> fetchAllCategory();

    void removeCategory(Long id);

    Category fetchSpecificCategory(Long id);
}
