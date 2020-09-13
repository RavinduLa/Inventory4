package com.ravi.InventoryApp4.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ravi.InventoryApp4.dao.ItemRepo;
import com.ravi.InventoryApp4.model.Items;

@Service
public class ItemService {
	@Autowired
	ItemRepo repo;
	
	/*public ArrayList<Items> findAll()
	{
		ArrayList<Items> itemList;
		itemList = repo.findAllItems();
		return itemList; 
	}*/
}
