package poly.edu.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int orderid;
	@Temporal(TemporalType.DATE)
	private Date orderDate;
	@Column(nullable = false)
	private String address;
	 @Column(nullable = false)
	private double amount;
	@Column(nullable = false)
	private boolean status;
	
	@ManyToOne
	@JoinColumn(name = "username") 
	User user;
	
	@OneToMany(mappedBy =  "order")
	List<OrderDetail> orderDetails;
	
	
}