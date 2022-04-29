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
@Table(name="HoaDon")
public class HoaDon {
	@Id
	@GeneratedValue
	@Column(name="SOHD")
	private Integer soHD;
	@Column(name="NGAYDH")
	private Date ngayDH;
	@Column(name="TRIGIA")
	private BigDecimal triGia;
	@Column(name="SL")
	private Integer sl;
	@Column(name="STATUS")
	private Integer status;
	@ManyToOne
	@JoinColumn(name="maNV")
	private NhanVien nhanVien;
	
	@ManyToOne
	@JoinColumn(name="maKH")
	private KhachHang khachHang;
	
	@ManyToOne
	@JoinColumn(name="maSP")
	private SanPham sanPham;

	public Integer getSoHD() {
		return soHD;
	}

	public void setSoHD(Integer soHD) {
		this.soHD = soHD;
	}

	public Date getNgayDH() {
		return ngayDH;
	}

	public void setNgayDH(Date ngayDH) {
		this.ngayDH = ngayDH;
	}

	



	public BigDecimal getTriGia() {
		return triGia;
	}

	public void setTriGia(BigDecimal triGia) {
		this.triGia = triGia;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getSl() {
		return sl;
	}

	public void setSl(Integer sl) {
		this.sl = sl;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}



	public HoaDon() {
		super();
	}
	
	
}	
