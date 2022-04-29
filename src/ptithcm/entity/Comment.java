package ptithcm.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Comment")
public class Comment {
	@Id
	@GeneratedValue
	@Column(name="cmt_id")
	private Integer cmt_id;
	@ManyToOne
	@JoinColumn(name="product_id")
	private Product product_id_cmt;
	@Column(name="name")
	private String name;
	@Column(name="email")
	private String email;
	@Column(name="content")
	private String content;
	@Column(name = "cmt_time")
	private Date cmt_time;
	public Integer getCmt_id() {
		return cmt_id;
	}
	public void setCmt_id(Integer cmt_id) {
		this.cmt_id = cmt_id;
	}
	public Product getProduct_id_cmt() {
		return product_id_cmt;
	}
	public void setProduct_id_cmt(Product product_id_cmt) {
		this.product_id_cmt = product_id_cmt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCmt_time() {
		return cmt_time;
	}
	public void setCmt_time(Date cmt_time) {
		this.cmt_time = cmt_time;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
