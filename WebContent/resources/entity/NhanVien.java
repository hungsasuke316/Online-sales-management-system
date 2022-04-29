package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="NhanVien")
public class NhanVien {
	@Id
	@Column(name="MANV")
	private String maNV;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="SODT")
	private String sdt;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name="NGVL")
	private Date ngayVL;
	@Column(name="PASS")
	private String pass;
	@OneToMany(mappedBy = "nhanVien", fetch = FetchType.EAGER)
	private Collection<HoaDon> hoaDon;
	public String getMaNV() {
		return maNV;
	}
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Date getNgayVL() {
		return ngayVL;
	}
	public void setNgayVL(Date ngayVL) {
		this.ngayVL = ngayVL;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public Collection<HoaDon> getHoaDon() {
		return hoaDon;
	}
	public void setHoaDon(Collection<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}
	public NhanVien() {
		super();
	}
	public NhanVien(String maNV, String hoTen, String sdt, Date ngayVL, String pass, Collection<HoaDon> hoaDon) {
		super();
		this.maNV = maNV;
		this.hoTen = hoTen;
		this.sdt = sdt;
		this.ngayVL = ngayVL;
		this.pass = pass;
		this.hoaDon = hoaDon;
	}
	
	
}

