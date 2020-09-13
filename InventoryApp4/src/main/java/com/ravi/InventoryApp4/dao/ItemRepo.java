package com.ravi.InventoryApp4.dao;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ravi.InventoryApp4.model.Items;

public interface ItemRepo extends CrudRepository<Items, Integer> 
{
	
}
