package com.example.wecode.controllers;

import com.example.wecode.models.*;
import com.example.wecode.services.*;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import java.lang.Math;


import java.util.List;


@Controller
public class UserController {
    private final UserService userServ;
    private final CompanyService companyService;

    private final CategoryService categoryService;
    private final FeedBackService feedBackService;
    private final LanguagesService languagesService;
    private final SkillsService skillsService;

    private final ChatService chatService;

    public UserController(UserService userServ, CompanyService companyService, CategoryService categoryService, FeedBackService feedBackService, LanguagesService languagesService, SkillsService skillsService, ChatService chatService) {
        this.userServ = userServ;
        this.companyService = companyService;
        this.categoryService = categoryService;
        this.feedBackService = feedBackService;
        this.languagesService = languagesService;
        this.skillsService = skillsService;
        this.chatService = chatService;
    }





    @GetMapping("/loginpageuser")
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


    //updating user info


    //    updating info
    @GetMapping("/update")
    public String updatingForm(Model model, HttpSession session ) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            int x = 0;
            if (session.getAttribute("user_id")!=null){x=1;}
            if (session.getAttribute("user_id")==null){x=0;}
            model.addAttribute("x" , x);
            model.addAttribute("allcategories", categoryService.allCategories());
            return "updateuserprofile.jsp";
        }
        return "redirect:/";
    }

    @PatchMapping("/updateuser")
    public String update(Model model ,  HttpSession session ,
                           @RequestParam("userName") String userName,
                           @RequestParam("email") String email,
                           @RequestParam("idNum") Integer idNum,
                           @RequestParam("experience") Integer experience,
                           @RequestParam("location") String location,
                           @RequestParam("cv") String cv,
                           @RequestParam("status") String status,
                           @RequestParam("image") String image,
                           @RequestParam("category") Long category,
                           @RequestParam("python") boolean python,
                           @RequestParam("java") boolean java,
                           @RequestParam("javascript") boolean javascript,
                           @RequestParam("php") boolean php,
                           @RequestParam("net") boolean net,
                           @RequestParam("Cp") boolean Cp,
                           @RequestParam("C") boolean C,
                           @RequestParam("Cs") boolean Cs

    )
    {

        Long userId = (Long) session.getAttribute("user_id");
        User currentUser = userServ.findUserById(userId);

        Category categoryy = categoryService.findCategory(category);
        if (python == true)
        {
            Long c=1L;
            Languages languagess = languagesService.findLanguages(c);
            List<User> users = languagess.getUsers();
            users.add(currentUser);
            languagess.setUsers(users);
        }
        if (java == true)
        {
            Long c=2L;
            Languages languagesss = languagesService.findLanguages(c);
            List<User> users = languagesss.getUsers();
            users.add(currentUser);
            languagesss.setUsers(users);
        }
        if (javascript == true)
        {
            Long c=3L;
            Languages languageess = languagesService.findLanguages(c);
            List<User> users = languageess.getUsers();
            users.add(currentUser);
            languageess.setUsers(users);
        }
        if (php == true)
        {
            Long c=4L;
            Languages f = languagesService.findLanguages(c);
            List<User> users = f.getUsers();
            users.add(currentUser);
            f.setUsers(users);
        }
        if (net == true)
        {
            Long c=5L;
            Languages e = languagesService.findLanguages(c);
            List<User> users = e.getUsers();
            users.add(currentUser);
            e.setUsers(users);
        }
        if (Cp == true)
        {
            Long c=6L;
            Languages m = languagesService.findLanguages(c);
            List<User> users = m.getUsers();
            users.add(currentUser);
            m.setUsers(users);
        }
        if (C == true)
        {
            Long c=7L;
            Languages o = languagesService.findLanguages(c);
            List<User> users = o.getUsers();
            users.add(currentUser);
            o.setUsers(users);
        }
        if (Cs == true)
        {
            Long c=8L;
            Languages q = languagesService.findLanguages(c);
            List<User> users = q.getUsers();
            users.add(currentUser);
            q.setUsers(users);
        }
        currentUser.setUserName(userName);
        currentUser.setEmail(email);
        currentUser.setIdNum(idNum);
        currentUser.setExperience(experience);
        currentUser.setLocation(location);
        currentUser.setCv(cv);
        currentUser.setImage(image);

        currentUser.setStatus(Boolean.parseBoolean(status));
        currentUser.setCategory(categoryy);

        userServ.updateUser(currentUser);

        return "redirect:/success";
    }







    @GetMapping("/success")
    public String success(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("userId" , userId);
            if(currentUser.getCv()==null){
                return "redirect:/update";
            }
            int x = 0;
            if (session.getAttribute("user_id")!=null){x=1;}
            if (session.getAttribute("user_id")==null){x=0;}
            model.addAttribute("x" , x);

            return "success.jsp";
        }
        return "redirect:/";
    }

    @GetMapping("/categories")
    public String showCategories(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("allCategories", categoryService.allCategories());
            model.addAttribute("userId" , userId);
            int x = 0;
            if (session.getAttribute("user_id")!=null){x=1;}
            if (session.getAttribute("user_id")==null){x=0;}
            model.addAttribute("x" , x);

            return "showCategories.jsp";
        }
        return "redirect:/";
    }


    @GetMapping("/companies")
    public String showCompanies(Model model, HttpSession session) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("allCompanies", companyService.allCompanies());

            return "showCompanies.jsp";
        }
        return "redirect:/";
    }


    @GetMapping("/aboutus")
    public String aboutus(Model model, HttpSession session) {


        return "aboutUs.jsp";
    }
    @GetMapping("/contactus")
    public String conactus(@ModelAttribute("feedback") FeedBack feedback, Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("user_id");
        model.addAttribute("userId" , userId);
        int x = 0;
        if (session.getAttribute("user_id")!=null){x=1;}
        if (session.getAttribute("user_id")==null){x=0;}
        model.addAttribute("x" , x);
        model.addAttribute("allFeedback", feedBackService.allFeedBacks());


        return "contactus.jsp";
    }




