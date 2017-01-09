package com.niit.goonline.DAO;

import java.io.IOException;

import com.niit.goonline.model.Cart;

public interface CartDAO {
	Cart get(int cartId);

	Cart validate(int cartId) throws IOException;

	void update(Cart cart);

}
