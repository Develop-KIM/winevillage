package com.winevillage.winevillage.member;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberServiceController {

    @Autowired
    MemberService memberService;

    @GetMapping("/join_form.do")
    public String joinForm() {
        return "member/join/join_form";
    }

    @GetMapping("/join_success.do")
    public String joinSuccess() {
        return "member/join/join_success";
    }

    @PostMapping("/join_form.do")
    public String submitJoin(@ModelAttribute("memberDTO") @Valid MemberDTO memberDTO, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors() || !isValidFormData(memberDTO)) {
            redirectAttributes.addFlashAttribute("errorMessage", "필수 입력 항목을 모두 작성해주세요.");
            return "redirect:/join_form.do";
        }

        System.out.println("2321243123" + memberDTO.getBirthday());
        System.out.println(memberDTO.getPassword());
        int insertResult = memberService.insert(memberDTO);
        if (insertResult == 1) {
            return "redirect:/join_success.do";
        } else {
            return "redirect:/join_form.do";
        }
    }

    @PostMapping("/join_success.do")
    public String handleJoinSuccessPost() {
        System.out.println("회원 가입이 완료되었습니다. 환영합니다!");
        return "redirect:/join_success.do";
    }

    private boolean isValidFormData(MemberDTO memberDTO) {
        return memberDTO != null
                && memberDTO.getMemberId() != null && !memberDTO.getMemberId().isEmpty()
                && memberDTO.getBirthday() != null && !memberDTO.getBirthday().isEmpty()
                && memberDTO.getPhoneNumber() != null && !memberDTO.getPhoneNumber().isEmpty()
                && memberDTO.getPassword() != null && !memberDTO.getPassword().isEmpty()
                && memberDTO.getEmail() != null && !memberDTO.getEmail().isEmpty();
    }
}
