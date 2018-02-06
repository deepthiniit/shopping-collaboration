package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;


@Controller
public class CartController{
	@Autowired
	Cart cart;
	
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("/cartList")
	public String caList(Model m){
		List<Cart> cartList=cartDao.list();
		m.addAttribute("Listofcart",cartList);
		return"cartList";
	}

	
	@RequestMapping(value="/cartItems", method = RequestMethod.POST)
	public String cartm()
	{
		cartDao.insertCart(cart);
		return "index";
	}
	/*@RequestMapping("/updatecart-{id}")
	private String editcart(@PathVariable("id") int id ,Model m) {
		cart=cartDao.saveOrUpdate(id);
		m.addAttribute("obcartjsp",cart);
		return "Cart";
	}

	@RequestMapping("/deletecart-{id}")
	private String deletecart(@PathVariable("id") int id,Model m) {
		cart=cartDao.delete(id);
		m.addAttribute("obcartjsp",cart);
		categoryDao.removecategory(category);
		return "Cart";
	}*/
	
}