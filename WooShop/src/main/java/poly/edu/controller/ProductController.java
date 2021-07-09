package poly.edu.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import poly.edu.entity.Category;
import poly.edu.entity.Product;
import poly.edu.service.CategoryService;
import poly.edu.service.ProductService;
import poly.edu.utils.FileUploadUtils;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;

	@RequestMapping("admin/product/add")
	public String index(Model model) {
		List<Category> items = categoryService.findAll();
		model.addAttribute("items", items);
		model.addAttribute("product", new Product());
		return "admin/product/add";

	}

	@RequestMapping("admin/product/edit/{productid}")
	public String edit(Model model, @PathVariable("productid") Integer id) {
		Product pr = productService.findById(id).get();
		model.addAttribute("product", pr);
	    model.addAttribute("image",pr.getImage());
		List<Category> items = categoryService.findAll();
		model.addAttribute("items", items);
      
		return "admin/product/add";
	}

	@RequestMapping("admin/product/delete/{productid}")
	public String delete(@PathVariable("productid") Integer id) {
		productService.deleteById(id);
		return "redirect:/admin/product/list";
	}

	@RequestMapping("admin/product/save")
	public String save(@Validated @ModelAttribute("product") Product product, BindingResult result, Model model,
			@RequestParam("image") MultipartFile multipartFile) throws IOException {

//		if (result.hasErrors()) {  
//			List<Category> items = categoryService.findAll();
//			model.addAttribute("items", items);
//			
//			System.out.println("Lưu không thành công");
//			return "/admin/product/add";
//		}
		if (multipartFile.isEmpty()) {
			List<Category> items = categoryService.findAll();
			model.addAttribute("items", items);
			model.addAttribute("errorIMG", "Hãy chọn ảnh");
			System.out.println("Lỗi ảnh");
			return "/admin/product/add";
		}

		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadDir = "uploads/";
		
		product.setImage(fileName);
		FileUploadUtils.saveFile(uploadDir, fileName, multipartFile);
		if (product.getQuantity() >= 1) {
			product.setStatus(true);
		}
		
		product.setEnteredDate(new Date());
		
		productService.save(product);

		System.out.println("Lưu thành công");
		return "redirect:/admin/product/add";
	}

	@RequestMapping("admin/product/list")
	public String list(Model model) {
		List<Product> items = productService.findAll(); 
		model.addAttribute("items", items);
		return "admin/product/list";
	}

	
	@RequestMapping("product/view/{type}")
	public String view(@PathVariable("type") String ty , Model model) { 
		Boolean type;
		if (ty.equals("nam")) {
			 type=true;
			 ty="Áo quần nam";
		} else {
			 type=false;
			 ty="Áo quần nữ";
		}
		List<Product> items = productService.findByType(type);
		model.addAttribute("items", items);
		model.addAttribute("type", ty);
		return "user/product/viewAll";
	}

	@RequestMapping("product/details/{productid}")
	public String details(Model model, @PathVariable("productid") Integer id) {
		Product pr = productService.findById(id).get(); 
	    model.addAttribute("name",pr.getName());
	    model.addAttribute("image",pr.getImage());
	    model.addAttribute("category",pr.getCategory().getName());
	    model.addAttribute("price",pr.getPrice());
	    model.addAttribute("discount",pr.getDiscount());
	    model.addAttribute("description",pr.getDescription());
	   
		return "user/product/details";
	}
	@RequestMapping("product/search")
	public String search(Model model, @RequestParam("search") String search ) {
		if(search==null) {
			return "redirect:/index";
		}
		Category ca=categoryService.findByName(search);
		List<Product> items = productService.findByNameContainingOrCategory(search,ca);
		model.addAttribute("items", items);
		model.addAttribute("type","KẾT QUẢ TÌM KIẾM : "+search +"( Có "+ items.size() +" sản phẩm )");
		return "user/product/viewAll";
	}
	
	@RequestMapping("admin/product/searchprod")
	public String searchprod(Model model, @RequestParam("name") String name ) {
		
		List<Product> list = null;
		if(StringUtils.hasText(name)) {
			list = productService.findByNameContaining(name);
		}else {
			list =productService.findAll();
		}
		
		model.addAttribute("items", list);
		
		return "admin/product/list";
	}
}
