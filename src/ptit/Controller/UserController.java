package ptit.Controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Comment;
import ptithcm.entity.Bill;
import ptithcm.entity.Customer;
import ptithcm.entity.Product;
import ptithcm.entity.Staff;

@Transactional
@Controller
@RequestMapping("/home/")
public class UserController {
	@Autowired
	SessionFactory factory;

	Bill bill = new Bill();
	int sl;
	String maSP;

	@RequestMapping(value = "/index.htm", method = RequestMethod.GET)
	public String homeDirect(ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			@SuppressWarnings({ "unused", "unchecked" })
			List<Product> list = ss.createQuery("from Product P where P.product_status=:a").setParameter("a", false)
					.list();
			System.out.println(list.size());
			mm.addAttribute("dsDoGo", list);
			t.commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("lỗi lấy ds sp");
			e.printStackTrace();
		} finally {

			ss.close();
		}

		return "web/index";

	}

	@RequestMapping("all-Product")
	public String showProduct() {
		return "web/allProduct";
	}

	@RequestMapping(value = "/detail-item-{product_id}", method = RequestMethod.GET)
	public String detail(@PathVariable("product_id") Integer maSP, ModelMap mm) {
		Session ss = factory.openSession();
		// get ds sp
		Product s = (Product) ss.get(Product.class, maSP);
		mm.addAttribute("sp", s);
		// new cmt mới
		mm.addAttribute("newCMT", new Comment());
		// get ds cmt
		ss.close();
		mm.addAttribute("cmt", getCMT(maSP));
		System.out.println(maSP);
		return "web/showItems";
	}

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "/detail-item-{product_id}-cmt", method = RequestMethod.POST)
	public String detailItem(@ModelAttribute("newCMT") Comment newCMT, @PathVariable("product_id") Integer maSP,
			ModelMap mm) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		Product sp = (Product) ss.get(Product.class, maSP);
		try {
			newCMT.setProduct_id_cmt(sp);
			newCMT.setCmt_time(new Date());

			ss.save(newCMT);
			mm.clear();
			mm.addAttribute("newCMT", new Comment());
			t.commit();
			mm.addAttribute("cmtSP", "CMT thành công");

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			mm.addAttribute("cmtSP", "CMT thất bại, thử lại!");
			t.rollback();
		} finally {
			mm.addAttribute("sp", sp);
			ss.close();
		}
		// get cmt
		mm.addAttribute("cmt", getCMT(maSP));

		return "web/showItems";
	}

	@RequestMapping(value = "order-{product_id}", method = RequestMethod.GET)
	public String orderSP(ModelMap mm, @PathVariable("product_id") Integer maSP) {

		Session ss = factory.openSession();
		Product sp = (Product) ss.get(Product.class, maSP);
		mm.addAttribute("sp", sp);
		bill.setProduct_id_bill(sp);
		ss.close();
		return "web/hdFormSP";

	}

	@RequestMapping(value = "order-{product_id}-get-info-khach-hang", method = RequestMethod.GET)
	public String order(ModelMap mm, @PathVariable("product_id") Integer maSP, HttpServletRequest req) {
		Session ss = factory.openSession();
		Product s = (Product) ss.get(Product.class, maSP);

		// new attribute kh
		mm.addAttribute("kh", new Customer());

		sl = Integer.parseInt(req.getParameter("sl"));
		bill.setBill_date(new Date());
		bill.setQuantity(sl);
		bill.setProduct_id_bill(s);
		bill.setBill_status(0);
		BigDecimal amount = new BigDecimal(sl);

		bill.setTotal(sl * s.getProduct_price());

		System.out.println("product_id: " + bill.getProduct_id_bill().getProduct_id());
		System.out.println(bill.getTotal());
		mm.addAttribute("hd", bill);
		ss.close();
		return "web/hdFormKH";
	}

	@RequestMapping(value = "order-{product_id}-get-info-khach-hang", method = RequestMethod.POST)
	public String orderHD(@ModelAttribute("kh") Customer kh, ModelMap mm, @PathVariable("product_id") Integer maSP, BindingResult errors) {

		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
				
			// add kh vao csdl
			try {				
				bill.setCustomer_id_bill(kh);
				ss.save(kh);
				t.commit();
				mm.addAttribute("mess", "Thêm KH thành công");
				// add thuoc tinh cho hd
				ss.save(bill);
				mm.addAttribute("mess", "Đặt hàng thành công, chúng tôi sẽ liên hệ bạn sớm nhất có thể");
			} catch (Exception e) {
				t.rollback();
				mm.addAttribute("mess", "Đặt hàng không thành công, kiểm tra lại");
				System.out.println(e.getMessage());
			} finally {
				mm.addAttribute("hd", bill);
				ss.close();
			}
		
		return "web/hdFormKH";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "web/login2";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login2(@RequestParam("user") String user, @RequestParam("pass") String pass, ModelMap mm) {
		Session ss = factory.openSession();
		String hql = "SELECT staff_id FROM Staff ";
		Query q = ss.createQuery(hql);

		List<Staff> listUser = q.list();
		for (int i = 0; i < listUser.size(); i++) {
			if (user.equals(listUser.get(i)) && pass.equals(listUser.get(i))) {
				System.out.println("123");
				return "quan-ly-do-go";
			} else {
				mm.addAttribute("mess", "sai thông tin đăng nhập");
				return "web/login2";
			}

		}
		return "";

	}

	@SuppressWarnings("unchecked")
	public List<Comment> getCMT(Integer maSP) {
		ModelMap mm = new ModelMap();
		Session ss = factory.openSession();
		List<Comment> listCMT = new ArrayList<Comment>();
		try {
			listCMT = ss.createQuery("from Comment  where product_id_cmt.product_id=:product_id")
					.setParameter("product_id", maSP).list();
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

}
