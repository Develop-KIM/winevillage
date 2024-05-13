package com.winevillage.winevillage.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import utils.PagingUtil;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

    @GetMapping("/join_form.do")
    public String joinForm() {
        return "member/join/join_form";
    }

    @GetMapping("/join_success.do")
    public String joinSuccess(Model model, HttpSession session) {
        // 세션에서 이름 가져오기
        String memberName = (String) session.getAttribute("memberName");

        // 모델에 이름 추가
        model.addAttribute("memberName", memberName);

        // join_success 페이지로 이동
        return "member/join/join_success";
    }
    
    @GetMapping("/checkMemberIdExist")
    public ResponseEntity<String> checkMemberIdExist(@RequestParam("memberId") String memberId) {
        if (memberId == null || memberId.trim().isEmpty()) {
            return ResponseEntity.badRequest().body("아이디를 입력하세요.");
        }
        System.out.println("Received memberId: " + memberId);
        int count = memberService.checkMemberIdExist(memberId);
        if (count > 0) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("이미 등록된 아이디입니다.");
        } else {
            return ResponseEntity.ok("사용 가능한 아이디입니다.");
        }
    }
    
    @GetMapping("/checkPhoneNumberExist")
    public ResponseEntity<String> checkPhoneNumberExist(@RequestParam("phoneNumber") String phoneNumber) {
        if (phoneNumber == null || phoneNumber.trim().isEmpty()) {
            return ResponseEntity.badRequest().body("휴대폰 번호를 입력하세요.");
        }
        System.out.println("Received phoneNumber: " + phoneNumber);
        int count = memberService.checkPhoneNumberExist(phoneNumber);
        if (count > 0) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body("이미 등록된 휴대폰 번호입니다.");
        } else {
            return ResponseEntity.ok("사용 가능한 휴대폰 번호입니다.");
        }
    }
    
	@GetMapping("/withdrawal.do")
	public String withdrawal() {
		return "member/withdrawal";
	}

	
    @GetMapping("/admin_member_lists.do")
	public String memberLists(Model model, HttpServletRequest req,
			ParameterDTO parameterDTO) {
		int totalCount = memberService.memberTotalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 10;
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

		ArrayList<MemberDTO> lists = memberService.memberlistPage(parameterDTO);
		model.addAttribute("lists", lists);

		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_member_lists.do?");
		model.addAttribute("pagingImg", pagingImg);

		return "admin/admin_member/admin_member_lists";
	}
}