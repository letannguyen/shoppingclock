package poly.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import poly.edu.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Integer>{
	Category findByName(String name);
	List<Category> findByNameContaining(String name);
}
