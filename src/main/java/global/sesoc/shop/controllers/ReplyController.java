package global.sesoc.shop.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.shop.dao.ReplyRepository;
import global.sesoc.shop.vo.Reply;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyRepository repository;
	
	@ResponseBody
	@RequestMapping(value="/replyWrite", method=RequestMethod.POST)
	public Integer replyWrite(@RequestBody Reply reply , HttpSession session) {
		int result = repository.replyWrite(reply);
		return result;
	}
	
	@RequestMapping(value="selectAll", method=RequestMethod.POST)
	public @ResponseBody List<Reply> replyInsert(@RequestBody Reply reply) { //요청할때 딸려가는게 없으므로 사실 get방식으로 해도 무관
		
		List<Reply> replyList = repository.selectAll(reply);
		
		
		return replyList;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/replyDelete", method=RequestMethod.POST)
	public Integer replyDelete(@RequestBody Reply reply , HttpSession session) {
		int result = repository.replyDelete(reply);
		return result;
	}
	
}
