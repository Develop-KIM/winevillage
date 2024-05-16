package com.winevillage.winevillage.store;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IStoreService {
    public int searchCount(int distance, double latTxt, double lngTxt);
    public ArrayList<StoreDTO> storeList(StoreDTO storeDTO);
    public ArrayList<StoreDTO> searchRadius(int distance, double latTxt, double lngTxt, int start, int end);
}
