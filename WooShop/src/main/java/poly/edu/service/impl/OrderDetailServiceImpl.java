package poly.edu.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import poly.edu.entity.Order;
import poly.edu.entity.OrderDetail;
import poly.edu.entity.Product;
import poly.edu.repository.OrderDetailReponsitory;
import poly.edu.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	OrderDetailReponsitory ordDetailReponsitory;

	public OrderDetailServiceImpl(OrderDetailReponsitory ordDetailReponsitory) { 
		this.ordDetailReponsitory = ordDetailReponsitory;
	}

	@Override
	public <S extends OrderDetail> S save(S entity) {
		return ordDetailReponsitory.save(entity);
	}

	@Override
	public Page<OrderDetail> findAll(Pageable pageable) {
		return ordDetailReponsitory.findAll(pageable);
	}

	@Override
	public List<OrderDetail> findAll() {
		return ordDetailReponsitory.findAll();
	}

	@Override
	public List<OrderDetail> findAllById(Iterable<Integer> ids) {
		return ordDetailReponsitory.findAllById(ids);
	}

	@Override
	public Optional<OrderDetail> findById(Integer id) {
		return ordDetailReponsitory.findById(id);
	}

	@Override
	public <S extends OrderDetail> List<S> saveAll(Iterable<S> entities) {
		return ordDetailReponsitory.saveAll(entities);
	}

	@Override
	public void flush() {
		ordDetailReponsitory.flush();
	}

	@Override
	public <S extends OrderDetail> boolean exists(Example<S> example) {
		return ordDetailReponsitory.exists(example);
	}

	@Override
	public long count() {
		return ordDetailReponsitory.count();
	}

	@Override
	public void deleteById(Integer id) {
		ordDetailReponsitory.deleteById(id);
	}

	@Override
	public void delete(OrderDetail entity) {
		ordDetailReponsitory.delete(entity);
	}

	@Override
	public List<OrderDetail> findByOrder(Order order) {
		return ordDetailReponsitory.findByOrder(order);
	}

	@Override
	public void deleteAll() {
		ordDetailReponsitory.deleteAll();
	}
 
	public Product add(Integer id) {
		return add(id);
	}
 
	public Product update(Integer id, int qty) {
		return update(id, qty);
	}
	
}
