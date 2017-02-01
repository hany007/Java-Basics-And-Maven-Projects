package com.niit.goonline.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public void removeAllCartItems(Cart cart) {
		List<CartItem> cartItems = cart.getCartItems();
		for (CartItem item : cartItems) {
			removeCartItem(item);
		}
	}

	/*
	 * public CartItem getCartItemByProductId (String id,int cartId) { Session
	 * session = sessionFactory.openSession(); Query query =
	 * session.createQuery("from CartItem where id = ?"); query.setString(0,
	 * id); session.flush(); return (CartItem) query.uniqueResult();
	 * 
	 * String hql = "from CartItem where id='" + id + "' and cartId='"
	 * +cartId+"'"; Session session = sessionFactory.openSession();
	 * System.out.println("kkk"); Query query = session.createQuery(hql);
	 * System.out.println("lll");
	 * 
	 * @SuppressWarnings("unchecked") List<CartItem> cartItems =
	 * (List<CartItem>) query.list(); for (CartItem item : cartItems) {
	 * System.out.println("item value"+item.getCartProductId()); //return item;
	 * }
	 * 
	 * //cartItems.get(0); if (cartItems != null && !cartItems.isEmpty()) {
	 * System.out.println(cartItems.get(0).getCartProductId()); return
	 * cartItems.get(0); } return null; }
	 */

	public CartItem getCartItemByProductId(String id, int cartId) {
		

		List<CartItem> cartItems = getAllCartItems(cartId);
		if (cartItems != null && !cartItems.isEmpty()) {
			for (CartItem item : cartItems) {
				if (item.getProduct().getId().equals(id)){
					return item;
				}
			}
		}

		return null;
	}

	public List<CartItem> getAllCartItems(int cartId) {

		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CartItem where CARTID = '" + cartId + "' ORDER BY ID ASC");
		List<CartItem> cartItems = query.list();
		return cartItems;
	}

}
