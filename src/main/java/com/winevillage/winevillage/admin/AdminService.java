package com.winevillage.winevillage.admin;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.winevillage.member.MemberDTO;
import com.winevillage.winevillage.pay.OrderDTO;
import com.winevillage.winevillage.pay.PayDTO;

@Mapper
public interface AdminService {
	
	public int adminTotalCount(ParameterDTO parameterDTO);
	
	public ArrayList<AdminDTO> adminlistPage(ParameterDTO parameterDTO);
	
	public int adminInsert(AdminDTO adminDTO);
	
	public AdminDTO getAdmin(String adminId);
	
	public AdminDTO adminView(AdminDTO adminDTO);
	
	public int adminEdit(AdminDTO adminDTO);
	
	public int adminDelete(AdminDTO adminDTO);
	
	public ArrayList<MemberDTO> recentMemberList(MemberDTO memberDTO);
	
	public ArrayList<OrderDTO> recentOrderUsers(OrderDTO orderDTO);
}
