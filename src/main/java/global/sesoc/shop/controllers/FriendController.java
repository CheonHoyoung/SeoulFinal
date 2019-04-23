package global.sesoc.shop.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.shop.dao.FriendRepository;
import global.sesoc.shop.dao.MemberRepository;
import global.sesoc.shop.util.PageNavigator;
import global.sesoc.shop.vo.MessageRoom;
import global.sesoc.shop.vo.Friend;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.RequestFriend;

@Controller
public class FriendController {
	@Autowired
	FriendRepository repository;

	@Autowired
	MemberRepository repositoryM;

	@RequestMapping(value = "/Friends", method = RequestMethod.GET)
	public String friendList(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchItem", defaultValue = "userid") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord) {
		int totalRecordCount = repository.getBoardCount(searchItem, searchWord);
		if(searchWord.equals("") || totalRecordCount == 0) {
	         totalRecordCount = 1;
	      }
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		List<Member> Flist = repository.selectMember(searchItem, searchWord, navi.getStartRecord(),
				navi.getCountPerPage());
		

		model.addAttribute("Flist", Flist);
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("currentPage", currentPage);
		return "Friends";
	}

	@ResponseBody
	@RequestMapping(value = "/friendRequest", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String friendInsert(HttpSession session, String receiveUserId) {
		String userid = (String) session.getAttribute("loginId");
		Friend ff = new Friend();
		ff.setUserid(userid);
		ff.setFriend_id(receiveUserId);
		RequestFriend rf = new RequestFriend(userid, receiveUserId);
		List<RequestFriend> flist = repository.selectRequestFriend(rf);
		List<Friend> f = repository.selectWFriend(ff);
		String result = null;
		if(flist.size()!=0) {
			result = "이미 친구요청을했습니다.";
			return result;
		}
		if(userid.equals(receiveUserId)) {
			result = "자기자신을 친구추가할 수 없습니다.";
			return result;
		}
		if(f.size()==0) {
			// session가져와서 자기아이디 가져오고 insert
			System.out.println("왜들어와");
			repository.requestFriendInsert(rf);
			result = "성공";
		}else {
			result = "이미 친구로 등록되어있습니다.";
			
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/friendAccept", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String friendAccept(@RequestBody Map<String, String> map, HttpSession session ) {
		String sendUserId = map.get("sendUserId");
	    String receiveUserId = map.get("receiveUserId");
	    System.out.println(sendUserId);
	    System.out.println(receiveUserId);
		// 멤버 정보를 불러와서 객체에 추가
		Member m = new Member();
		m.setUserid(sendUserId);
		Member friend = repositoryM.loginMember(m);
		
		m.setUserid(receiveUserId);
		Member friend2 = repositoryM.loginMember(m);
		
		Friend rf = new Friend(receiveUserId, friend.getUserid(), friend.getUsername(), friend.getEmail(), friend.getPhone(), null);
		Friend af = new Friend(sendUserId, friend2.getUserid(), friend2.getUsername(), friend2.getEmail(), friend2.getPhone(), null);
		repository.friendInsert(rf);
		repository.friendInsert(af);
		
		RequestFriend rrf = new RequestFriend();
		rrf.setSenduserid(sendUserId);
		rrf.setReceiveuserid(receiveUserId);
		repository.deleteRequestFriend(rrf);
		
		return "성공";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/friendRefuse", method = RequestMethod.POST)
	public String friendRefuse(HttpSession session, @RequestBody Map<String, String> map) {
		String sendUserId = map.get("sendUserId");
	    String receiveUserId = map.get("receiveUserId");
	    RequestFriend rrf = new RequestFriend();
		rrf.setSenduserid(sendUserId);
		rrf.setReceiveuserid(receiveUserId);
		repository.deleteRequestFriend(rrf);
		return "";
	}

	@ResponseBody
	@RequestMapping(value = "/selectRequestFriend", method = RequestMethod.POST)
	public List<RequestFriend> selectRequestFriend(HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		List<RequestFriend> flist = new ArrayList<>();
		if(userid!=null) {
		RequestFriend rf = new RequestFriend();
		rf.setReceiveuserid(userid);
		flist = repository.selectRequestFriend(rf);
		}
		return flist;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteFriend", method = RequestMethod.POST)
	public int deleteMessage(HttpSession session, String friend_id) {
		System.out.println(friend_id);
		int result = 0;
		result = repository.deleteFriend(friend_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/selectFriend", method = RequestMethod.POST)
	public List<Friend> selectFriend(HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		List<Friend> flist = repository.selectFriend(userid);
		List<Member> mlist = repository.selectAccessUser();
		for(Member a: mlist) {
			System.out.println(a.toString());
			}
		for(Friend f: flist) {
			for(Member a: mlist) {
				if(f.getFriend_id().equals(a.getUserid())) {
					f.setFriend_access("0");
				}
			}
			System.out.println(f.toString());
		}
		return flist;
	}
}
