package global.sesoc.shop.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.shop.dao.ChatRepository;
import global.sesoc.shop.vo.MessageRoom;
import global.sesoc.shop.vo.Message;

@Controller
public class ChatController {
	@Autowired
	ChatRepository repository;
	
	
	@RequestMapping(value = "/Chat", method = RequestMethod.GET)
	public String join() {
		return "chat/chat";
	}
	
	@RequestMapping(value="/selectMessage", method=RequestMethod.POST)
	public @ResponseBody List<Message> selectMessage(HttpSession session) {
		String userid = (String)session.getAttribute("loginId");
		List<Message> mlist = repository.selectMessage(userid);
		return mlist;
	}
	
	@RequestMapping(value = "/chatOne", method = RequestMethod.GET)
	public String echo(Model model, String senduserId, String receiveuserid, String msg, String date) {
		model.addAttribute("senduserId", senduserId);
		model.addAttribute("receiveuserid", receiveuserid);
		model.addAttribute("msg", msg);
		model.addAttribute("date", date);
		return "chat/chatOne";
	}
	
	@RequestMapping(value="/selectOffMessage", method=RequestMethod.POST)
	public @ResponseBody Integer selectOffMessage(HttpSession session) {
		String userid = (String)session.getAttribute("loginId");
		int result = repository.selectOffMessage(userid);
		return result;
	}
	
	@RequestMapping(value="/updateOffMessage", method=RequestMethod.POST)
	public @ResponseBody Integer updateOffMessage(HttpSession session) {
		String userid = (String)session.getAttribute("loginId");
		int result = repository.updateOffMessage(userid);
		return result;
	}
	
	@ResponseBody
	   @RequestMapping(value="/deleteMessage", method=RequestMethod.POST)
	   public int deleteMessage(HttpSession session, String msgnum) {
		  String msgnumN[] = msgnum.split("-");
		  int result = 0;
		  for(int i=0; i<msgnumN.length; i++ ) {
			result = repository.deleteMessage(Integer.parseInt(msgnumN[i]));
		  }
	      return result;
	   }
}
