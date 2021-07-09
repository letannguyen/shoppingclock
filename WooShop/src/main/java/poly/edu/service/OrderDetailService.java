package poly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import poly.edu.entity.Order;
import poly.edu.entity.OrderDetail;
import poly.edu.entity.Product;

public interface OrderDetailService {

	void deleteAll();

	void delete(OrderDetail entity);

	void deleteById(Integer id);

	long count();

	<S extends OrderDetail> boolean exists(Example<S> example);

	void flush();

	<S extends OrderDetail> List<S> saveAll(Iterable<S> entities);

	Optional<OrderDetail> findById(Integer id);

	List<OrderDetail> findAllById(Iterable<Integer> ids);

	List<OrderDetail> findAll();

	Page<OrderDetail> findAll(Pageable pageable);

	<S extends OrderDetail> S save(S entity);

	Product update(Integer id, int qty);

	Product add(Integer id);

	List<OrderDetail> findByOrder(Order order);

}
