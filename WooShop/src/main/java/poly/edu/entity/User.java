package poly.edu.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor

 @Entity 
 @Table(name = "users") 
 public class User implements Serializable{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 @Id 
	 @Column(columnDefinition = "nvarchar(50)")
	 @NotEmpty(message = "Tài khoản không đươc rỗng")
	 private String username;
	 
	
	 @Column(columnDefinition = "nvarchar(100) not null") 
	 @NotEmpty(message = "Họ tên không đươc rỗng")
	 private String fullname;
	 
	 
	 @Column(columnDefinition = "nvarchar(100) not null") 
	 @NotEmpty(message = "Email không được rỗng")
	 @Email(message = "Email không đúng định dạng")
	 private String email;
	 
	 @Column(columnDefinition = "nvarchar(100) not null") 
	 @NotEmpty(message = "Mật khẩu không đươc rỗng")		
	 @Size(min =6,message = "Mat khau > 6 ki tu")
	 private String password; 
	 
	 @NotEmpty(message = "Số điện thoại không đươc rỗng")
	 @Column(columnDefinition = "nvarchar(20) not null") 
	 private String phone; 
	 @Temporal(TemporalType.DATE) 
	 private Date registeredDate;
	 @Column(nullable = false) 
	 private boolean status;
	 @Column(nullable = false) 
	 private boolean role;
	 
	 @OneToMany(mappedBy="user")
		List<Order> order;
	 @OneToMany(mappedBy="user")
		List<Cart> carts;
	
 }


