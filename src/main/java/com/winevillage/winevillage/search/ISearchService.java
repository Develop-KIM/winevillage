package com.winevillage.winevillage.search;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;


@Mapper
public interface ISearchService {
	
	public List<SearchDTO> select(SearchDTO searchDTO);
	public int searchTotalCount(SearchDTO searchDTO);
	public int searchTotalCountKeyword(SearchDTO searchDTO);
}
