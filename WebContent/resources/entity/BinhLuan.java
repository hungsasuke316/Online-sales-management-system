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
@Table(name="BinhLuan")
public class BinhLuan {
	@Id
	@GeneratedValue
	@Column(name="IDCMT")
	private Integer idCmt;
	@ManyToOne
	@JoinColumn(name="maSP")
	private SanPham sanPham;
	@Column(name="TEN")
	private String ten;
	@Column(name="EMAIL")
	private String email;
	@Column(name="NOIDUNG")
	private String nd;
	@Column(name = "CMT_TIME")
	private Date cmtTime;
	public Integer getIdCmt() {
		return idCmt;
	}
	public void setIdCmt(Integer idCmt) {
		this.idCmt = idCmt;
	}
	
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNd() {
		return nd;
	}
	public void setNd(String nd) {
		this.nd = nd;
	}
	
	public Date getCmtTime() {
		return cmtTime;
	}
	public void setCmtTime(Date cmtTime) {
		this.cmtTime = cmtTime;
	}
	public BinhLuan() {
		super();
	}
	
	
}
