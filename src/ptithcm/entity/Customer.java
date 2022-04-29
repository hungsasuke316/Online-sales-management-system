package ptithcm.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Customer")
public class Customer {
	@Id
	@GeneratedValue
	@Column(name="customer_id")
	private Integer customer_id;
	@Column(name="customer_name")
	private String customer_name;
	@Column(name="customer_address")
	private String customer_address;
	@Column(name="customer_phone")
	private String customer_phone;
	@Column(name="customer_DoB")
	private String customer_DoB;
	
	@OneToMany(mappedBy = "customer_id_bill", fetch = FetchType.EAGER)
	private  Set<Bill> bill;

	public Integer getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_DoB() {
		return customer_DoB;
	}

	public void setCustomer_DoB(String customer_DoB) {
		this.customer_DoB = customer_DoB;
	}

	public Set<Bill> getBill() {
		return bill;
	}

	public void setBill(Set<Bill> bill) {
		this.bill = bill;
	}

	

	
	
	
}
