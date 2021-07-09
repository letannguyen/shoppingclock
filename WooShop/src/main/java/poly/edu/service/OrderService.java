package poly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import poly.edu.entity.Order;
import poly.edu.entity.User;

public interface OrderService {

	void deleteAll();

	void delete(Order entity);

	void deleteById(Integer id);

	long count();

	<S extends Order> boolean exists(Example<S> example);

	boolean existsById(Integer id);

	<S extends Order> List<S> saveAll(Iterable<S> entities);

	Optional<Order> findById(Integer id);

	List<Order> findAllById(Iterable<Integer> ids);

	List<Order> findAll();

	Page<Order> findAll(Pageable pageable);

	<S extends Order> S save(S entity);

	List<Order> findByUser(User user);

	List<Order> findByUserOrderByStatusAsc(User user);

	

}
