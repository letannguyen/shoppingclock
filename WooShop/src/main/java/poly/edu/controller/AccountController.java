package poly.edu.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.edu.entity.User;

import poly.edu.service.CookieService;
import poly.edu.service.ParamService;
import poly.edu.service.SessionService;
import poly.edu.service.UserService;

@Controller
public class AccountController {
	@Autowired
	UserService userService;
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService; 

	@RequestMapping("account/register")
	public String register1(Model model) {
		model.addAttribute("register", new User());
		return "account/register";
	}

	@RequestMapping("account/login")
	public String login(Model model) {
		model.addAttribute("login", new User());
		return "account/login";
	}

	@RequestMapping("account")
	public String account() {
		String  us=sessionService.get("username");
		User user = userService.findByUsername(us);
		if (user!=null) {
			return "redirect:/profile";
		}
		return "redirect:/account/login";

	}

	@RequestMapping("account/login2")
	public String login2() {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember",true);
		User us = userService.findByUsername(username);
		if (us != null) {
			if ((username.equals(us.getUsername())) && password.equals(us.getPassword())) {
				sessionService.set("username", us.getUsername());
				if (rm == true) {
					cookieService.add("user", us.getUsername(), 10);
					cookieService.add("pass", us.getPassword(), 10);
					System.out.println("Lưu tài khoản thành công");
				} else {
					cookieService.remove("user");
					System.out.println("Không lưu tài khoản ");
				}
			 
				if((us.isRole())==true) {
					return "redirect:/admin/product/list";
				}
				System.out.println("Đăng nhập thành công");
				return "redirect:/index";
			} else {
				System.out.println("Đăng nhập không thành công .. Sai mật khẩu");
				return "redirect:/account/login";
			}
		} else {
			System.out.println("Đăng nhập không thành công..Tài khoản không tồn tại");
			return "redirect:/account/login";
		}

	}

	@RequestMapping("account/save")
	public String register(@Validated @ModelAttribute("register") User user, BindingResult result, Model model)
			throws IOException {
		if (result.hasErrors()) {
			return "account/register";
		}
		User use = userService.findByUsername(user.getUsername());

		if (use == null) {
			user.setRegisteredDate(new Date());
			user.setStatus(true);
			userService.save(user);
			System.out.println("Thêm mới thành công " + user.getUsername());
		}

		if (use != null) {
			user.setRegisteredDate(use.getRegisteredDate());
			user.setStatus(true);
			userService.save(user);
			System.out.println("Cập nhật thành công " + user.getUsername());
		}

		return "redirect:/account/login";
	}

	@RequestMapping("/profile")
	public String User(Model model) {
		String us = sessionService.get("username");
		User user = userService.findByUsername(us);
		model.addAttribute("profile", user);
		return "/account/profile";
	}
	@RequestMapping("/save2")
	public String save(@Validated @ModelAttribute("profile") User user, BindingResult result)
			throws IOException {
		if (result.hasErrors()) {
			System.out.println("Cập nhật " + user.getUsername()); 
			return "redirect:/profile";
		}
		User us=userService.findByUsername(user.getUsername());
		System.out.println("Cập nhật thành công " + us.getUsername()); 

		return "redirect:/profile";
	}
	@RequestMapping("/logout")
	public String logout() {
		sessionService.remove("username");
		cookieService.remove("username");
		 
		System.out.println("Đã đăng xuất");
		return "redirect:/account/login";
	}

}
