package com.ravi.InventoryApp4.dao;

import org.springframework.data.repository.CrudRepository;

import com.ravi.InventoryApp4.model.UncountableLowStock;

public interface UncountableLowStockRepo extends CrudRepository<UncountableLowStock, String> {

}