//    contact us form

    @PostMapping("/contactus")
    public String createContact(@Valid @ModelAttribute("feedback") FeedBack feedback, BindingResult result) {
        if (result.hasErrors()) {
            return "contactus.jsp";
        }
        feedBackService.createFeedBack(feedback);
        return "redirect:/contactus";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }




    @GetMapping("/chat")
    public String chat(Model model, HttpSession session, @ModelAttribute("chat") Chat chat) {
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("allMsges", chatService.allChats());

            return "chat.jsp";
        }
        return "redirect:/";
    }

//    chatform


    @PostMapping("/chat/new")
    public String createChat(@Valid @ModelAttribute("chat") Chat chat, BindingResult result) {
        if (result.hasErrors()) {
            return "chat.jsp";
        }
        chatService.createChat(chat);
        return "redirect:/chat";
    }



    @GetMapping("/category/{id}")
    public String categoryDev(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(userId);
            model.addAttribute("currentUser", currentUser);
            int x = 0;
            if (session.getAttribute("user_id")!=null){x=1;}
            if (session.getAttribute("user_id")==null){x=0;}
            model.addAttribute("x" , x);
            Category category = categoryService.findCategory(id);
            model.addAttribute("category", category.getUsers());

            return "catdev.jsp";
        }
        return "redirect:/";
    }


    @GetMapping("/company/{id}")
    public String companyInfo(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("user_id")!=null || session.getAttribute("company_id")!=null ) {

            int t=0;

            if(session.getAttribute("user_id")!=null){
                Long userId = (Long) session.getAttribute("user_id");
                User currentUser = userServ.findUserById(userId);
                model.addAttribute("currentUser", currentUser);
                int x = 0;
                if (session.getAttribute("user_id")!=null){x=1;}
                if (session.getAttribute("user_id")==null){x=0;}
                model.addAttribute("x" , x);
            }
            else if(session.getAttribute("company_id")!=null){

                t=1;
                Long companyId = (Long) session.getAttribute("company_id");
                Company currentCompany = companyService.findCompanyById(companyId);
                model.addAttribute("currentCompany", currentCompany);
            }

            Company comp = companyService.findCompanyById(id);
            model.addAttribute("comp", comp);
            String img= "";

            if(comp.getCompanyName().equals("AXSOS")){
                img = "https://www.axsos.me/fileadmin/template/media/axsos-logo.png";
            }
            if(comp.getCompanyName().equals("ASAL")){
                img = "https://media.licdn.com/dms/image/C4D0BAQEusQv93gwD2w/company-logo_200_200/0/1667900981277?e=2147483647&v=beta&t=ziViULdwSJKK8dUp59beaJqJZrr7oiZAwxTx5HtJIso";
            }
            if(comp.getCompanyName().equals("Freightos")){
                img = "https://upload.wikimedia.org/wikipedia/commons/4/43/Freightos.png";
            }
            if(comp.getCompanyName().equals("EXALT")){
                img = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKoAAACqCAMAAAAKqCSwAAAAclBMVEX3+fphm7l4eHh6fH2vzNvk7fKMt8yfwtTb6O3t8/bV5OyGs8mWvNB4qsOCr8fF2uSnx9ff4eFxpcCZvdHr7e670+BpoLyChIXO3+jm6Om20N6Ji4yUlZacnZ2eoKGSkpK2t7e+v8CoqavHyMjZ29yxsrLSlP/BAAACB0lEQVR4nO3W61aqQBiA4aEgQUBUpEy3bWvb/d9izADCwBzaa2GtVe/zy4BPXomTEAAAAAAAAAAAAAAAAAAAAAAAAD9OEtTS6fKVXF58fY/DvKlxuDCq6nXPG2Va0CzfCRGFBod95EqtwnArl2fa0N77s7PAIpOpx3vpT6IPPT/dSaf649Iyncb21Nw4sfalprZSlWpuHZRaU9t/74yplXVPTeq1dVraLLKnBtG8qeqgZtZzVYWp1lNfehyUisg0Wj7Krw1tqessUxuk2ZDvIpMjC/cmm6b1pf1z15YmrpmqK5zxDiAnDp5ttNa29K+zVOzl9+bzp+YPY7Gx9U1+bkt3/dplWE6+YHWj1KnxLe7StNZ9G1V6HJSW1svqS1KX481OXepFpZ77NaG19HtS31Tpsf60U6l3r92axF56i9R1PDa6ZprSJ/V8fdVb1fUThMuRw41SQ882w9Jr67/mr6pr0ul3gK0l1bdjnXxtyOPIIO7eONrSSzdyHrY2R7UYDxdaarDQ9iDn1KNnq825b3+u67d9sIr3UaneGn3mXNWpY2x4SfI9WGNf6rRUb3X8VnVePJpTDe8e3jcr+/uKSj2r0vuLPvTetyYrd2oxaW3O3If/TxVxubWnmkuvrWr5IZ0euT5VRGWur28vsiId7defCgAAAAAAAAAAAAAAAAAAAAAAAPxaH2CNH9rqbgxVAAAAAElFTkSuQmCC";
            }
            if(comp.getCompanyName().equals("AppiaTech")){
                img = "https://media.licdn.com/dms/image/C4D0BAQGZ0V5c-muKYg/company-logo_200_200/0/1519915926261?e=2147483647&v=beta&t=FAXOtggpN90NAFMxiTebUhDs9rM8O5lcHnm1IM07xjA";
            }
            if(comp.getCompanyName().equals("Gamiphy")){
                img = "https://ssw-portal.s3.amazonaws.com/company/71835/dJwX89YbdbeJmhbR2TqtiB.png";
            }
            if(comp.getCompanyName().equals("Bisan")){
                img = "https://www.bisan.com/storage/settings/December2020/VkQlzMMJjiZtWCXyVav3.png";
            }
            if(comp.getCompanyName().equals("UpWork")){
                img = "https://www.upwork.com/static/marketing/ui/master/img/logo-1200x630.png";
            }
            model.addAttribute("imag", img);




            int min = 10;
            int max = 20;
            double a = Math.random()*(max-min+1)+min;
            int b = (int) a;
            String u= String.valueOf(b);
            model.addAttribute("u", u);
            model.addAttribute("t", t);

            return "companyinfo.jsp";
        }
        return "redirect:/";
    }





    @GetMapping("/dev/{id}")
    public String Devinfo(@PathVariable("id") Long id, Model model, HttpSession session){
        if (session.getAttribute("user_id")!=null) {
            Long userId = (Long) session.getAttribute("user_id");
            User currentUser = userServ.findUserById(id);
            List<Languages> languages = currentUser.getLanguages();
            model.addAttribute("currentUser", currentUser);
            model.addAttribute("langs" , languages );
            User developer = userServ.findUserById(id);
            model.addAttribute("developer", developer);
            if (developer.getSkills()!=null){


            Skills y=developer.getSkills();
            int[] Req = new int[]{y.getCommitment(),y.getCommunicationSkills(),y.getLeaderShip(),y.getProblemSolving(),y.getResearchSkills(),y.getSelfSufficient(), y.getTeamWork(),y.getTimeManagement(),y.getWorkingUnderPressure()};
            JSONArray jsonArray2 = new JSONArray(Req);
            model.addAttribute("employee",jsonArray2);
            return "devinfo.jsp";
            }
            else{
                return "redirect:/skills/new";
            }
        }
        return "redirect:/";
    }



    @GetMapping("/skills/new")
    public String NewSkills(@ModelAttribute("skills") Skills skills, Model model, HttpSession session){
        int x = 0;
        if (session.getAttribute("user_id")!=null){x=1;}
        if (session.getAttribute("user_id")==null){x=0;}
        model.addAttribute("x" , x);

        Long userId = (Long) session.getAttribute("user_id");
        User currentUser = userServ.findUserById(userId);
        model.addAttribute("currentUser", currentUser);
        if (currentUser.getSkills()!=null){
            return "redirect:/";
        }
        return "skills.jsp";
    }

    @PostMapping("/createskills")
    public String createSkills( @Valid @ModelAttribute("skills") Skills skills, BindingResult result) {

        if (result.hasErrors()) {
            return "skills.jsp";
        } else {
            skillsService.createSkills(skills);
            return "redirect:/skills/new";
        }
    }





















































}

