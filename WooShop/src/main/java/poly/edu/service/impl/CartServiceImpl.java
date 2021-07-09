package poly.edu.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import poly.edu.entity.Cart;
import poly.edu.entity.Product;
import poly.edu.entity.User;
import poly.edu.repository.CartRepository;
import poly.edu.repository.CategoryRepository;
import poly.edu.service.CartService;
import poly.edu.service.CategoryService;
@Service
public class CartServiceImpl implements CartService {
CartRepository cartRepository;

public CartServiceImpl(CartRepository cartRepository) { 
	this.cartRepository = cartRepository;
}


@Override
public <S extends Cart> S save(S entity) {
	return cartRepository.save(entity);
}

@Override
public Page<Cart> findAll(Pageable pageable) {
	return cartRepository.findAll(pageable);
}

@Override
public List<Cart> findAll() {
	return cartRepository.findAll();
}

@Override
public List<Cart> findAllById(Iterable<Integer> ids) {
	return cartRepository.findAllById(ids);
}

@Override
public Optional<Cart> findById(Integer id) {
	return cartRepository.findById(id);
}

@Override
public <S extends Cart> List<S> saveAll(Iterable<S> entities) {
	return cartRepository.saveAll(entities);
}

@Override
public long count() {
	return cartRepository.count();
}

@Override
public void deleteById(Integer id) {
	cartRepository.deleteById(id);
}

@Override
public void delete(Cart entity) {
	cartRepository.delete(entity);
}

@Override
public void deleteAll() {
	cartRepository.deleteAll();
}


@Override
public Cart findByUserAndProduct(User user, Product product) {
	return cartRepository.findByUserAndProduct(user, product);
}


@Override
public List<Cart> findByUser(User user) {
	return cartRepository.findByUser(user);
}



}
