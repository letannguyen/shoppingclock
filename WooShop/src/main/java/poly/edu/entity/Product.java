package poly.edu.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity; 
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull; 

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@NotNull(message = "Tên danh mục không đươc rỗng")
	private int productid;

	@Column(columnDefinition = "nvarchar(100) not null")
	@NotEmpty(message = "Tên sản phẩm không đươc rỗng")
	private String name;
	@Column(nullable = false)
	@Min(1)
	private int quantity;
	@Column(nullable = false)
	@Min(1)
	private double price; 
	private String image;
	@Column(columnDefinition = "nvarchar(100) ")
	private String description;
	@Column(nullable = false)
	@Min(0)
	private double discount;
	@Temporal(TemporalType.DATE)
	private Date enteredDate;
	@Column(nullable = false)
	private boolean status;

	@Column(nullable = false)
	private boolean type;
	@ManyToOne
	@JoinColumn(name = "Categoryid") 
	Category category;
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetail;
	
	@OneToMany(mappedBy = "product")
	List<Cart> carts;
}