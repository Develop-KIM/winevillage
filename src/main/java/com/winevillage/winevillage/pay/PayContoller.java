package com.winevillage.winevillage.pay;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
//@CrossOrigin(origins = "*")
public class PayContoller {
	
	@Autowired
	IPayService dao;
	
	@GetMapping("order_write.do")
	public String getOrderUserInfo(ParameterDTO parameterDTO, Model model, PayDTO payDTO) {
		
		ArrayList<PayDTO> lists = dao.getOrderUserInfo(parameterDTO);
		model.addAttribute("lists", lists);
		System.out.println("lists확인" + lists);
       
		ArrayList<PayDTO> orderList = dao.listOrder(parameterDTO);
		model.addAttribute("orderList", orderList);
        System.out.println("orderList확인" + orderList);
        
        int totalPrice = 0;
        for (PayDTO order : orderList) {
            totalPrice += order.getDiscountPrice() * order.getOrderAmount();
        }

        int availablePoints = 0;
        if (!lists.isEmpty()) {
            availablePoints = lists.get(0).getPoints();
        }

        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("availablePoints", availablePoints);
        
        return "order/order_write"; // JSP 페이지 이름 반환
    }
	
	@PostMapping("order_write.do")
	public String submitOrder(PayDTO payDTO, Model model) {
	    System.out.println("확인" + payDTO);
	    
	    int result = dao.write(payDTO);
	    
    	System.out.println("성공");
    	model.addAttribute("message", "성공");
	    	
	    return "main/main";
	}
	
//	@GetMapping("/restBoardList.do")
//	public List<PayDTO> restBoardList(ParameterDTO parameterDTO) {
//		
//		int pageSize = 10;
//		int pageNum = parameterDTO.getPageNum() == null ? 1 :
//			Integer.parseInt(parameterDTO.getPageNum());
//		
//		int start = (pageNum - 1) * pageSize + 1;
//		int end = pageNum * pageSize;
//		
//		parameterDTO.setStart(start);
//		parameterDTO.setEnd(end);
//	    
//		List<PayDTO> boardList = dao.listOrder(parameterDTO);
//		
//		return boardList;
//	}
//	
	
}


