package poly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import poly.edu.entity.Cart;
import poly.edu.entity.Product;
import poly.edu.entity.User;

public interface CartService {

	void deleteAll();

	void delete(Cart entity);

	void deleteById(Integer id);

	long count();

	<S extends Cart> List<S> saveAll(Iterable<S> entities);

	Optional<Cart> findById(Integer id);

	List<Cart> findAllById(Iterable<Integer> ids);

	List<Cart> findAll();

	Page<Cart> findAll(Pageable pageable);

	<S extends Cart> S save(S entity);

	Cart findByUserAndProduct(User user, Product product);

	List<Cart> findByUser(User user);
 

	
}
