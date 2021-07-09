package poly.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.edu.entity.Order;
import poly.edu.entity.OrderDetail;
import poly.edu.entity.User;
import poly.edu.service.OrderDetailService;
import poly.edu.service.OrderService;
import poly.edu.service.SessionService;
import poly.edu.service.UserService;
 
@Controller
public class OrderController {
	 @Autowired
	 OrderService orderService;
	 @Autowired
	 SessionService sessionService;
	 @Autowired
	 UserService userService;
	 @Autowired
	 OrderDetailService orderDetailService;
	@RequestMapping("order") 
	public String view(Model model) {
		    String us = sessionService.get("username");
		    User user= userService.findByUsername(us);
			List<Order> items = orderService.findByUserOrderByStatusAsc(user);
			if((items.size())==0) {
				System.out.println("Bạn chưa có đơn hàng nào ");
				return "redirect:/cart";
			}
			model.addAttribute("items", items);  
		return "user/order/order";
	}
	@RequestMapping("orderdetails/{orderid}") 
	public String orderdetails (Model model, @PathVariable("orderid") int id) {
		Order order= orderService.findById(id).get();
		List<OrderDetail> items= orderDetailService.findByOrder(order);
		model.addAttribute("items",items);
		System.out.println("Xem chi tiết đơn hàng "+id);
		return "user/order/orderdetail";
	}
	
	@RequestMapping("order/delete/{orderid}") 
	public String delete(Model model, @PathVariable("orderid") int id) {
		Order order= orderService.findById(id).get();
		if((order.isStatus())==true) {
			System.out.println("Đơn Hàng đã được xác nhận không thể hủy");
			return "redirect:/order";
		}
		System.out.println("Hủy đơn hàng thành công");
		orderService.delete(order);
		return "redirect:/order";
	}
	@RequestMapping("admin/order") 
	public String viewall(Model model) {  
			List<Order> items = orderService.findAll();
			model.addAttribute("items", items);  
		return "admin/order/list";
	}
	@RequestMapping("admin/order/{orderid}") 
	public String check(Model model, @PathVariable("orderid") int id) {
		Order order= orderService.findById(id).get();
		if((order.isStatus())==true) {
			System.out.println("Đơn hàng đã được  xác nhận ");
			return "redirect:/admin/order";
		}
		order.setStatus(true);
		orderService.save(order);
		System.out.println("Đơn Hàng đã được xác nhận ");
		 
		return "redirect:/admin/order";
	}
}
