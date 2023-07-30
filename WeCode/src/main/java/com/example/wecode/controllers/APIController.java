package com.example.wecode.controllers;

import com.example.wecode.models.Company;
import com.example.wecode.services.CompanyService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
public class APIController {

    private final CompanyService companyService;

    public APIController(CompanyService companyService) {
        this.companyService = companyService;
    }

    @GetMapping("/searchh")
    public List<Company> searchCompany(@RequestParam("companyName") String companyName) {
        return companyService.searchByKeyword(companyName);
}
}