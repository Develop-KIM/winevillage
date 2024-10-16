package com.winevillage.winevillage.qna;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.notice.NoticeDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import utils.PagingUtil;

@Controller
public class QNAController {
	
	@Autowired
	QNAService dao;
	
	@GetMapping("/member/qna_list.do")
	public String qnaLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO, QNADTO qnaDTO, Authentication authentication) {
		
		boolean loggedIn = true;
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			String currentUsername = auth.getName();
			// 마지막 로그인한 사용자가 anonymousUser인지 확인
			// 로그인한 사용자가 없으면 anonymousUser
			if (currentUsername.equals("anonymousUser")) {
				// 로그인하지 않은 사용자에 대한 처리
				loggedIn = false;
			}
			else {
				UserDetails userDetails = (UserDetails) auth.getPrincipal();
				// 로그인한 사용자의 정보를 활용한 처리
			}
		}
		
		model.addAttribute("loggedIn", loggedIn);
		
		int totalCount = dao.getTotalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 5;
		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
				? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum-1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<QNADTO> lists = dao.listPage(parameterDTO);
		
		if (authentication != null) {
			String memberId = authentication.getName();
			QNADTO memberView = dao.memberView(memberId);
			QNADTO user = new QNADTO();
			
			if (memberView != null) {
				user.setMemberNo(memberView.getMemberNo());
				user.setMemberId(memberView.getMemberId());
				user.setName(memberView.getName());
				user.setPhonenumber(memberView.getPhonenumber());
			}
		}
		
		for (QNADTO list : lists) {
			// 각 질문에 대한 답변을 불러옵니다.
			// qnaAnswerView 메소드가 적절히 수정되었다는 가정 하에
			QNADTO qnaAnswer = dao.qnaAnswerView(list);

			// null 체크
			if (qnaAnswer != null) {
				// 답변에 대한 정보를 원래 리스트 요소에 설정합니다.
				list.setQna_answer_title(qnaAnswer.getQna_answer_title());
				list.setQna_answer_content(qnaAnswer.getQna_answer_content());
				list.setQna_answer_postdate(qnaAnswer.getQna_answer_postdate());
				list.setQna_answer_editdate(qnaAnswer.getQna_answer_editdate());
			}
		}
		
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/qna_list.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "cs/qna_list";
	}
	
	@GetMapping("/qna_write.do")
	public String qnaWriteGet(Model model) {
		boolean loggedIn = true;
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			String currentUsername = auth.getName();
			// 마지막 로그인한 사용자가 anonymousUser인지 확인
			// 로그인한 사용자가 없으면 anonymousUser
			if (currentUsername.equals("anonymousUser")) {
				// 로그인하지 않은 사용자에 대한 처리
				loggedIn = false;
			}
			else {
				UserDetails userDetails = (UserDetails) auth.getPrincipal();
				// 로그인한 사용자의 정보를 활용한 처리
			}
			System.out.println("세션" + currentUsername);
		}
		
		model.addAttribute("loggedIn", loggedIn);
		
		String memberId = auth.getName();
		QNADTO memberView = dao.memberView(memberId);
		QNADTO user = new QNADTO();
		
		if (memberView != null) {
			user.setMemberNo(memberView.getMemberNo());
			user.setMemberId(memberView.getMemberId());
			user.setName(memberView.getName());
			user.setPhonenumber(memberView.getPhonenumber());
		}
		
		model.addAttribute("user", user);
		
		return "cs/qna_write";
	}
	
	@PostMapping("/qna_write.do")
	public String qnaWritePost(QNADTO qnaDTO) {
		try {
			int result = dao.qnaWrite(qnaDTO);
			if(result==1) System.out.println("입력완료");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("1:1문의 등록에 실패하였습니다.");
		}
		return "redirect:/member/qna_list.do";
	}
	
	@GetMapping("/admin_customer_qna.do")
	public String qnaAdminLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO, QNADTO qnaDTO) {
		
		int totalCount = dao.getTotalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 5;
		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
				? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum-1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<QNADTO> lists = dao.listPage(parameterDTO);
		
		for (QNADTO list : lists) {
			// 각 질문에 대한 답변을 불러옵니다.
			// qnaAnswerView 메소드가 적절히 수정되었다는 가정 하에
			QNADTO qnaAnswer = dao.qnaAnswerView(list);

			// null 체크
			if (qnaAnswer != null) {
				// 답변에 대한 정보를 원래 리스트 요소에 설정합니다.
				list.setQna_answer_title(qnaAnswer.getQna_answer_title());
				list.setQna_answer_content(qnaAnswer.getQna_answer_content());
				list.setQna_answer_postdate(qnaAnswer.getQna_answer_postdate());
				list.setQna_answer_editdate(qnaAnswer.getQna_answer_editdate());
			}
		}
		
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_customer_qna.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_customer/admin_customer_qna";
	}
	
	@GetMapping("/admin_customer_qna_answer_write.do")
	public String qnaAnswerWriteGet(Model model, QNADTO qnaDTO) {
		qnaDTO = dao.qnaAnswerView(qnaDTO);
		qnaDTO.setQna_answer_content(qnaDTO.getQna_answer_content()
				.replace("\r\n", "<br/>"));
		model.addAttribute("qnaDTO", qnaDTO);
		return "admin_customer_qna_answer_write";
	}
	
	@PostMapping("/admin_customer_qna_answer_write.do")
	public String qnaAnswerWritePost(QNADTO qnaDTO) {
		try {
			int result = dao.qnaAnswerWrite(qnaDTO);
			if(result==-1) System.out.println("입력완료");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록에 실패하였습니다.");
		}
		return "redirect:admin_customer_qna.do";
	}
	
	@PostMapping("/admin_customer_qna_answer_edit.do")
	public String qnaAnswerEditPost(QNADTO qnaDTO) {
		int result = dao.qnaAnswerEdit(qnaDTO);
		System.out.println("글수정결과:" + result);
		return "redirect:admin_customer_qna.do";
	}
	
	@PostMapping("/admin_customer_qna_answer_delete.do")
	public String qnaAnswerDeletePost(QNADTO qnaDTO) {
		int result = dao.qnaAnswerDelete(qnaDTO);
		if(result==-1) {
			System.out.println("삭제되었습니다.");
		} else {
			System.out.println("삭제실패");
			System.out.println("result? "+result);
		}
		
		return "redirect:admin_customer_qna.do";
	}
	
	@GetMapping("/admin_customer_qna_edit.do")
	public String qnaEditGet(Model model, QNADTO qnaDTO) {
		qnaDTO = dao.qnaView(qnaDTO);
		qnaDTO.setQna_content(qnaDTO.getQna_content()
				.replace("\r\n", "<br/>"));
		model.addAttribute("qnaDTO", qnaDTO);
		return "admin/admin_customer/admin_customer_qna_edit";
	}
	
	@PostMapping("/admin_customer_qna_edit.do")
	public String qnaEditPost(QNADTO qnaDTO) {
		int result = dao.qnaEdit(qnaDTO);
		System.out.println("글수정결과:" + result);
		return "redirect:admin_customer_qna.do";
	}
	
	@PostMapping("qna_delete.do")
	public String qnaDeletePost(QNADTO qnaDTO) {
		int result = dao.qnaDelete(qnaDTO);
		if(result==-1) {
			System.out.println("삭제되었습니다.");
		} else {
			System.out.println("삭제실패");
			System.out.println("result? "+result);
		}
		
		return "redirect:/member/qna_list.do";
	}
	
	@PostMapping("/admin_customer_qna_delete.do")
	public String qnaAdminDeletePost(QNADTO qnaDTO) {
		int result = dao.qnaDelete(qnaDTO);
		if(result==1) {
			System.out.println("삭제되었습니다.");
		} else {
			System.out.println("삭제실패");
			System.out.println("result? "+result);
		}
		
		return "redirect:admin_customer_qna.do";
	}
	
	@PostMapping("/admin_customer_qna_delete2.do")
	public String qnaAdminDelete2Post(@RequestParam("deleteItem") String deleteItem,
			QNADTO qnaDTO) {
		
		List<String> items = Arrays.asList(deleteItem.split(","));

		for(String item : items) {
			QNADTO qnaToDelete = new QNADTO();
	        qnaToDelete.setQna_no(Integer.parseInt(item));
			int result = dao.qnaDelete(qnaToDelete);
			if(result==-1) {
				System.out.println("삭제되었습니다.");
			} else {
				System.out.println("삭제실패");
				System.out.println("result? "+result);
			}
		}
		
		return "redirect:admin_customer_qna.do";
	}
}
