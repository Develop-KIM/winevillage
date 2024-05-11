package com.winevillage.winevillage.store;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface IStoreService {
	
	 List<StoreDTO> getStores();
}
