package com.winevillage.winevillage.admin;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminService {
	
	public int adminTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<AdminDTO> adminlistPage(ParameterDTO parameterDTO);
	
	public int adminInsert(AdminDTO adminDTO);
	
	public AdminDTO getAdmin(String adminId);
	
	public AdminDTO adminView(AdminDTO adminDTO);
	
	public int adminEdit(AdminDTO adminDTO);
	
	public int adminDelete(AdminDTO adminDTO);
//	public int adminDelete1(AdminDTO adminDTO);
	
}
