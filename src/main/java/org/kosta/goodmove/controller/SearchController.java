package org.kosta.goodmove.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.goodmove.model.service.BoardService;
import org.kosta.goodmove.model.service.CommentService;
import org.kosta.goodmove.model.service.MemberService;
import org.kosta.goodmove.model.vo.CommentVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
	@Resource
	private BoardService boardService;
	@Resource
	private CommentService commentService;
	@Resource
	private MemberService memberService;
	
	
	@RequestMapping("searchMenu.do")
	public ModelAndView searchMenu(String search) {	
		return new ModelAndView("search","search",search);
	}
	
	@RequestMapping("searchByProductName.do")
	@ResponseBody
	public List<CommentVO> testSearch(String id, String keyword){
		System.out.println(id);//ProductName
		System.out.println(keyword);//아저씨
		System.out.println("zzz");
		 List<CommentVO> list = commentService.findCommentByName(keyword);
		 System.out.println(list);
		return list;
	}
	@RequestMapping("getCountBoardMain.do")
	@ResponseBody
	public int getCountBoardMain(){
		return boardService.getCountBoard();
	}
	
	@RequestMapping("getCountCommentMain.do")
	@ResponseBody
	public int getCountCommentMain(){
		return commentService.getTotalContentCount();
	}
	@RequestMapping("getCountMemberMain.do")
	@ResponseBody
	public int getCountMemberMain(){
		return memberService.getMemberCount();
	}
	
/*	@RequestMapping("idCheck.do")
	@ResponseBody
	public MemberVO IdCheck(String id,Model model){
		MemberVO vo = memberService.findMemberById(id);
		System.out.println("여기까지 수행함" +vo);
		return (vo != null)?
				vo :
				new MemberVO("false", "1");
	}*/
	
}
