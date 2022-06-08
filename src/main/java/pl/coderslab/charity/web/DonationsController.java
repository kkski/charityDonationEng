//package pl.coderslab.charity.web;
//
//import org.springframework.security.core.annotation.AuthenticationPrincipal;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import pl.coderslab.charity.model.User;
//import pl.coderslab.charity.services.CurrentUser;
//import pl.coderslab.charity.services.DonationService;
//
//@Controller
//public class DonationsController {
//
//
//    private DonationService donationService;
//
//    @GetMapping("/app/donations")
//    public String showDonations(Model model, @AuthenticationPrincipal CurrentUser customUser) {
//        User loggedUser = customUser.getUser();
//
//        model.addAttribute("donations", donationService.findDonationsByUserId(loggedUser.getId()));
//        return "/app/donations/donations";
//    }
//}
