package com.example.wecode.controllers;

import com.example.wecode.models.Company;
import com.example.wecode.models.LoginCompany;
import com.example.wecode.models.LoginUser;
import com.example.wecode.models.User;
import com.example.wecode.services.*;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
    private final UserService userServ;
    private final CompanyService companyService;

    private final CategoryService categoryService;
    private final FeedBackService feedBackService;
    private final LanguagesService languagesService;
    private final SkillsService skillsService;

    public HomeController(UserService userServ, CompanyService companyService, CategoryService categoryService, FeedBackService feedBackService, LanguagesService languagesService, SkillsService skillsService) {
        this.userServ = userServ;
        this.companyService = companyService;
        this.categoryService = categoryService;
        this.feedBackService = feedBackService;
        this.languagesService = languagesService;
        this.skillsService = skillsService;
    }
    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            return "redirect:/success";
        }
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser,
                           BindingResult result, Model model, HttpSession session) {
        User regUser = userServ.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "login.jsp";
        }
        session.setAttribute("user_id", regUser.getId());
        return "redirect:/success";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin,
                        BindingResult result, Model model, HttpSession session) {
        User logUser = userServ.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "login.jsp";
        }
        session.setAttribute("user_id", logUser.getId());
        return "redirect:/success";
    }
    @GetMapping("/success")
    public String success(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            return "success.jsp";
        }
        return "redirect:/";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }






    @GetMapping("/regFormCompany")
    public String regFormCompany(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            return "redirect:/successcompany";
        }
        model.addAttribute("newCompany", new Company());
        model.addAttribute("newLoginCompany", new LoginCompany());
        return "regcompany.jsp";
    }

    @PostMapping("/registercompany")
    public String registerCompany(@Valid @ModelAttribute("newCompany") Company newCompany,
                           BindingResult result, Model model, HttpSession session) {
        Company regCompany = companyService.register(newCompany, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginCompany());
            return "regcompany.jsp";
        }
        session.setAttribute("company_id", regCompany.getId());
        return "redirect:/successcompany";
    }



    @GetMapping("/company/loginform")
    public String companyLogin(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            return "redirect:/success";
        }
        model.addAttribute("newCompany", new Company());
        model.addAttribute("newLoginCompany", new LoginCompany());
        return "companylogin.jsp";
    }



    @PostMapping ("/logincompany")
    public String companyLogin(@Valid @ModelAttribute("newLoginCompany") LoginCompany newLoginCompany,
                        BindingResult result, Model model, HttpSession session) {
        Company logCompany = companyService.login(newLoginCompany, result);
        if(result.hasErrors()) {
            model.addAttribute("newCompany", new Company());
            return "companylogin.jsp";
        }
        session.setAttribute("company_id", logCompany.getId());
        return "redirect:/successcompany";
    }
    @GetMapping("/successcompany")
    public String successCompany(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            Company currentCompany = companyService.findCompanyById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            return "companysucess.jsp";
        }
        return "redirect:/";
    }
    @GetMapping("/logoutcompany")
    public String logoutCompany(HttpSession session) {
        session.invalidate();
        return "redirect:/logincompany";
    }


















































}
