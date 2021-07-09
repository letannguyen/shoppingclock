package poly.edu.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import poly.edu.entity.User;
import poly.edu.repository.UserRepository;
import poly.edu.service.UserService;
@Service
public class UserServiceImpl  implements UserService {
   UserRepository userRepository;

public UserServiceImpl(UserRepository userRepository) { 
	this.userRepository = userRepository;
}

@Override
public User findByUsername(String username) {
	return userRepository.findByUsername(username);
}

@Override
public <S extends User> S save(S entity) {
	return userRepository.save(entity);
}

@Override
public Page<User> findAll(Pageable pageable) {
	return userRepository.findAll(pageable);
}

@Override
public List<User> findAll() {
	return userRepository.findAll();
}

@Override
public List<User> findAllById(Iterable<String> ids) {
	return userRepository.findAllById(ids);
}

@Override
public Optional<User> findById(String id) {
	return userRepository.findById(id);
}

@Override
public <S extends User> List<S> saveAll(Iterable<S> entities) {
	return userRepository.saveAll(entities);
}

@Override
public void flush() {
	userRepository.flush();
}

@Override
public boolean existsById(String id) {
	return userRepository.existsById(id);
}

@Override
public long count() {
	return userRepository.count();
}

@Override
public void deleteById(String id) {
	userRepository.deleteById(id);
}

@Override
public void delete(User entity) {
	userRepository.delete(entity);
}

@Override
public void deleteAllById(Iterable<? extends String> ids) {
	userRepository.deleteAllById(ids);
}

@Override
public void deleteAll() {
	userRepository.deleteAll();
}
   
}
