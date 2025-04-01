package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("login")
	public String getLoginForm() {
		
		return "login-form.jsp";
	}
	
	@RequestMapping("authentication")//request object mea map ka use hota hai key-value pair //key naam text box ke naam se banata hai
	public String getLoginForm(String userid,String password,Model model) {
	if(userid.equalsIgnoreCase("admin") && password.equals("solution"))
		{
		return "home.jsp";
		}
			
			model.addAttribute("msg","user id or password is incorrect");
			return "login-form.jsp";
		
	}
	
}
