package com.ravi.InventoryApp4.dao;

import org.springframework.data.repository.CrudRepository;

import com.ravi.InventoryApp4.model.UncountableItems;

public interface UncountableItemRepo extends CrudRepository<UncountableItems, String> {

}
