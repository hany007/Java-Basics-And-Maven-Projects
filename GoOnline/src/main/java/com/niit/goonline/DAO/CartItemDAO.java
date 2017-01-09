package com.niit.goonline.DAO;

import com.niit.goonline.model.Cart;
import com.niit.goonline.model.CartItem;

public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItem(Cart cart);

	CartItem getById(String id);

}
