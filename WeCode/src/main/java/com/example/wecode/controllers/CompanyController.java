package com.example.wecode.controllers;

import com.example.wecode.models.*;
import com.example.wecode.services.*;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@Controller
public class CompanyController {
    private final UserService userServ;
    private final CompanyService companyService;

    private final CategoryService categoryService;
    private final FeedBackService feedBackService;
    private final LanguagesService languagesService;
    private final SkillsService skillsService;

    private final ChatService chatService;

    public CompanyController(UserService userServ, CompanyService companyService, CategoryService categoryService, FeedBackService feedBackService, LanguagesService languagesService, SkillsService skillsService, ChatService chatService) {
        this.userServ = userServ;
        this.companyService = companyService;
        this.categoryService = categoryService;
        this.feedBackService = feedBackService;
        this.languagesService = languagesService;
        this.skillsService = skillsService;
        this.chatService = chatService;
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
        return "redirect:/company/loginform";
    }

    @GetMapping("/showalldev")
    public String showingAllDevelopers(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            Company currentCompany = companyService.findCompanyById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            model.addAttribute("allDevelopers", userServ.allUsers());

            return "alldevs.jsp";
        }
        return "redirect:/";
    }

    @GetMapping("/devs/{id}")
    public String DevinfoCompany(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("company_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(id);
            List<Languages> languages = currentUser.getLanguages();
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("langs" , languages );
            User developer = userServ.findUserById(id);
            model.addAttribute("developer", developer);

            Skills y=developer.getSkills();
            int[] Req = new int[]{y.getCommitment(),y.getCommunicationSkills(),y.getLeaderShip(),y.getProblemSolving(),y.getResearchSkills(),y.getSelfSufficient(), y.getTeamWork(),y.getTimeManagement(),y.getWorkingUnderPressure()};
            JSONArray jsonArray2 = new JSONArray(Req);
            model.addAttribute("employee",jsonArray2);
            int g;
            if(developer.getCompany()!=null){
                g=0;
            }
            else {
                g=1;
            }
            model.addAttribute("g",g);


            return "compdevinfo.jsp";
        }
        return "redirect:/company/loginform";
    }






    @GetMapping("/byskillsform/new")
    public String hireBySkillsForm(@ModelAttribute("skills") Skills skills, Model model, HttpSession session){
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            Company currentCompany = companyService.findCompanyById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            return "hirebyskillsform.jsp";
        }
        return "redirect:/successcompany";

    }

    @PostMapping("/companyskills")
    public String companyskills( @Valid @ModelAttribute("skills") Skills skills, BindingResult result, HttpSession session) {

        if (result.hasErrors()) {
            return "hirebyskillsform.jsp";
        } else {
            int[] Req = new int[]{skills.getCommitment(),skills.getCommunicationSkills(),skills.getLeaderShip(),skills.getProblemSolving(),skills.getResearchSkills(),skills.getSelfSufficient(), skills.getTeamWork(),skills.getTimeManagement(),skills.getWorkingUnderPressure()};
            session.setAttribute("companyreq",Req);
            return "redirect:/comparingCat";
        }
    }



    @GetMapping("/showalldevskills")
    public String showingAllDevelopersSkills(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            Company currentCompany = companyService.findCompanyById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            model.addAttribute("allDevelopers", userServ.allUsers());

            return "alldevsskills.jsp";
        }
        return "redirect:/";
    }


    @GetMapping("/comparingJobVsDev/{id}")

    public  String companySkillsVsDevs(@PathVariable("id") Long id,HttpSession session,Model model){
        if (session.getAttribute("company_id")!=null && session.getAttribute("companyreq")!=null ) {
            int[] companyReq= (int[]) session.getAttribute("companyreq");
        User developer = userServ.findUserById(id);
        model.addAttribute("developer", developer);
        Skills y=developer.getSkills();
        int[] Req = new int[]{y.getCommitment(),y.getCommunicationSkills(),y.getLeaderShip(),y.getProblemSolving(),y.getResearchSkills(),y.getSelfSufficient(), y.getTeamWork(),y.getTimeManagement(),y.getWorkingUnderPressure()};
        JSONArray jsonArray = new JSONArray(companyReq);
        JSONArray jsonArray2 = new JSONArray(Req);
        model.addAttribute("company",jsonArray);
        model.addAttribute("employee",jsonArray2);
        int g;
        if(developer.getCompany()!=null){
            g=0;
        }
        else {
            g=1;
        }
            User currentUser = userServ.findUserById(id);
            List<Languages> languages = currentUser.getLanguages();
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("langs" , languages );
            model.addAttribute("g",g);

            return "comparingskillchart.jsp";
    }
        return "redirect:/company/loginform";

    }

    @GetMapping("/hireadeveloper/{id}")
    public String hireADevloper(@PathVariable("id") Long id,HttpSession session){
        Long ip= (Long) session.getAttribute("company_id");
        Company com= companyService.findCompanyById(ip);
        User h= userServ.findUserById(id);
        h.setCompany(com);
        List<User> users =com.getUsers();
        users.add(h);
        com.setUsers(users);
        companyService.updateCompany(com);
        userServ.updateUser(h);

        return "redirect:/successcompany";
    }

    @GetMapping("/categorry/{id}")
    public String categorrryDev(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            User currentCompany = userServ.findUserById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            int x = 0;
            if (session.getAttribute("company_id")!=null){x=1;}
            if (session.getAttribute("company_id")==null){x=0;}
            model.addAttribute("x" , x);
            Category category = categoryService.findCategory(id);
            model.addAttribute("category", category.getUsers());

            return "categorryDev.jsp";
        }
        return "redirect:/company/loginform";
    }


    @GetMapping("/comparingCat")
    public String ComperingCat(Model model, HttpSession session) {
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            Company currentCompany = companyService.findCompanyById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            model.addAttribute("allDevelopers", userServ.allUsers());

            return "comparingCat.jsp";
        }
        return "redirect:/";
    }
    @GetMapping("/comparing/{id}")
    public String comparingid(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("company_id")!=null) {
            Long companyId = (Long) session.getAttribute("company_id");
            User currentCompany = userServ.findUserById(companyId);
            model.addAttribute("currentCompany", currentCompany);
            int x = 0;
            if (session.getAttribute("company_id")!=null){x=1;}
            if (session.getAttribute("company_id")==null){x=0;}
            model.addAttribute("x" , x);
            Category category = categoryService.findCategory(id);
            model.addAttribute("category", category.getUsers());

            return "comparingID.jsp";
        }
        return "redirect:/company/loginform";
    }
}
