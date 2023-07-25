package com.example.wecode.services;

import com.example.wecode.models.Company;
import com.example.wecode.models.LoginCompany;
import com.example.wecode.models.User;
import com.example.wecode.repositories.CompanyRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import java.util.List;
import java.util.Optional;



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
    public void deleteCompanyById(Long id) {
        companyRepo.deleteById(id);
    }
    public void deleteCompany(Company b) {
        companyRepo.delete(b);
    }


    public Company register(Company newCompany, BindingResult result) {
        //.matches("^[a-zA-Z]*$")
        if (!(newCompany.getCompanyName()).matches("^[a-zA-Z]*$")) {
            result.rejectValue("companyName","Invalid","Use Letters only!");
        }
        if (companyRepo.findByEmail(newCompany.getEmail()).isPresent()) {
            result.rejectValue("email","Unique","This is a used email! Try another one.");
        }
        if (!newCompany.getPassword().equals(newCompany.getConfirm())) {
            result.rejectValue("confirm","Matches","Confirm password must match password.");
        }
        if (result.hasErrors()) {
            return null;
        }else {
            String hashedPW = BCrypt.hashpw(newCompany.getPassword(), BCrypt.gensalt());
            newCompany.setPassword(hashedPW);
            return companyRepo.save(newCompany);
        }
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
