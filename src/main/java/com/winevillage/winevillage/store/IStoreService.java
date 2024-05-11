package com.winevillage.winevillage.store;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.winevillage.pay.ParameterDTO;
import com.winevillage.winevillage.pay.PayDTO;


@Mapper
public interface IStoreService {
	
	public ArrayList<StoreDTO> getStores(StoreDTO storeDTO);
}
