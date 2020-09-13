package com.ravi.InventoryApp4.dao;

import org.springframework.data.repository.CrudRepository;

import com.ravi.InventoryApp4.model.CountableLowStock;

public interface CountableLowstockRepo extends CrudRepository<CountableLowStock, String> {

}
