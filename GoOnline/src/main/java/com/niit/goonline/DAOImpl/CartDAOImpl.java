package com.niit.goonline.DAOImpl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.DAO.CartDAO;
import com.niit.goonline.model.Cart;

@Repository
@Transactional
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Cart get(int cartId) {
		Session session = sessionFactory.openSession();

		return (Cart) session.get(Cart.class, cartId);
	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = get(cartId);
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}
		update(cart);
		return cart;
	}

	public void update(Cart cart) {
		int cartId = cart.getCartId();

		double grandTotal = 12.00;
		cart.setGrandTotal(grandTotal);

		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cart);

	}

}
