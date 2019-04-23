package global.sesoc.shop.controllers;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.cxf.helpers.IOUtils;
import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;

import global.sesoc.shop.dao.CarRepository;
import global.sesoc.shop.dao.MemberRepository;
import global.sesoc.shop.util.PageNavigator;
import global.sesoc.shop.vo.Car;
import global.sesoc.shop.vo.Culture;
import global.sesoc.shop.vo.MyRecord;
import global.sesoc.shop.vo.Socar;

@Controller
public class MapController {
	@Autowired
	CarRepository repository;
	
	@Autowired
	MemberRepository repositoryM;

	@RequestMapping(value = "/Socar", method = RequestMethod.GET)
	public String Socar() {
		
		return "map/Socar";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reserve(HttpServletRequest request, HttpSession session, HttpServletResponse response, String parStoreCd, Model model, String title) throws IOException{
          request.setCharacterEncoding("utf-8");
	      response.setContentType("text/html; charset=utf-8");
	      //http://www.seoulnanumcar.com/reserve/nanumSpotSearch?search_gu=%EA%B0%95%EB%82%A8%EA%B5%AC
	      String address1 = "http://www.seoulnanumcar.com/reserve/nanumSpotInfo?parStoreCd="+parStoreCd;
	      
	      Document doc = Jsoup.connect(address1).get();
	      //System.out.println(doc.toString());
	      
	      Elements rowElements = doc.select("table tbody tr");
	      Elements rowElements2 = doc.select("table tbody tr");
	      ArrayList<String> car = new ArrayList<>();
	      ArrayList<String> reserve = new ArrayList<>();
	      ArrayList<Car> carReserve = new ArrayList<>();
	      
	      Date chatDate = new Date();
			SimpleDateFormat datetype = new SimpleDateFormat("yyyy/MM/dd ");
			SimpleDateFormat timetype = new SimpleDateFormat(" hh시mm분ss초 a");
			String date = datetype.format(chatDate);
			String time = timetype.format(chatDate);
	      
	      for(Element row: rowElements) {
	    	    String division = String.valueOf(row.select("td strong"));
	    	    String result = division.substring(division.indexOf(">")+1, division.lastIndexOf("<"));
	    	    car.add(result);
	    	   System.out.println(result);
	      }
	      
	      for(Element row: rowElements2) {
	    	   String division2 = String.valueOf(row.select("td.cnt"));
	    	   String result = division2.substring(division2.indexOf(":")+2, division2.lastIndexOf("대"));
	    	   reserve.add(result);
	    	   System.out.println(result);
	      }
	      
	      for(int i= 0; i<car.size(); i++) {
	    	 Car carlist = new Car();
	    	 if(car.get(i).equals("쏘카")) {
	    		 carlist.setCar(car.get(i));
		    	 carlist.setReserve(reserve.get(i));
		    	 carReserve.add(carlist);
	    	 }
	      }
	      
	      for(Car car1 : carReserve) {
	    	  System.out.println(car1);
	      }
	      
	      
	      model.addAttribute("car", carReserve);
	      model.addAttribute("title", title);
	      model.addAttribute("date", date);
	      model.addAttribute("time", time);
//	      JSONObject json = new JSONObject();
//	      json.put("data", s);
		return "map/Reserve";
	}

	@ResponseBody
	@RequestMapping(value = "/sss", method = RequestMethod.POST)
	public List<Socar> sss(@RequestBody Map<String, String> map, Model model, HttpSession session) throws IOException {
		  String keywordNm = map.get("keyword1");
	      String keywordGu = map.get("keyword2");
	      List<Socar> socarlist = repository.selectAll(keywordGu, keywordNm);
	      if(session.getAttribute("loginId")!=null) {
	    	  if(!keywordNm.equals("")) {
		    	  MyRecord myRecord = new MyRecord();
		    	  myRecord.setSvcnm("");
		    	  String userid = (String) session.getAttribute("loginId");
		    	  myRecord.setUserid(userid);
		    	  myRecord.setSearchnm(keywordNm);
		    	  System.out.println(myRecord.toString());
		    	  int result = repositoryM.insertRecord(myRecord);
		      }
	      }
		  model.addAttribute("socarlist", socarlist);
		  
		  return socarlist;
	        
	}
	
	@ResponseBody
	@RequestMapping(value = "/addr", method = RequestMethod.POST)
	public void addr(@RequestBody Map<String, String> map, HttpSession session) throws IOException {
	      String addr = map.get("addr");
	      String state = map.get("state");
	      if(addr!=null) {
	    	  session.setAttribute("addr", addr);
	      }
	      
	      if(state!=null) {
	    	  session.setAttribute("state", state);
	      }
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "reservation2", method = RequestMethod.GET)
	public void reservation2(String title, HttpSession session) {
		System.out.println("12w312w12e");
		MyRecord myRecord = new MyRecord();
		myRecord.setSvcnm(title);
		String userid = (String) session.getAttribute("loginId");
		myRecord.setUserid(userid);
		myRecord.setSearchnm("");
		System.out.println(myRecord);
		int result = repositoryM.insertRecord(myRecord);
	}
	
	@ResponseBody
	@RequestMapping(value = "/sss2", method = RequestMethod.GET)
	public void sss2(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws IOException {

	      request.setCharacterEncoding("utf-8");
	      response.setContentType("text/html; charset=utf-8");
	      //http://www.seoulnanumcar.com/reserve/nanumSpotSearch?search_gu=%EA%B0%95%EB%82%A8%EA%B5%AC
	      String address1 = "http://openapi.seoul.go.kr:8088/6a74695943726564313133516e676663/json/ListPublicReservationCulture/1/101/";
	      String serviceKey = "";
	      //&search_sponam=%EA%B7%B8%EB%A6%B0%EC%B9%B4
	      String address2 = "";
//	      serviceKey = URLEncoder.encode(serviceKey,"utf-8");
	      PrintWriter out = response.getWriter();
	      
	      
	      address1 = address1 + serviceKey + address2;
	      URL url = new URL(address1);

//	      System.out.println(address1);
	      
//	      BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

	      InputStream in = url.openStream(); 
//	      CachedOutputStream bos = new CachedOutputStream();
	      ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
	      IOUtils.copy(in, bos1);
	      in.close();
	      bos1.close();
	       
	      String mbos = bos1.toString("UTF-8");
//	      System.out.println("mbos: "+mbos);
	       
	      byte[] b = mbos.getBytes("UTF-8");
	      String s = new String(b, "UTF-8");
	      out.println(s);
	      
	      JSONObject json = new JSONObject();
	      
	      json.put("data", s);
//	      json.put("data", data);
//	      System.out.println("json: "+json);
	      
	      JsonParser parser = new JsonParser();
	      JsonObject jsonObject = parser.parse(s).getAsJsonObject();
	      //JsonObject jsonObject = new JsonParser().parse(s).getAsJsonObject();
	      JsonObject jsonO = (JsonObject) jsonObject.get("ListPublicReservationCulture");
	      JsonArray jsonArray = jsonO.getAsJsonArray("row");
	        for(int i=0;i<jsonArray.size();i++) {
	           JsonObject jsonObject1 = jsonArray.get(i).getAsJsonObject();
	           JsonPrimitive jsonPrimitive1 = jsonObject1.getAsJsonPrimitive("SVCID");
	           JsonPrimitive jsonPrimitive2 = jsonObject1.getAsJsonPrimitive("SVCNM");
	           JsonPrimitive jsonPrimitive3 = jsonObject1.getAsJsonPrimitive("MINCLASSNM");
	           JsonPrimitive jsonPrimitive4 = jsonObject1.getAsJsonPrimitive("PLACENM");
	           JsonPrimitive jsonPrimitive5 = jsonObject1.getAsJsonPrimitive("SVCURL");
	           JsonPrimitive jsonPrimitive6 = jsonObject1.getAsJsonPrimitive("NOTICE");
	           JsonPrimitive jsonPrimitive7 = jsonObject1.getAsJsonPrimitive("X");
	           JsonPrimitive jsonPrimitive8 = jsonObject1.getAsJsonPrimitive("Y");
	           JsonPrimitive jsonPrimitive9 = jsonObject1.getAsJsonPrimitive("SVCOPNBGNDT");
	           JsonPrimitive jsonPrimitive10 = jsonObject1.getAsJsonPrimitive("IMG_PATH");
	           String value1 = jsonPrimitive1.getAsString();
	           String value2 = jsonPrimitive2.getAsString();
	           String value3 = jsonPrimitive3.getAsString();
	           String value4 = jsonPrimitive4.getAsString();
	           String value5 = jsonPrimitive5.getAsString();
	           String value6 = jsonPrimitive6.getAsString();
	           String value7 = jsonPrimitive7.getAsString();
	           String value8 = jsonPrimitive8.getAsString();
	           String value9 = jsonPrimitive9.getAsString();
	           String value10 = jsonPrimitive10.getAsString();
	           if(value7.equals("")||value7.equals(null)) {
	        	   value7 = "0.0"; 
	        	   value8 = "0.0";
	           }
	           String svalue9 = value9.substring(0, 10);
	           Double dvalue7 = Double.parseDouble(value7);
	           Double dvalue8 = Double.parseDouble(value8);
	           Culture culture = new Culture(0, value1, value2, value3, value4, value5, value6, dvalue7, dvalue8, svalue9, value10);
	           repository.insertCulture(culture);
	        }
	}
	
	 @RequestMapping(value="/Culture", method=RequestMethod.GET)
	   public String Culture(Model model, @RequestParam(value="currentPage", defaultValue="1") int currentPage, @RequestParam(value="searchItem", defaultValue="svcnm") String searchItem, @RequestParam(value="searchWord", defaultValue="") String searchWord) {
		 System.out.println(searchItem);
		   int totalRecordCount = repository.getBoardCount(searchItem, searchWord);
		   PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		   List<Culture> culturelist = repository.selectCulture(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		   model.addAttribute("list", culturelist);
			model.addAttribute("searchItem", searchItem);
			model.addAttribute("searchWord", searchWord);
			model.addAttribute("navi", navi);
			model.addAttribute("currentPage", currentPage);
	      return "culture/Culture";
	}
	 
	@RequestMapping(value="/cultureDetail", method=RequestMethod.GET)
		public String detail(int culturenum,HttpServletResponse response, Model model, HttpSession session)  throws IOException {
			Culture c = repository.selectOne(culturenum);
			model.addAttribute("culture", c);
			System.out.println(session.getAttribute("addr"));
			model.addAttribute("addr", session.getAttribute("addr"));
			return "culture/cultureDetail"; 
		}

}

