 
package poly.edu.controller;

import java.util.Date;
import java.util.List;

import org.hibernate.cfg.AbstractPropertyHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.edu.entity.Cart;
import poly.edu.entity.Order;
import poly.edu.entity.OrderDetail;
import poly.edu.entity.Product;
import poly.edu.entity.User;
import poly.edu.service.CartService;
import poly.edu.service.OrderDetailService;
import poly.edu.service.OrderService;
import poly.edu.service.ProductService;
import poly.edu.service.SessionService;
import poly.edu.service.UserService; 

@Controller 
public class CartController {
	@Autowired
	CartService cartService;
    @Autowired
    SessionService sessionService;
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailService orderDetailService;
	
	@RequestMapping("/cart/add/{productid}")
	public String add(Model model, @PathVariable("productid") int id) {
		String us = sessionService.get("username");
		if(us==null) {
			return "/account/login";
		}
		Product product=productService.findById(id).get();
		User user=userService.findByUsername(us);
		Cart ca=cartService.findByUserAndProduct(user,product); 
		System.out.println("Sản phẫm đã có trong giỏ hàng  "+us);
		System.out.println("Sản phẫm đã có trong giỏ hàng  "+id);
        if(ca==null) { 
        	Cart cart= new Cart();
        	cart.setProduct(product);
        	cart.setUser(user);
        	cart.setQuantity(1);
        	cartService.save(cart);
        	System.out.println("Thêm vào giỏ hàng thành công ");
        }else { 
        	ca.setQuantity(ca.getQuantity()+1);
        	cartService.save(ca);
        	System.out.println("Sản phẫm đã có trong giỏ hàng  ");
        }
        return "redirect:/cart";
	}
	@RequestMapping("/cart/delete/{productid}") 
	public String delete(Model model, @PathVariable("productid") int id) {
		String us = sessionService.get("username"); 
		User user=userService.findByUsername(us);
		Product product=productService.findById(id).get();
		Cart ca=cartService.findByUserAndProduct(user,product); 
		cartService.delete(ca);
		return "redirect:/cart";
	}
	@RequestMapping("/cart") 
	public String list(Model model) {
		String us = sessionService.get("username");
		if(us==null) {
			return "/account/login";
		}
		User user=userService.findByUsername(us);
		List<Cart> items = cartService.findByUser(user);
		model.addAttribute("items", items);
		
		return "user/cart/carts";
	}
	@RequestMapping("/orderok") 
	public String order(@ModelAttribute("cart") Cart cart,Model model) { 
		String us = sessionService.get("username");
		
		if(us==null) {
			return "/account/login";
		}
		
		User user=userService.findByUsername(us);
		List<Cart> items = cartService.findByUser(user);
		if(items.size()==0) {
			System.out.println("Giỏ hàng trống");
			return "redirect:/cart";
		}
		Order od= new Order();
		od.setAddress("52 NGUYEN ĐO CUNG");
		od.setUser(user);
		od.setOrderDate(new Date());
		od.setStatus(false); 
		float tt =0; 
		od.setAmount(tt);
		
		orderService.save(od);
		for (Cart ca: items) {  
			 float x = (float) ca.getProduct().getPrice();
			 float y = (float) ca.getProduct().getDiscount();
			 float z=ca.getQuantity();
			 tt = tt+(x*z)-(x*y/100) ;
			 System.out.println("ttt"+tt);
			 
			 OrderDetail odl= new OrderDetail();
			 Product prd=productService.findById(ca.getProduct().getProductid()).get();
			 odl.setOrder(od);
			 odl.setPrice(tt);
			 odl.setQuantity(ca.getQuantity());
			 odl.setProduct(prd);
			 orderDetailService.save(odl);
			 cartService.delete(ca);
			 
		} 
		System.out.println("Thanh toán thành công đơn hàng  "+od.getOrderid());
		int a=Float.valueOf(tt).intValue();
		od.setAmount(a);
		orderService.save(od);
		return "user/cart/carts";
	}
}