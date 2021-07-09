package poly.edu.controller;

import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.edu.entity.Category;
import poly.edu.entity.Product;
import poly.edu.service.CategoryService;

@Controller

public class CategoryController {
	@Autowired
	CategoryService categoryService;
	

	@RequestMapping("admin/category/add")
	public String index(Model model) {
		model.addAttribute("category", new Category());
		return "admin/category/add";
	}

	@RequestMapping("admin/category/save")
	public String add(@Validated @ModelAttribute("category") Category category, BindingResult result, Model model)
			throws IOException {
		if (result.hasErrors()) { 
			return "/admin/category/add";
		}
			categoryService.save(category); 
			System.out.println("Lưu thành công");
		
		return "redirect:/admin/category/add";
	}

	@RequestMapping("admin/category/edit/{categoryid}")
	public String edit(Model model, @PathVariable("categoryid") Integer id) {
		Category ca = categoryService.findById(id).get();
		model.addAttribute("category", ca);

		return "admin/category/add";
	}

	@RequestMapping("admin/category/delete/{categoryid}")
	public String delete(@PathVariable("categoryid") 	Integer id) {
		categoryService.deleteById(id);
		return "redirect:/admin/category/list";
	}

	@RequestMapping("admin/category/list")
	public String list(Model model) {
		List<Category> items = categoryService.findAll();
		model.addAttribute("items", items);
		return "admin/category/list";
	}
	
	@RequestMapping("admin/category/searchprod")
	public String searchprod(Model model, @RequestParam("name") String name ) {
		
		List<Category> list = null;
		if(StringUtils.hasText(name)) {
			list = categoryService.findByNameContaining(name);
		}else {
			list = categoryService.findAll();
		}
		
		model.addAttribute("items", list);
		
		return "admin/category/list";
	}

}