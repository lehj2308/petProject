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
	
	// �α���
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, MemberVO vo, Model model) {
		System.out.println(vo);
		MemberVO user = memberService.getMember(vo);
		System.out.println("user:"+user);
		if (user == null || !user.getmPw().equals(vo.getmPw())) {
			String loginCheck = "�α��� ������ Ȯ���ϼ���!";
			model.addAttribute("loginCheck", loginCheck);
			return "login.jsp";
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		return "redirect:index.jsp";
	}
	
	// ȸ�� ����
	@RequestMapping("/join.do")
	public String join(MemberVO vo, Model model) throws IllegalStateException, IOException {
		if(memberService.getMember(vo)!=null) {
			String idCheck = "�����ϴ� ���̵� �Դϴ�!";
			model.addAttribute("idCheck", idCheck);
			return "join.jsp";
		}
		MultipartFile imgFile=vo.getmImgFile();
		String fileName=vo.getmId()+imgFile.getOriginalFilename();
		System.out.println("�����̸�: "+fileName);
		imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+fileName));
		
		vo.setmImg(fileName);
		memberService.insertMember(vo);
		return "redirect:index.jsp";
	}
	
	// ȸ�� ���� ����
	@RequestMapping("/updateMember.do")
	public String updateMember(HttpServletRequest request, MemberVO vo) throws IllegalStateException, IOException {
		MultipartFile imgFile=vo.getmImgFile();
		String fileName=vo.getmId()+imgFile.getOriginalFilename();
		System.out.println("�����̸�: "+fileName);
		imgFile.transferTo(new File("F:\\KIM_0622\\workspace\\petProject\\project\\src\\main\\webapp\\img\\"+fileName));
		vo.setmImg(fileName);
		memberService.updateMember(vo);
		HttpSession session = request.getSession();
		session.setAttribute("user", vo);
		return "redirect:index.jsp";
	}
	
	// ȸ�� Ż��
	@RequestMapping("/deleteMember.do")
	public String deleteMember(HttpSession session, MemberVO vo) {
		memberService.deleteMember(vo);
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	// �α׾ƿ�
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}
	
}
