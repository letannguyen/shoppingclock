package poly.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import poly.edu.entity.Order;
import poly.edu.entity.OrderDetail;
import poly.edu.entity.Product;
 



@Repository
public interface OrderDetailReponsitory extends JpaRepository<OrderDetail,Integer>{
	List<OrderDetail> findByOrder(Order order);
}
