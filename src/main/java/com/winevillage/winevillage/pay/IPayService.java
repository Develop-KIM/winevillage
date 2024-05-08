package com.winevillage.winevillage.pay;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.winevillage.pay.PayDTO;
import com.winevillage.winevillage.pay.ParameterDTO;

@Mapper
public interface IPayService {


	public ArrayList<PayDTO> getOrderUserInfo(ParameterDTO parameterDTO);
	//게시물 개수
	public int totalCount();
	//게시물 가져오기
//	public ArrayList<PayDTO> list(ParameterDTO parameterDTO);
	//게시물 검색하기
	public ArrayList<PayDTO> search(ParameterDTO parameterDTO);
	//게시물 내용보기
	public PayDTO view(ParameterDTO parameterDTO);
	//게시물 작성
	public int write(PayDTO payDTO);
	public int writeRest(OrderDTO orderDTO);
	
	//order
	public ArrayList<PayDTO> listOrder(ParameterDTO parameterDTO);
}
