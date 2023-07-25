package com.example.wecode.services;

import com.example.wecode.models.Company;
import com.example.wecode.models.LoginCompany;
import com.example.wecode.models.LoginUser;
import com.example.wecode.models.User;
import com.example.wecode.repositories.CompanyRepository;
import com.example.wecode.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;
import java.util.Optional;
@Service

public class CompanyService {





    @Autowired
    private CompanyRepository companyRepo;

    public List<Company> allCompanies(){
        return companyRepo.findAll();
    }
    public Company findCompanyById(Long id) {
        Optional<Company> optionalCompany = companyRepo.findById(id);
        if(optionalCompany.isPresent()) {
            return optionalCompany.get();
        }
        else {
            return null;
        }
    }
    public Company findCompanyByEmail(String email) {
        Optional<Company> optionalCompany = companyRepo.findByEmail(email);
        if(optionalCompany.isPresent()) {
            return optionalCompany.get();
        }
        else {
            return null;
        }
    }
    public Company createCompany(Company u) {
        return companyRepo.save(u);
    }
    public Company updateCompany(Company u) {
        return companyRepo.save(u);
    }

    public Company login(LoginCompany newLoginObject, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<Company> potentialCompany = companyRepo.findByEmail(newLoginObject.getEmail());
        if (!potentialCompany.isPresent()) {
            result.rejectValue("email","Unique","No such email!");
            return null;
        }
        Company company = potentialCompany.get();
        if (!BCrypt.checkpw(newLoginObject.getPassword(), company.getPassword())) {
            result.rejectValue("password","Matches","Wrong Password!");
        }
        if(result.hasErrors()) {
            return null;
        }else {
            return company;
        }
    }

}
