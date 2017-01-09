package com.niit.goonline.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.DAO.CartItemDAO;
import com.niit.goonline.model.Cart;
import com.niit.goonline.model.CartItem;

@Repository
@Transactional
public class CartItemDAOImpl implements CartItemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void addCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();

	}

	public void removeCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();
		session.delete(cartItem);
		session.flush();
	}

	public void removeAllCartItem(Cart cart) {
		List<CartItem> cartaItem = cart.getCartItems();

		for (CartItem item : cartaItem) {
			removeCartItem(item);
		}

	}

	public CartItem getById(String id) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CartItem where id=?");
		query.setString(0, id);
		return (CartItem) query.uniqueResult();
	}
}
