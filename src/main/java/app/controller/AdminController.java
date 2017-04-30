package app.controller;

import app.entity.CustomUser;
import app.service.coder.CoderService;
import app.service.email.EmailService;
import app.service.mess.MessService;
import app.service.user.UserService;
import app.service.visit.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @Autowired
    UserService userService;

    @Autowired
    MessService messService;

    @Autowired
    CoderService coderService;

    @Autowired
    EmailService emailService;

    @Autowired
    VisitService visitService;

    @RequestMapping("/admin")
    public String adminShop(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        model.addAttribute("visits_day", visitService.getVisitsForTheDay());
        model.addAttribute("visits_week", visitService.getVisitsForTheWeek());
        model.addAttribute("messages", messService.getMessageAllSort());
        model.addAttribute("email", userService.getUserByLogin(login).getEmail());
        return "admin";
    }

    @RequestMapping("/admin/delete_message")
    public String adminDeleteMessage(@RequestParam long message_id) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        messService.deleteMessage(messService.detOne(message_id));
        return "redirect:/admin";
    }

    @RequestMapping("/admin/email_new")
    public String adminEmailNew(@RequestParam String email_new) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        CustomUser customUser = userService.getUserByLogin(login);
        customUser.setEmailNew(email_new);
        userService.updateUser(customUser);
        emailService.emailAdminEmailNew(customUser);
        return "redirect:/admin";
    }

    @RequestMapping("/admin/password_new")
    public String adminPasswordNew(@RequestParam String password_new) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        CustomUser customUser = userService.getUserByLogin(login);
        customUser.setPassword(coderService.coderSHA1(password_new));
        userService.updateUser(customUser);
        emailService.emailPasswordNew(customUser, password_new);
        return "redirect:/logout";
    }

    @RequestMapping("/active_email")
    public String activeEmail (@RequestParam String email, Model model){
        CustomUser customUser = userService.getUserByLogin("admin");
        if (email!=null && email.equals(customUser.getEmailNew())){
            customUser.setEmail(customUser.getEmailNew());
            customUser.setEmailNew("");
            userService.updateUser(customUser);
        } else {
            model.addAttribute("data_error", "error");
        }
        return "active_email";
    }


    /*@RequestMapping("/admin_update_pas_manager")
    public String adminUpdatePasManager(@RequestParam long id_manager,
                                        @RequestParam String password1,
                                        @RequestParam String password2,
                                        Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        model.addAttribute("login", login);
        if (id_manager == 0 || password1.equals("") || password2.equals("") || !password1.equals(password2)) {
            model.addAttribute("data_error", "error");
        } else {
            String passwordSHA1 = SHA.coderSHA1(password1).toString();
            CustomUser customUser = userService.getOne(id_manager);
            customUser.setPassword(passwordSHA1);
            userService.updateUser(customUser);
            model.addAttribute("update", "ok");
        }
        model.addAttribute("customUsers", userService.getUserByRoleSort(UserRole.MANAGER));
        return "admin/admin_shop";
    }

    @RequestMapping("/admin_delete_manager")
    public String adminDeleteManager(@RequestParam long id_manager,
                                        Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        model.addAttribute("login", login);
        CustomUser customUser = userService.getOne(id_manager);
        try {
            userService.deleteUser(customUser);
        } catch (DataIntegrityViolationException e) {
            System.out.println(e);
            model.addAttribute("del_error", "error");
        }
        model.addAttribute("customUsers", userService.getUserByRoleSort(UserRole.MANAGER));
        return "admin/admin_shop";
    }

    @RequestMapping("/admin_contact")
    public String adminContact(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        model.addAttribute("login", login);
        return "admin/admin_contact";
    }*/
}
