package ptithcm.entity;

import java.math.BigDecimal;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;


@Entity
@Table(name="SanPham")
public class SanPham {
	@Id
	@Column(name="MASP")
	private String maSP;
	@Column(name="TENSP")
	private String tenSP;
	@Column(name="HANGSX")
	private String hangSX;
	
	@Column(name="GIA")
	// @NumberFormat(pattern = "##.###.###")
	private BigDecimal  gia;
	@Column(name="PHOTO")
	private String photo;
	@Column(name="RAM")
	private String ram;
	@Column(name="CHIP")
	private String chip;
	@Column(name="OCUNG")
	private String oCung;
	@Column(name="STATUS")	
	private String status;
	@Column(name="STATUS_DEL")
	private Boolean status_del;
	@OneToMany(mappedBy = "sanPham", fetch= FetchType.EAGER)
	private Collection<BinhLuan> binhLuan;
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.EAGER)
	private Collection<HoaDon> hoaDon;

	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public String getHangSX() {
		return hangSX;
	}

	public void setHangSX(String hangSX) {
		this.hangSX = hangSX;
	}
	
	

	public BigDecimal getGia() {
		return gia;
	}

	public void setGia(BigDecimal gia) {
		this.gia = gia;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getChip() {
		return chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
	}

	public String getoCung() {
		return oCung;
	}

	public void setoCung(String oCung) {
		this.oCung = oCung;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Collection<BinhLuan> getBinhLuan() {
		return binhLuan;
	}

	public void setBinhLuan(Collection<BinhLuan> binhLuan) {
		this.binhLuan = binhLuan;
	}

	public Collection<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}
	
	

	public Boolean getStatus_del() {
		return status_del;
	}

	public void setStatus_del(Boolean status_del) {
		this.status_del = status_del;
	}

	public SanPham() {
		super();
	}
	
	
}
