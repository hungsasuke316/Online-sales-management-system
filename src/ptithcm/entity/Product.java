package ptithcm.entity;

import java.math.BigDecimal;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
public class Product {
	@Id
	@GeneratedValue
	@Column(name = "product_id")
    private Integer product_id;
	@Column(name = "product_name")
	private String product_name;
	@Column(name = "product_type")
	private String product_type;

	@Column(name = "product_price")
	// @NumberFormat(pattern = "##.###.###")
	private Float product_price;
	@Column(name = "product_image")
	private String product_image;
	@Column(name = "product_description")
	private String product_description;
	@Column(name = "product_status")
	private boolean product_status;

	@OneToMany(mappedBy = "product_id_cmt", fetch = FetchType.EAGER)
	private Set<Comment> comment;

	@OneToMany(mappedBy = "product_id_bill", fetch = FetchType.EAGER)
	private Set<Bill> bill;

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_type() {
		return product_type;
	}

	public void setProduct_type(String product_type) {
		this.product_type = product_type;
	}

	public Float getProduct_price() {
		return product_price;
	}

	public void setProduct_price(Float product_price) {
		this.product_price = product_price;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public String getProduct_description() {
		return product_description;
	}

	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	public boolean isProduct_status() {
		return product_status;
	}

	public void setProduct_status(boolean product_status) {
		this.product_status = product_status;
	}

	public Set<Comment> getComment() {
		return comment;
	}

	public void setComment(Set<Comment> comment) {
		this.comment = comment;
	}

	public Set<Bill> getBill() {
		return bill;
	}

	public void setBill(Set<Bill> bill) {
		this.bill = bill;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	



	
}
