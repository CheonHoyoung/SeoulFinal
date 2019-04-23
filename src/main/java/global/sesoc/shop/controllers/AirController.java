package global.sesoc.shop.controllers;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import global.sesoc.shop.dao.MemberRepository;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;


@Controller
public class AirController {
	   private static final Logger logger = LoggerFactory.getLogger(AirController.class);
	   
	   @RequestMapping(value="/Weather", method=RequestMethod.GET)
	   public String Weather( Model model) {
			Date chatDate = new Date();
			SimpleDateFormat datetype = new SimpleDateFormat("yyyy-MM-dd ");
			SimpleDateFormat timetype = new SimpleDateFormat(" hh:mm a");
			String date = datetype.format(chatDate);
			String time = timetype.format(chatDate);
			int time_data = chatDate.getHours();
			model.addAttribute("date", date);
			model.addAttribute("time", time);
			model.addAttribute("time_data", time_data);
	      return "Weather";
	   }
	   
		@RequestMapping(value="/CityAirData", method=RequestMethod.GET)
		public@ResponseBody void CityAirData(HttpServletRequest request, HttpServletResponse response, String keyword1) throws IOException{
			
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			
			if (keyword1.equals("종로구")) {
				keyword1 = "111123";
			} else if (keyword1.equals("중구")) {
				keyword1 = "111121";
			} else if (keyword1.equals("용산구")) {
				keyword1 = "111131";
			} else if (keyword1.equals("성동구")) {
				keyword1 = "111142";
			} else if (keyword1.equals("동대문구")) {
				keyword1 = "111152";
			} else if (keyword1.equals("중랑구")) {
				keyword1 = "111151";
			} else if (keyword1.equals("성북구")) {
				keyword1 = "111161";
			} else if (keyword1.equals("강북구")) {
				keyword1 = "111291";
			} else if (keyword1.equals("도봉구")) {
				keyword1 = "111171";
			} else if (keyword1.equals("노원구")) {
				keyword1 = "111311";
			} else if (keyword1.equals("은평구")) {
				keyword1 = "111181";
			} else if (keyword1.equals("서대문구")) {
				keyword1 = "111191";
			} else if (keyword1.equals("마포구")) {
				keyword1 = "111201";
			} else if (keyword1.equals("양천구")) {
				keyword1 = "111301";
			} else if (keyword1.equals("강서구")) {
				keyword1 = "111212";
			} else if (keyword1.equals("구로구")) {
				keyword1 = "111221";
			} else if (keyword1.equals("금천구")) {
				keyword1 = "111281";
			} else if (keyword1.equals("영등포구")) {
				keyword1 = "111231";
			} else if (keyword1.equals("동작구")) {
				keyword1 = "111241";
			} else if (keyword1.equals("관악구")) {
				keyword1 = "111251";
			} else if (keyword1.equals("서초구")) {
				keyword1 = "111262";
			} else if (keyword1.equals("강남구")) {
				keyword1 = "111261";
			} else if (keyword1.equals("송파구")) {
				keyword1 = "111273";
			} else if (keyword1.equals("강동구")) {
				keyword1 = "111274";
			} else if (keyword1.equals("광진구")) {
				keyword1 = "111141";
			}
			
			String address1 = "http://openapi.seoul.go.kr:8088/";
			String serviceKey = "6a74695943726564313133516e676663";
			String address2 = "/json/ListAirQualityByDistrictService/1/10/";
			String serviceKey2 = keyword1;
			serviceKey2 = URLEncoder.encode(serviceKey2,"utf-8");
			PrintWriter out = response.getWriter();
			
			//http://openapi.seoul.go.kr:8088/6a74695943726564313133516e676663/json/ListAirQualityByDistrictService/1/10/
			address1 = address1 + serviceKey + address2 + serviceKey2;
			URL url = new URL(address1);

//			BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

			InputStream in = url.openStream(); 
//			CachedOutputStream bos = new CachedOutputStream();
			ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
			IOUtils.copy(in, bos1);
			in.close();
			bos1.close();
		    
			String mbos = bos1.toString("UTF-8");
		    
			byte[] b = mbos.getBytes("UTF-8");
			String s = new String(b, "UTF-8");
			out.println(s);
			
			JSONObject json = new JSONObject();
			json.put("data", s);
//			json.put("data", data);
		}
		
