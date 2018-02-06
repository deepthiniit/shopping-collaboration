package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.OrderDao;
import com.niit.model.Orders;

@Controller
public class OrdersController {
	
	@Autowired
	OrderDao orderDao;
	@Autowired
	Orders orders;
	//CRUD Operation
		@RequestMapping("/ordersList")
		public String oList(Model m)
		{
			List<Orders> ol=orderDao.retrieve();
			m.addAttribute("Listoford",ol);
			return"Orders";
		}
	@ModelAttribute("oborderjsp")
	public Orders neword()
	{
		System.out.println("creating orders object");
		return new Orders();
	}
	@RequestMapping(value="/addingorders",method=RequestMethod.POST)
	public String addingcat(@ModelAttribute("obordersjsp") Orders obordersjsp)
	{
		orderDao.insertOrder(obordersjsp);
		return "redirect:/ordersList";
	}

	@RequestMapping("/ordersavailibility")
	public String o()
	{
		
		return "redirect:/ordersList";
	}

}
