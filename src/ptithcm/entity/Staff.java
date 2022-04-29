package ptithcm.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Staff")
public class Staff {
	@Id
	@Column(name="staff_id")
	private String staff_id;
	@Column(name="staff_name")
	private String staff_name;
	@Column(name="staff_phone")
	private String staff_phone;
	@Column(name="staff_password")
	private String staff_password;
	@Column(name="id_role")
	private Integer id_role;
	@Column(name="enable")
	private boolean enable;
	@OneToMany(mappedBy = "staff_id_bill", fetch = FetchType.EAGER)
	private Set<Bill> bill;
	
	public String getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_phone() {
		return staff_phone;
	}
	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}
	public String getStaff_password() {
		return staff_password;
	}
	public void setStaff_password(String staff_password) {
		this.staff_password = staff_password;
	}
	public Integer getId_role() {
		return id_role;
	}
	public void setId_role(Integer id_role) {
		this.id_role = id_role;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	public Set<Bill> getBill() {
		return bill;
	}
	public void setBill(Set<Bill> bill) {
		this.bill = bill;
	}
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