		@RequestMapping(value="/WeatherData", method=RequestMethod.GET)
		public@ResponseBody void WeatherData(HttpServletRequest request, HttpServletResponse response, String keyword2) throws IOException{
			System.out.println(keyword2);
			String country = keyword2;
			if (keyword2.equals("종로구")) {
				keyword2 = "삼청동";
			} else if (keyword2.equals("중구")) {
				keyword2 = "소공동";
			} else if (keyword2.equals("용산구")) {
				keyword2 = "이태원동";
			} else if (keyword2.equals("성동구")) {
				keyword2 = "왕십리2동";
			} else if (keyword2.equals("동대문구")) {
				keyword2 = "청량리동";
			} else if (keyword2.equals("중랑구")) {
				keyword2 = "상봉동";
			} else if (keyword2.equals("성북구")) {
				keyword2 = "성북동";
			} else if (keyword2.equals("강북구")) {
				keyword2 = "수유동";
			} else if (keyword2.equals("도봉구")) {
				keyword2 = "도봉동";
			} else if (keyword2.equals("노원구")) {
				keyword2 = "중계동";
			} else if (keyword2.equals("은평구")) {
				keyword2 = "역촌동";
			} else if (keyword2.equals("서대문구")) {
				keyword2 = "연희동";
			} else if (keyword2.equals("마포구")) {
				keyword2 = "합정동";
			} else if (keyword2.equals("양천구")) {
				keyword2 = "목동";
			} else if (keyword2.equals("강서구")) {
				keyword2 = "마곡동";
			} else if (keyword2.equals("구로구")) {
				keyword2 = "구로동";
			} else if (keyword2.equals("금천구")) {
				keyword2 = "독산동";
			} else if (keyword2.equals("영등포구")) {
				keyword2 = "영등포동";
			} else if (keyword2.equals("동작구")) {
				keyword2 = "노량진동";
			} else if (keyword2.equals("관악구")) {
				keyword2 = "중앙동";
			} else if (keyword2.equals("서초구")) {
				keyword2 = "양재동";
			} else if (keyword2.equals("강남구")) {
				keyword2 = "삼성동";
			} else if (keyword2.equals("송파구")) {
				keyword2 = "잠실본동";
			} else if (keyword2.equals("강동구")) {
				keyword2 = "상일동";
			} else if (keyword2.equals("광진구")) {
				keyword2 = "구의동";
			} else if(keyword2.equals("")) {
				country = "강남구";
				keyword2 = "삼성동";
			}
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			
			String address = "https://api2.sktelecom.com/weather/current/minutely?version=1&lat=&lon=&city=";
			String add1 = "&county=";
			String add2 = "&village=";
			String add3 = "&stnid=&appKey=";
			String serviceKey = "93b74f28-17fa-4e92-8ff0-a7fcc262337d";
			String city = "서울";
			String village = keyword2;
			
//			serviceKey = URLEncoder.encode(serviceKey,"utf-8");
			city = URLEncoder.encode(city,"utf-8");
			country = URLEncoder.encode(country,"utf-8");
			village = URLEncoder.encode(village,"utf-8");
			PrintWriter out = response.getWriter();
			//https://api2.sktelecom.com/weather/current/minutely?version=1&lat=&lon=&city=서울&county=강서구&village=마곡동&stnid=&appKey=93b74f28-17fa-4e92-8ff0-a7fcc262337d
			
			address = address + city + add1 + country + add2 + village + add3 + serviceKey;
			URL url = new URL(address);

			
//			BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

			InputStream in = url.openStream(); 
//			CachedOutputStream bos = new CachedOutputStream();
			ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
			IOUtils.copy(in, bos1);
			in.close();
			bos1.close();
		    
			String mbos = bos1.toString("UTF-8");
		    
			byte[] b = mbos.getBytes("UTF-8");
			String s = new String(b, "UTF-8");
			out.println(s);
			
			JSONObject json = new JSONObject();
			json.put("data", s);
//			json.put("data", data);
		}
	   
}