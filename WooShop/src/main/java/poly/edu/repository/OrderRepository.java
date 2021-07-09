package poly.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
 
import poly.edu.entity.Order;
import poly.edu.entity.User;


@Repository
public interface OrderRepository extends JpaRepository<Order,Integer>{
	List<Order> findByUser(User user);
	
	List<Order> findByUserOrderByStatusAsc(User user);
	
}
