package com.example.wecode.controllers;

import com.example.wecode.models.*;
import com.example.wecode.services.*;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.json.JSONArray;
@Controller
public class HomeController {
    private final UserService userServ;
    private final CompanyService companyService;

    private final CategoryService categoryService;
    private final FeedBackService feedBackService;
    private final LanguagesService languagesService;
    private final SkillsService skillsService;

    private final ChatService chatService;

    public HomeController(UserService userServ, CompanyService companyService, CategoryService categoryService, FeedBackService feedBackService, LanguagesService languagesService, SkillsService skillsService, ChatService chatService) {
        this.userServ = userServ;
        this.companyService = companyService;
        this.categoryService = categoryService;
        this.feedBackService = feedBackService;
        this.languagesService = languagesService;
        this.skillsService = skillsService;
        this.chatService = chatService;
    }




    @GetMapping("/")
    public String showHomepage(Model model, HttpSession session) {
        int x = 0;

        if (session.getAttribute("user_id")!=null) {
            return "redirect:/success";
        }

        if (session.getAttribute("user_id")!=null){x=1;}
        if (session.getAttribute("user_id")==null){x=0;}
        model.addAttribute("x" , x);
        return "success.jsp";
    }










    @GetMapping("/test")
    public String testingyazan(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            return "redirect:/success";
        }
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "testingyazanlogin.jsp";
    }




    @GetMapping("/SkillCharTesting")

    public  String comparingReqWithSkills(HttpSession session,Model model){
        int[] companyReq = new int[]{35, 39, 70, 65, 85, 55, 78,90,56};
        int[] employeeSkills = new int[]{28, 48, 40, 90, 80, 27, 40,79,90};

        JSONArray jsonArray = new JSONArray(companyReq);
        JSONArray jsonArray2 = new JSONArray(employeeSkills);

        model.addAttribute("company",jsonArray);
        model.addAttribute("employee",jsonArray2);

        return "SkillCharTesting.jsp";
    }

    @GetMapping("/footer")
    public String footer(){
        return "footer.jsp";
    }










































}
