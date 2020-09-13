package com.ravi.InventoryApp4.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ravi.InventoryApp4.dao.ItemRepo;
import com.ravi.InventoryApp4.model.Items;
import com.ravi.InventoryApp4.service.ItemService;

@Controller
public class ItemController 
{
	@Autowired
	ItemRepo repo;
	
	@Autowired
	ItemService itemService;
	
	@RequestMapping("/")
	public String home()
	{
		System.out.println("in home");
		return "home.jsp";
	}
	
	@RequestMapping("/test")
	public String gotoFolder()
	{
		
		return "inventory/test.jsp";
	}
	
	
	
	@RequestMapping(value = "/viewAllItems", method = RequestMethod.GET)
	public String viewAllItems(Map<String, Object> map)
	{
		map.put("itemList", repo.findAll());
		return "viewAllItems.jsp";
	}
	
	@RequestMapping("/deleteItem")
	public String deleteItem(int itemId)
	{
		System.out.println("Deleting id : " + itemId);
		repo.deleteById(itemId);
		return "/viewAllItems";
	}
	
	@RequestMapping("/addItem")
	public String addItem(Items item)
	{
		repo.save(item);
		return "home.jsp";
	}
	
	@RequestMapping("/getItem")
	public ModelAndView getItem(@RequestParam int itemId)
	{
		ModelAndView mv = new ModelAndView("viewItem.jsp");
		Items item = repo.findById(itemId).orElse(new Items());
		
		int tempId = item.getItemId();
		String tempName = item.getItemName();
		
		System.out.println("Item id = " + tempId + " Item name = " + tempName);
		mv.addObject(item);
		return mv;
	}
}
