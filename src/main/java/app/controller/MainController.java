package app.controller;

import app.entity.Mess;
import app.entity.Visit;
import app.service.email.EmailService;
import app.service.mess.MessService;
import app.service.user.UserService;
import app.service.visit.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;


@Controller
public class MainController {
    @Autowired
    private UserService userService;

    @Autowired
    private VisitService visitService;

    @Autowired
    private MessService messService;

    @Autowired
    private EmailService emailService;

    @RequestMapping("/")
    public String index(HttpServletRequest request) {
        visitService.addVisit(new Visit(request.getRemoteAddr()));
        String langClient = request.getLocale().toLanguageTag();
        langClient = langClient.substring(0,2).toLowerCase();
        switch (langClient) {
            case "uk":
                return "redirect:/ua";
            case "ua":
                return "redirect:/ua";
            case "ru":
                return "redirect:/ru";
        }
        return "redirect:/en";
    }

    @RequestMapping("/en")
    public String indexEN(HttpServletRequest request) {
        visitService.addVisit(new Visit(request.getRemoteAddr()));
        return "index-en";
    }

    @RequestMapping("/ua")
    public String indexUA(HttpServletRequest request) {
        visitService.addVisit(new Visit(request.getRemoteAddr()));
        return "index-ua";
    }

    @RequestMapping("/ru")
    public String indexRU(HttpServletRequest request) {
        visitService.addVisit(new Visit(request.getRemoteAddr()));
        return "index-ru";
    }

    @RequestMapping(value = "/order", method = RequestMethod.POST)
    public String order(@RequestParam(required = false) String name,
                         @RequestParam(required = false) String email,
                         @RequestParam(required = false) String message,
                         @RequestParam(required = false) String phone,
                         @RequestParam(required = false) String lang) {
        Mess mess = new Mess(name, email, phone, message);
        messService.addMessage(mess);
        emailService.emailConfirmationOrder(mess, lang);
        emailService.emailAdminMessage(userService.getUserByLogin("admin"),mess);
        return "redirect:/" + lang;
    }

    @RequestMapping(value = "/question", method = RequestMethod.POST)
    public String question(@RequestParam(required = false) String name,
                         @RequestParam(required = false) String email,
                         @RequestParam(required = false) String message,
                         @RequestParam(required = false) String phone,
                         @RequestParam(required = false) String lang) {
        Mess mess = new Mess(name, email, phone, message);
        messService.addMessage(mess);
        emailService.emailConfirmationQuestion(mess, lang);
        emailService.emailAdminMessage(userService.getUserByLogin("admin"),mess);
        return "redirect:/" + lang;
    }

    /*@RequestMapping("/index")
    public String index(@RequestParam String type_cable,
                        @RequestParam Integer numberOfWires_cable,
                        @RequestParam Double area_cable,
                        Model model) {
        model.addAttribute("products", productService.getProductByTypeAndNumberOfWiresAndAreaSort(type_cable, numberOfWires_cable, area_cable));
        model.addAttribute("types", productService.getTypes());
        model.addAttribute("numberOfWireses", productService.getNumberOfWires());
        model.addAttribute("areas", productService.getAreas());
        return "index";
    }

    @RequestMapping("/shop")
    public String shop(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        String role = userService.getUserByLogin(login).getRole().toString();
        switch (role) {
            case "ROLE_ADMIN":
                return "redirect:/admin";
            case "ROLE_MANAGER":
                return "redirect:/manager";
            case "ROLE_USER":
                return "redirect:/user";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public String update(@RequestParam(required = false) String login,
                         @RequestParam(required = false) String password1,
                         @RequestParam(required = false) String password2,
                         @RequestParam(required = false) String email,
                         @RequestParam(required = false) String phone,
                         @RequestParam(required = false) String address,
                         Model model) {

        if (login.equals("") || password1.equals("") || password2.equals("") || !password1.equals(password2) || email.equals("") || phone.equals("") || address.equals("")) {
            model.addAttribute("error", "error");
            return "redirect:/login";
        }
        String passwordSHA1 = SHA.coderSHA1(password1).toString();
        CustomUser customUser = new CustomUser(login, passwordSHA1, UserRole.USER, email, phone, address);

        if (!userService.addUser(customUser)) {
            model.addAttribute("log", "error");
            return "redirect:/login";
        }
        model.addAttribute("reg", "ok");

        return "redirect:/login";
    }

    @RequestMapping(value = "/photo/{photo_id}")
    public void getImage(HttpServletRequest request, HttpServletResponse response, @PathVariable("photo_id") long photoId) {
        try {
            Blob blob = photoService.getPhotoOne(photoId).getBody();
            response.setContentType("images/png");
            response.getOutputStream().write(blob.getBytes(1, (int) blob.length()));
        } catch (IOException e) {
            System.out.println(e);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @RequestMapping(value = "/photo_name/{photo_name}")
    public void getImageByName(HttpServletRequest request, HttpServletResponse response, @PathVariable("photo_name") String photoName) {
        try {
            Blob blob = photoService.getPhotoByName(photoName).getBody();
            response.setContentType("images/png");
            response.getOutputStream().write(blob.getBytes(1, (int) blob.length()));
        } catch (IOException e) {
            System.out.println(e);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }*/
}
