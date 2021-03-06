package com.ravi.InventoryApp4.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ravi.InventoryApp4.dao.CountableLowstockRepo;

@Controller
public class CountableLowStockController {
	
	@Autowired
	CountableLowstockRepo clowrepo;
	
	@RequestMapping("/viewCountableLowStock")
	public String viewCountableLowStock(Map<String, Object> map)
	{
		map.put("lowStockList", clowrepo.findAll());
		return "viewCountableLowStock.jsp";
	}

}
