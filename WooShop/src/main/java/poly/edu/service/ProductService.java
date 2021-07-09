package poly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import poly.edu.entity.Category;
import poly.edu.entity.Product;

public interface ProductService {

	void deleteAll();

	void delete(Product entity);

	void deleteById(Integer id);

	<S extends Product> boolean exists(Example<S> example);

	boolean existsById(Integer id);

	void flush();

	<S extends Product> List<S> saveAll(Iterable<S> entities);

	Optional<Product> findById(Integer id);

	List<Product> findAllById(Iterable<Integer> ids);

	List<Product> findAll();

	Page<Product> findAll(Pageable pageable);

	<S extends Product> S save(S entity);

	List<Product> findByType(Boolean n);

	List<Product> findByNameContainingOrCategory(String name, Category category);

	List<Product> findByNameContaining(String name);


 
	
}
