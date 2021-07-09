package poly.edu.entity;

import java.io.Serializable; 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne; 
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orderdetails",uniqueConstraints = {@UniqueConstraint(columnNames = {"orderid","productid"})}) 
public class OrderDetail implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderdentailsid; 
	
	@Column(nullable = false)
	private int quantity;
	@Column(nullable = false)
	private double price;
	@ManyToOne
	@JoinColumn(name = "productid") 
	Product product;
	@ManyToOne
	@JoinColumn(name = "orderid")
	Order order;
	
	
}