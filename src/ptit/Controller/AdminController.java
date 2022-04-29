package ptit.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Comment;
import ptithcm.entity.Bill;
import ptithcm.entity.Staff;
import ptithcm.entity.Product;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "/quan-ly-do-go", method = RequestMethod.GET)
	public String productControl(ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			List<Product> list = ss.createQuery("from Product").list();
			t.commit();
		} catch (Exception e) {
			t.rollback();
			System.out.println("lỗi lấy ds sp");
		} finally {
			List<Product> dsachSP = ss.createQuery("from Product").list();
			mm.addAttribute("dsDoGo", dsachSP);
			ss.close();
		}
		return "admin/index";

	}

	@RequestMapping(value = "/them-do-go", method = RequestMethod.GET)
	public String productInsert(ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();

		mm.addAttribute("sp", new Product());
		try {
			List<Product> list = ss.createQuery("from Product").list();
			t.commit();
		} catch (Exception e) {
			System.out.println("lỗi lấy ds sp");
			t.rollback();
		} finally {
			List<Product> dsachSP = ss.createQuery("from Product").list();
			mm.addAttribute("dsDoGo", dsachSP);
			ss.close();
		}
		return "admin/product-insert";

	}

	@RequestMapping(value = "/them-do-go", method = RequestMethod.POST)
	public String productInsert(@ModelAttribute("sp") Product sp, ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();

		sp.setProduct_status(false);
		try {
			ss.save(sp);
			t.commit();
			mm.addAttribute("mess", "Thêm mới thành công");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Lỗi lưu sp");
			t.rollback();
			mm.addAttribute("mess", "Thêm mới thất bại");
		} finally {

			@SuppressWarnings("unchecked")
			List<Product> dsachSP = ss.createQuery("from Product").list();
			mm.addAttribute("dsDoGo", dsachSP);
			ss.close();
		}

		return "admin/product-insert";
	}

	@RequestMapping(value = "edit-{product_id}", params = "linkEdit")
	public String insertProduct(@PathVariable("product_id") Integer maSP, ModelMap mm) {
		// System.out.println(maSP);
		Session ss = factory.openSession();
		Product sp = (Product) ss.get(Product.class, maSP);
		mm.addAttribute("sp", sp);
		return "admin/edit-form";
	}

	@RequestMapping(value = "edit-{product_id}", params = "linkEdit", method = RequestMethod.POST)
	public String insertSP(@ModelAttribute("sp") Product product, ModelMap mm) {
		Session ss = factory.openSession();

		Transaction t = ss.beginTransaction();
		try {

			ss.update(product);
			t.commit();
			mm.addAttribute("mess", "Update thành công");
		} catch (Exception e) {
			mm.addAttribute("mess", "Update thất bại");
			t.rollback();
		} finally {

			ss.close();
		}
		return "admin/edit-form";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("quan-ly-don-hang")
	public String orderManage(ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Bill> listHD = new ArrayList<Bill>();
		try {

			listHD = ss.createQuery("from Bill").list();
			mm.addAttribute("hd", listHD);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			System.out.println("lỗi lấy ds hd");
		} finally {
			ss.close();
		}
		return "admin/hdManage";
	}

	@RequestMapping(value = "quan-ly-don-hang-{bill_id}-dang-giao-hang", method = RequestMethod.GET)
	public String dangGiaoHang(@PathVariable("bill_id") Integer soHD, ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Bill> listHD = new ArrayList<Bill>();
		try {
			// set lai trang thai don hang.
			Bill hdc = (Bill) ss.get(Bill.class, soHD);
			hdc.setBill_status(0);
			ss.update(hdc);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng -'Đang giao hàng' thành công");
			t.commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			t.rollback();
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		} finally {
			// get list hd
			listHD = ss.createQuery("from Bill").list();
			mm.addAttribute("hd", listHD);
			ss.close();
		}
		return "redirect:/admin/order-manage.htm";

	}

	@RequestMapping(value = "quan-ly-don-hang-{bill_id}-da-huy", method = RequestMethod.GET)
	public String huyHD(@PathVariable("bill_id") Integer soHD, ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Bill> listHD = new ArrayList<Bill>();
		try {
			// set lai trang thai don hang.
			Bill hdc = (Bill) ss.get(Bill.class, soHD);
			hdc.setBill_status(1);
			ss.update(hdc);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng - 'Đã hủy' thành công");
			t.commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			t.rollback();
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		} finally {
			// get list hd
			listHD = ss.createQuery("from Bill").list();
			mm.addAttribute("hd", listHD);
			ss.close();
		}
		return "redirect:/admin/order-manage.htm";

	}

	@RequestMapping(value = "quan-ly-don-hang-{bill_id}-da-giao-hang", method = RequestMethod.GET)
	public String daGiaoHang(@PathVariable("bill_id") Integer soHD, ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Bill> listHD = new ArrayList<Bill>();
		try {
			// set lai trang thai don hang.
			Bill hdc = (Bill) ss.get(Bill.class, soHD);
			hdc.setBill_status(-1);
			ss.update(hdc);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng - 'Đã giao hàng' thành công");
			t.commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			t.rollback();
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		} finally {
			// get list hd
			listHD = ss.createQuery("from Bill").list();
			mm.addAttribute("hd", listHD);
			ss.close();
		}
		return "admin/hdManage";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "quan-ly-binh-luan", method = RequestMethod.GET)
	public String cmtManage(ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Comment> cmtList = new ArrayList<Comment>();
		try {
			// get ds cmt
			cmtList = ss.createQuery("from Comment").list();
			mm.addAttribute("cmtList", cmtList);

		} catch (Exception e) {
			System.out.println("Tải ds cmt thất bại");
			t.rollback();
		} finally {
			ss.close();
		}
		return "admin/cmtManage";
	}

	@RequestMapping(value = "delete-cmt-{cmt_id}.htm", params = "linkDel")
	public String delCMT(@PathVariable("cmt_id") Integer idCmt, ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		Comment cmt = (Comment) ss.get(Comment.class, idCmt);
		// xoa cmt
		try {
			ss.delete(cmt);
			t.commit();
			mm.addAttribute("messCMT", "Xoá CMT thành công");
		} catch (Exception e) {
			t.rollback();
			mm.addAttribute("messCMT", "Xoá CMT thất bại");
			// TODO: handle exception
		} finally {
			mm.addAttribute("cmtList", listCMT());
			ss.close();

		}
		return "admin/cmtManage";
	}

	@SuppressWarnings("unchecked")
	public List<Comment> getCMT(String maSP) {
		ModelMap mm = new ModelMap();
		Session ss = factory.openSession();
		List<Comment> listCMT = new ArrayList<Comment>();
		try {
			listCMT = ss.createQuery("from BinhLuan  where sanPham.maSP=:maSP").setParameter("maSP", maSP).list();
			mm.addAttribute("cmt", listCMT);
			ss.beginTransaction().commit();
		} catch (Exception e) {
			System.out.println("Lỗi");
			ss.beginTransaction().rollback();
		} finally {
			ss.clear();
			ss.close();
		}

		return listCMT;
	}

	public List<Comment> listCMT() {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		List<Comment> list = new ArrayList<Comment>();
		try {
			list = ss.createQuery("from Comment").list();
			t.commit();
			System.out.println("Lấy ds cmt thành công");
		} catch (Exception e) {
			t.rollback();
			System.out.println("Lấy ds cmt không thành công");
			// TODO: handle exception
		} finally {
			ss.close();
		}
		return list;
	}
}
