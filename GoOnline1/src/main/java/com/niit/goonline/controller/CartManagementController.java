package com.niit.goonline.controller;

import java.io.IOException;
import java.util.List;
import org.springframework.security.core.userdetails.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.goonline.DAO.CartDAO;
import com.niit.goonline.DAO.CartItemDAO;
import com.niit.goonline.DAO.ProductDAO;
import com.niit.goonline.DAO.UserDetailsDAO;
import com.niit.goonline.model.Cart;
import com.niit.goonline.model.CartItem;
import com.niit.goonline.model.Product;

import com.niit.goonline.model.UserDetails;

@Controller
@RequestMapping("/usercart/cart")
public class CartManagementController {

	@Autowired
	private CartDAO cartDAO;

	@Autowired
	private CartItemDAO cartItemDAO;

	@Autowired
	private UserDetailsDAO userDetailsDao;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "/refreshCart/{cartId}")
	String getCartById(@PathVariable(value = "cartId") int cartId) {
		return "redirect:/user/cart/" + cartId;
	}

	// addItem method is used to add a item in user cart.

	@RequestMapping(value = "/addItem/{id}", method = RequestMethod.GET)
	public String addItem(@PathVariable(value = "id") String id, Model model) {

		User activeUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		UserDetails userDetails = userDetailsDao.getUserByUsername(activeUser.getUsername());
		Cart cart = userDetails.getCart();

		Product product = productDAO.get(id);
		List<CartItem> cartItems = cart.getCartItems();

		double grandTotal = 0.0;
		for (int i = 0; i < cartItems.size(); i++) {

			if (product.getId() == cartItems.get(i).getProduct().getId()) {
				CartItem cartItem = cartItems.get(i);

				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
				cartItemDAO.addCartItem(cartItem);

				for (int j = 0; j < cartItems.size(); j++) {
					grandTotal = grandTotal + cartItem.getTotalPrice();
				}
				cart.setGrandTotal(grandTotal);

				try {
					cartDAO.validate(cart.getCartId());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				model.addAttribute("cartId", cart.getCartId());
				model.addAttribute("successMsg", product.getName() + " added to cart");
				model.addAttribute("cartList", cartItemDAO.getAllCartItems(cart.getCartId()));
				return "cart";
			}
		}

		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
		cartItem.setCart(cart);
		cartItemDAO.addCartItem(cartItem);

		for (int j = 0; j < cartItems.size(); j++) {
			grandTotal = grandTotal + cartItem.getTotalPrice();
		}
		cart.setGrandTotal(grandTotal);
		cartDAO.update(cart);

		model.addAttribute("successMsg", product.getName() + " product added to cart");
		model.addAttribute("cartId", cart.getCartId());
		model.addAttribute("cartList", cartItemDAO.getAllCartItems(cart.getCartId()));
		return "cart";
	}

	/* removeItem method is used to remove a item from user cart. */

	@RequestMapping(value = "/removeItem/{id}/{cartId}", method = RequestMethod.GET)
	public String removeItem(@PathVariable(value = "id") String id, @PathVariable(value = "cartId") int cartId,
			Model model) {
		CartItem cartItem = cartItemDAO.getCartItemByProductId(id, cartId);
		if (cartItem != null) {
			cartItemDAO.removeCartItem(cartItem);
		} else {
			System.out.println("object is null");
		}
		return "redirect:/user/cart/" + cartId;
	}

	@RequestMapping(value = "/addQty/{id}/{cartId}", method = RequestMethod.GET)
	public String addQuantity(@PathVariable(value = "id") String id, @PathVariable(value = "cartId") int cartId,
			Model model) {
		CartItem cartItem = cartItemDAO.getCartItemByProductId(id, cartId);

		Product product = productDAO.get(id);
		cartItem.setQuantity(cartItem.getQuantity() + 1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
		cartItemDAO.addCartItem(cartItem);
		return "redirect:/user/cart/" + cartId;
	}

	@RequestMapping(value = "/reduceQty/{id}/{cartId}", method = RequestMethod.GET)
	public String reduceQuantity(@PathVariable(value = "id") String id, @PathVariable(value = "cartId") int cartId,
			Model model) {
		CartItem cartItem = cartItemDAO.getCartItemByProductId(id, cartId);

		Product product = productDAO.get(id);
		if (cartItem.getQuantity() > 0) {
			cartItem.setQuantity(cartItem.getQuantity() - 1);
			cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
			cartItemDAO.addCartItem(cartItem);
		}
		return "redirect:/user/cart/" + cartId;
	}

	/*
	 * @RequestMapping(value = "/update/{cartId}", method = RequestMethod.GET)
	 * public String updateCart(@PathVariable(value = "id") String
	 * id, @PathVariable(value = "cartId") int cartId, Model model) {
	 * 
	 * CartItem cartItem = null;
	 * 
	 * double grandTotal = 0.0; List<CartItem>
	 * cartItems=cartItemDAO.getAllCartItems(cartId); for (int j = 0; j <
	 * cartItems.size(); j++) { grandTotal += cartItem.getTotalPrice(); } Cart
	 * cart=cartDAO.getCartById(cartId); cart.setGrandTotal(grandTotal);
	 * cartDAO.update(cart); return "redirect:/user/cart/" + cartId; }
	 */

	/* clearCartItems method is used to remove all items from user cart. */

	@RequestMapping(value = "/clearCartItems/{cartId}", method = RequestMethod.GET)
	public String clearCartItems(@PathVariable(value = "cartId") int cartId, Model model) {
		Cart cart = cartDAO.getCartById(cartId);
		cartItemDAO.removeAllCartItems(cart);
		return "redirect:/user/cart/" + cartId;
	}

}