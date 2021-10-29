package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import model.member.MemberServiceImpl;
import model.member.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;
	
	// 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, MemberVO vo, Model model) {
		System.out.println(vo);
		MemberVO user = memberService.getMember(vo);
		System.out.println("user:"+user);
		if (user == null || !user.getmPw().equals(vo.getmPw())) {
			String loginCheck = "로그인 정보를 확인하세요!";
			model.addAttribute("loginCheck", loginCheck);
			return "login.jsp";
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		return "redirect:index.jsp";
	}
	
	// 회원 가입
	@RequestMapping("/join.do")
	public String join(MemberVO vo, Model model) throws IllegalStateException, IOException {
		if(memberService.getMember(vo)!=null) {
			String idCheck = "존재하는 아이디 입니다!";
			model.addAttribute("idCheck", idCheck);
			return "join.jsp";
		}
		MultipartFile imgFile=vo.getmImgFile();
		String fileName=vo.getmId()+imgFile.getOriginalFilename();
		System.out.println("파일이름: "+fileName);
		imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+fileName));
		
		vo.setmImg(fileName);
		memberService.insertMember(vo);
		return "redirect:index.jsp";
	}
	
	// 회원 정보 수정
	@RequestMapping("/updateMember.do")
	public String updateMember(HttpServletRequest request, MemberVO vo) throws IllegalStateException, IOException {
		MultipartFile imgFile=vo.getmImgFile();
		String fileName=vo.getmId()+imgFile.getOriginalFilename();
		System.out.println("파일이름: "+fileName);
		imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+fileName));
		vo.setmImg(fileName);
		memberService.updateMember(vo);
		HttpSession session = request.getSession();
		session.setAttribute("user", vo);
		return "redirect:index.jsp";
	}
	
	// 회원 탈퇴
	@RequestMapping("/deleteMember.do")
	public String deleteMember(HttpSession session, MemberVO vo) {
		memberService.deleteMember(vo);
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}
	
}
