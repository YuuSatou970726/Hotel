package vn.com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HomeController 
{
	
	@Autowired
    private AuthenticationTrustResolver authenticationTrustResolver;
	
	@GetMapping
	public String index() {
		return "rooms";
	}
	
	@RequestMapping(value = "/about",method = RequestMethod.GET)
	public String About(Model model)
	{
		return "about";
	}
	
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public String Rooms(Model model)
	{
		return "rooms";
	}
	
	@RequestMapping(value = "/services",method = RequestMethod.GET)
	public String Test(Model model)
	{
		return "services";
	}
	
	@GetMapping(value = "/login")
	public String Login() 
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authenticationTrustResolver.isAnonymous(authentication))
		{
			return "login";
		}
			
		
		return "redirect:/manager-list";
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication != null)
			SecurityContextHolder.getContext().setAuthentication(null);
			
		return "redirect:/login?logout=true";
	}
	
	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model)
	{
		return "denied";
	}
}
