package ptithcm.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Bill")
public class Bill {
	@Id
	@GeneratedValue
	@Column(name="bill_id")
	private Integer bill_id;
	@Column(name="bill_date")
	private Date bill_date;
	@Column(name="total")
	private Float total;
	@Column(name="quantity")
	private Integer quantity;
	@ManyToOne
	@JoinColumn(name="staff_id")
	private Staff staff_id_bill;
	@Column(name="bill_status")
	private Integer bill_status;
	
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer_id_bill;
	
	@ManyToOne
	@JoinColumn(name="product_id")
	private Product product_id_bill;

	public Integer getBill_id() {
		return bill_id;
	}

	public void setBill_id(Integer bill_id) {
		this.bill_id = bill_id;
	}

	public Date getBill_date() {
		return bill_date;
	}

	public void setBill_date(Date bill_date) {
		this.bill_date = bill_date;
	}

	public Float getTotal() {
		return total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Staff getStaff_id_bill() {
		return staff_id_bill;
	}

	public void setStaff_id_bill(Staff staff_id_bill) {
		this.staff_id_bill = staff_id_bill;
	}

	public Customer getCustomer_id_bill() {
		return customer_id_bill;
	}

	public void setCustomer_id_bill(Customer customer_id_bill) {
		this.customer_id_bill = customer_id_bill;
	}

	public Product getProduct_id_bill() {
		return product_id_bill;
	}

	public void setProduct_id_bill(Product product_id_bill) {
		this.product_id_bill = product_id_bill;
	}	

	public Integer getBill_status() {
		return bill_status;
	}

	public void setBill_status(Integer bill_status) {
		this.bill_status = bill_status;
	}

	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	
	
	
}	
