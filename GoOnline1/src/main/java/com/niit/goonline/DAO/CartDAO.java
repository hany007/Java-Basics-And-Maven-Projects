package com.niit.goonline.DAO;

import java.io.IOException;

import com.niit.goonline.model.Cart;

public interface CartDAO {

    Cart getCartById (int cartId);
    
   Cart validate(int cartId) throws IOException;  
    
    public void update(Cart cart);
}
