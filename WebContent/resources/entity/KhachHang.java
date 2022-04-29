package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="KhachHang")
public class KhachHang {
	@Id
	@GeneratedValue
	@Column(name="MAKH")
	private Integer maKH;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="DCHI")
	private String diaChi;
	@Column(name="SODT")
	private String SDT;
	@Column(name="NGSINH")
	private Date ngaySinh;
	
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.EAGER)
	private Collection< HoaDon> hoaDon;

	public Integer getMaKH() {
		return maKH;
	}

	public void setMaKH(Integer maKH) {
		this.maKH = maKH;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	

	public Collection<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}

	public KhachHang(Integer maKH, String hoTen, String diaChi, String sDT, Date ngaySinh, 
			Collection<HoaDon> hoaDon) {
		super();
		this.maKH = maKH;
		this.hoTen = hoTen;
		this.diaChi = diaChi;
		SDT = sDT;
		this.ngaySinh = ngaySinh;
		this.hoaDon = hoaDon;
	}

	public KhachHang() {
		super();
	}
	
	
}
