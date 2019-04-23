package global.sesoc.shop.controllers;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.apache.cxf.helpers.IOUtils;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.shop.dao.ChatRepository;
import global.sesoc.shop.dao.MemberRepository;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MemberRepository repository;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		return "Login";
	}

	@RequestMapping(value = "/Join", method = RequestMethod.GET)
	public String Join() {
		return "Join";
	}

	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public String MyPage(Model model, HttpSession session, String msg) {
		model.addAttribute("msg", msg);
		return "MyPage";
	}

	@ResponseBody
	@RequestMapping(value = "/selectRecord", method = RequestMethod.POST)
	public List<MyRecord> selectRecord(HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		List<MyRecord> myRecord = repository.selectRecord(userid);
		return myRecord;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteRecord", method = RequestMethod.POST)
	public int deleteRecord(HttpSession session, String recordnum) {
		String recordN[] = recordnum.split("-");
		int result = 0;
		for (int i = 0; i < recordN.length; i++) {
			result = repository.deleteRecord(Integer.parseInt(recordN[i]));
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "selectRecordAll", method = RequestMethod.POST)
	public List<MyRecord> selectAll(HttpSession session) {
		String userid = (String) session.getAttribute("loginId");
		List<MyRecord> myRecord = repository.selectRecord(userid);
		return myRecord;
	}

	/*
	 * @RequestMapping(value="/Detail", method=RequestMethod.GET) public String
	 * Culture(String culturenum, Model model) { model.addAttribute("culturenum",
	 * culturenum); return "map/cultureDetail"; }
	 * 
	 * 
	 * @RequestMapping(value="/Detailculture", method=RequestMethod.GET) public void
	 * Detailculture(HttpServletRequest request, HttpSession session,
	 * HttpServletResponse response, String culturenum)throws IOException {
	 * 
	 * request.setCharacterEncoding("utf-8");
	 * response.setContentType("text/html; charset=utf-8"); String address1 =
	 * "http://openapi.seoul.go.kr:8088/6a74695943726564313133516e676663/json/ListPublicReservationDetail/1/5/";
	 * String serviceKey = culturenum; serviceKey =
	 * URLEncoder.encode(serviceKey,"utf-8"); PrintWriter out =
	 * response.getWriter();
	 * 
	 * 
	 * address1 = address1 + serviceKey; URL url = new URL(address1); //
	 * BufferedReader in = new BufferedReader(new
	 * InputStreamReader(url.openStream(), "UTF-8"));
	 * 
	 * InputStream in = url.openStream(); // CachedOutputStream bos = new
	 * CachedOutputStream(); ByteArrayOutputStream bos1 = new
	 * ByteArrayOutputStream(); IOUtils.copy(in, bos1); in.close(); bos1.close();
	 * 
	 * String mbos = bos1.toString("UTF-8"); // System.out.println("mbos: "+mbos);
	 * 
	 * byte[] b = mbos.getBytes("UTF-8"); String s = new String(b, "UTF-8");
	 * out.println(s);
	 * 
	 * JSONObject json = new JSONObject(); json.put("data", s);
	 * 
	 * }
	 */

	@RequestMapping(value = "/Join", method = RequestMethod.POST)
	public String join(Member member) {
		logger.info("member : {}", member.toString());
		Member m = repository.loginMember(member);
		int result= 0;
		if(m==null) {
			result = repository.join(member);
		}
		
		if (result == 0) {
			return "Join";
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/loginForm";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Member member, HttpSession session, Model model) {
		logger.info(member.toString());

		// DB에서 확인
		Member m = repository.loginMember(member);

		if (m != null) {
			session.setAttribute("loginEmail", m.getEmail());
			session.setAttribute("loginId", m.getUserid());
			session.setAttribute("loginName", m.getUsername());
			return "redirect:/";
		} else {
			model.addAttribute("message", "해당 아이디나 비밀번호가 존재하지 않습니다.");
			return "Login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate(); // 한반에 다 지울때

		// session.removeAttribute("loginId"); 여러개 중에 골라서 지울때
		return "redirect:/";
	}
}