package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.history.HistoryServiceImpl;
import model.history.HistoryVO;
import model.member.MemberVO;

@Controller
public class HistoryController {

	@Autowired
	private HistoryServiceImpl historyService;

	// 장바구니 담기
	@RequestMapping("/basketInsert.do")
	public String basketInsert(HttpSession session, HistoryVO vo, Model model) {

		List<HistoryVO> list = (List<HistoryVO>) session.getAttribute("basketList");
		
		list.add(vo);

		int basketCnt = list.size();

		session.setAttribute("basketList", list);
		session.setAttribute("basketCnt", basketCnt);

		return "getProduct.do";
	}

	// 장바구니 수정
	@RequestMapping("/basketUpdate.do")
	public String basketUpdate(HttpSession session, HistoryVO vo, @RequestParam int index) {
		List<HistoryVO> list = (List<HistoryVO>) session.getAttribute("basketList");
		list.get(index).sethAmount(vo.gethAmount());

		session.setAttribute("basketList", list);

		return "redirect:basket.jsp";
	}

	// 장바구니 삭제
	@RequestMapping("/basketDelete.do")
	public String basketDelete(HttpSession session, @RequestParam int index) {

		List<HistoryVO> list = (List<HistoryVO>) session.getAttribute("basketList");
		list.remove(index);

		int basketCnt = list.size();

		session.setAttribute("basketList", list);
		session.setAttribute("basketCnt", basketCnt);

		return "redirect:basket.jsp";
	}

	// 결재
	@RequestMapping("/pay.do")
	public String historyInsert(HttpSession session, HistoryVO vo) {

		List<HistoryVO> list = (List<HistoryVO>) session.getAttribute("basketList");
		System.out.println("VO:" + vo);
		for (HistoryVO v : list) {
			System.out.println("v:" + v);
			v.setmId(vo.getmId());
			v.sethName(vo.gethName());
			v.sethAddr1(vo.gethAddr1());
			v.sethAddr2(vo.gethAddr2());
			v.sethAddr3(vo.gethAddr3());
			v.sethPh(vo.gethPh());
			System.out.println("V:" + v);
			historyService.insertHistory(v);
		}
		list.clear();
		int basketCnt = list.size();

		session.setAttribute("basketList", list);
		session.setAttribute("basketCnt", basketCnt);

		return "redirect:getMyHistoryList.do";
	}

	// 결재 내역 삭제
	@RequestMapping("/historyDelete.do")
	public String historyDelete(HistoryVO vo) {

		historyService.deleteHistory(vo);

		return "redirect:getMyHistoryList.do";
	}

	// 나의 결제 내역
	@RequestMapping("/getMyHistoryList.do")
	public String getMyHistoryList(HttpSession session, HistoryVO vo, Model model) {
		
		MemberVO user=(MemberVO)session.getAttribute("user");
		vo.setmId(user.getmId());
		List<HistoryVO> historyList = historyService.getMyHistoryList(vo);

		model.addAttribute("historyList", historyList);
		return "history.jsp";
	}
}
