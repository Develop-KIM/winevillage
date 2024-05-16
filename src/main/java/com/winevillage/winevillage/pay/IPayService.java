package com.winevillage.winevillage.pay;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.winevillage.pay.PayDTO;
import com.winevillage.winevillage.qna.QNADTO;
import com.winevillage.winevillage.pay.ParameterDTO;

@Mapper
public interface IPayService {

	//게시물 개수
	public int totalCount(ParameterDTO parameterDTO);
	//게시물 가져오기
//	public ArrayList<PayDTO> list(ParameterDTO parameterDTO);
	//게시물 검색하기
	public ArrayList<PayDTO> search(ParameterDTO parameterDTO);
	//게시물 내용보기
	public PayDTO view(ParameterDTO parameterDTO);
	
	//결제주문서 작성
	public int write(PayDTO payDTO);
	
	public int writeRest(OrderDTO orderDTO);

	//주문페이지 - 회원정보
//	public ArrayList<PayDTO> getOrderUserInfo(ParameterDTO parameterDTO);
	//주문페이지 - 상품정보
	public ArrayList<OrderDTO> listOrder(OrderDTO orderDTO);
	//관리자 주문 확인 페이지
	public ArrayList<PayDTO> listOrderUsers(ParameterDTO parameterDTO);
	//주문서 업데이트
	public int updateOrderStatus(OrderDTO orderDTO);
	//주문서삭제
	public int deleteOrder(OrderDTO orderDTO);
	//장바구니에서 삭
	public int deleteOrderCart(OrderDTO orderDTO);
	//시큐리티 세션 값 정보 가져오기
	public PayDTO memberView(String userId);
//	public OrderDTO ordermemberView(String userId);
//	public void writeRest(OrderItem item);
	
}
