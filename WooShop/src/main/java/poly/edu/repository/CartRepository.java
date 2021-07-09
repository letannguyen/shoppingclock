package poly.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
 
import poly.edu.entity.Cart;
import poly.edu.entity.Product;
import poly.edu.entity.User; 

@Repository
public interface CartRepository extends JpaRepository<Cart,Integer>{

	Cart findByUserAndProduct(User user,Product product);
	List<Cart> findByUser(User user);
	
	
	
}

