package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository("cartDao")
public interface CartDao {
public void insertCart(Cart cart);
	/*public Cart saveOrUpdate(int id);
	public Cart delete(int id);*/
	public List<Cart> list();
}

