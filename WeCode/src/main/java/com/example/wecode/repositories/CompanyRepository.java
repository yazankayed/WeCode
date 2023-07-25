package com.example.wecode.repositories;


import com.example.wecode.models.Company;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CompanyRepository extends CrudRepository<Company, Long> {
    List<Company> findAll();
    Optional<Company> findById(Long id);
    Optional<Company> findByEmail(String email);
}
