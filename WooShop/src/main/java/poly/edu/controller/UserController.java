package poly.edu.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.edu.entity.Category;
import poly.edu.entity.Product;
import poly.edu.entity.User;
import poly.edu.repository.UserRepository;
import poly.edu.service.ProductService;
import poly.edu.service.UserService;
@Controller

public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@RequestMapping("index")
	public String index(Model model) {
		List<Product> items=productService.findAll();
		model.addAttribute("items",items);
		return "/layout";
	}
	@RequestMapping("admin/profile/add") 
	public String add(Model model) {
		model.addAttribute("profile", new User());
		return "admin/user/update";
	}
	
	@RequestMapping("admin/save/profile")
	public String saveOrUpdate(@Validated @ModelAttribute("profile") User user,BindingResult result, Model model)
			throws IOException {
		if (result.hasErrors()) { 
			return "admin/user/update";
		}
		User use = userService.findByUsername(user.getUsername());
		if (use == null) {
			user.setRegisteredDate(new Date());
			
			userService.save(user);
			System.out.println("Thêm mới thành công " + user.getUsername());
		}

		if (use != null) {
			user.setRegisteredDate(use.getRegisteredDate());
			userService.save(user);
			System.out.println("Cập nhật thành công " + user.getUsername());
		}

		return "redirect:/admin/user/list";
	}
	@RequestMapping("delete/profile/{username}")
	public String delete( @PathVariable("username") String username) {
		userService.deleteById(username);
		return "redirect:/admin/user/list";
	}
	@RequestMapping("/edit/profile/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
			User item = userService.findByUsername(username);
			model.addAttribute("profile", item);  
		return "admin/user/update";
	}
	@RequestMapping("account/forgot")
	public String forgot() {
		return "account/forgot";
	}
	@RequestMapping("admin/user/list")
	public String list(Model model) {
			List<User> items = userService.findAll();
			model.addAttribute("items", items);
		return "/admin/user/listUser";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "/hotro/contact";
	}
	@RequestMapping("/answer")
	public String answer() {
		return "/hotro/answer";
	}
}
