package poly.edu.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import poly.edu.entity.Category;
import poly.edu.entity.Product; 
@Repository
public interface ProductRepository extends JpaRepository<Product,Integer>{
	 List<Product> findByType(Boolean n );
	 List<Product> findByNameContainingOrCategory(String name,Category category);
	 List<Product> findByNameContaining(String name);
}
