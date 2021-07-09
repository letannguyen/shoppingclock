package poly.edu.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import poly.edu.entity.Order;
import poly.edu.entity.User;
import poly.edu.repository.OrderRepository;
import poly.edu.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
OrderRepository orderRepository;

@Override
public List<Order> findByUser(User user) {
	return orderRepository.findByUser(user);
}

public OrderServiceImpl(OrderRepository orderRepository) { 
	this.orderRepository = orderRepository;
}

@Override
public <S extends Order> S save(S entity) {
	return orderRepository.save(entity);
}

@Override
public Page<Order> findAll(Pageable pageable) {
	return orderRepository.findAll(pageable);
}

@Override
public List<Order> findByUserOrderByStatusAsc(User user) {
	return orderRepository.findByUserOrderByStatusAsc(user);
}

@Override
public List<Order> findAll() {
	return orderRepository.findAll();
}

@Override
public List<Order> findAllById(Iterable<Integer> ids) {
	return orderRepository.findAllById(ids);
}

@Override
public Optional<Order> findById(Integer id) {
	return orderRepository.findById(id);
}

@Override
public <S extends Order> List<S> saveAll(Iterable<S> entities) {
	return orderRepository.saveAll(entities);
}

@Override
public boolean existsById(Integer id) {
	return orderRepository.existsById(id);
}

@Override
public <S extends Order> boolean exists(Example<S> example) {
	return orderRepository.exists(example);
}

@Override
public long count() {
	return orderRepository.count();
}

@Override
public void deleteById(Integer id) {
	orderRepository.deleteById(id);
}

@Override
public void delete(Order entity) {
	orderRepository.delete(entity);
}

@Override
public void deleteAll() {
	orderRepository.deleteAll();
}

}
