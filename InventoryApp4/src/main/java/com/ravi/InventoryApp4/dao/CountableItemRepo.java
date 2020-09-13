package com.ravi.InventoryApp4.dao;

import org.springframework.data.repository.CrudRepository;

import com.ravi.InventoryApp4.model.CountableItems;

public interface CountableItemRepo extends CrudRepository<CountableItems, String> {

}
