package global.sesoc.shop.controllers;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletOutputStream;
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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import global.sesoc.shop.dao.BoardRepository;
import global.sesoc.shop.dao.MemberRepository;
import global.sesoc.shop.util.FileService;
import global.sesoc.shop.util.PageNavigator;
import global.sesoc.shop.vo.Board;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;


@Controller
public class BoardController {
	   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	   @Autowired
		BoardRepository repository;
		

		
		
		final String uploadPath= "/boardfile";
		
		 @RequestMapping(value="/Board", method=RequestMethod.GET)
		   public String BoardList(Model model,
	               	@RequestParam(value="currentPage",defaultValue="1") int currentPage,
	               	@RequestParam(value="searchItem",defaultValue="userid") String searchItem, //searchItem의 값을 여기에 넣음.
	               	@RequestParam(value="searchWord",defaultValue="") String searchWord) {
			 
			 int totalRecordCount =repository.getTotalBoard(searchItem,searchWord);
			 if(totalRecordCount == 0) {
		         totalRecordCount = 1;
		      }
			 
			 PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
				List<Board> list= repository.select(searchItem,searchWord,navi.getStartRecord(),navi.getCountPerPage()/*,srow,erow*/);
				Board b = new Board();
				  
				  model.addAttribute("list",list);
				  model.addAttribute("searchItem",searchItem); //검색후에 값이 그대로 인풋칸에 남아있게하기위해 값을 가져감.
				  model.addAttribute("searchWord",searchWord); 
				  model.addAttribute("navi",navi);//페이지 몇장인지 값을 넣을것임.
				  model.addAttribute("currentPage",currentPage); //현재 페이지를 강조하기위해 현재페이지를 모델로 보내줌.
			   
			 
		      return "board/BoardList";
		   }
		 
		 @RequestMapping(value="/BoardWrite", method=RequestMethod.GET)
			public String boardWrite() {
				
				return "board/BoardWrite";
				
			}

		 @RequestMapping(value="/DetailBoard", method=RequestMethod.GET)
			public String detailBoard() {
				
				return "board/BoardDetail";
				
			}
		 
		 
		 
			@RequestMapping(value="/BoardWrite", method=RequestMethod.POST)
			public String BoardWrite(Board board
					                 ,HttpSession session
					                 ,MultipartFile upload
					                 ,RedirectAttributes attr) {			                 
					                   
				System.out.println(board.getB_regdate());
				System.out.println(upload);
				System.out.println(upload.getOriginalFilename());
				
				String b_originalfile = upload.getOriginalFilename();
				String b_savedfile = FileService.saveFile(upload, uploadPath);
				String userid = (String)session.getAttribute("loginId");
				
			
				
				board.setUserid(userid);
				board.setB_originalfile(b_originalfile);
				board.setB_savedfile(b_savedfile);
				
				int result = repository.insert(board);
				System.out.println("여기가 그거다"+result);
				System.out.println("여기가 그거다2"+board.getBoard_num());
				attr.addAttribute("board_num",board.getBoard_num());
				return "redirect:/BoardDetail";
			}
			
			@RequestMapping(value="/BoardDetail", method=RequestMethod.GET)
			public String selectOne(int board_num,Model model, HttpSession session) {
				  
				 Board board= repository.selectOne(board_num);
				// List<Reply> list = rRepository.replySelect(boardnum);
				 
				model.addAttribute("board", repository.selectOne(board_num));
				//model.addAttribute("list",list);
				
				
				if(board.getB_savedfile() != null) {
				String fullPath= uploadPath +"/"+ board.getB_savedfile(); 
				   
				try {
					String type = Files.probeContentType(Paths.get(fullPath));
					//System.out.println(type);
					
					if(type != null && type.contains("image")) {
						model.addAttribute("type",type);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				   // session에 등록된 id와  글에저장된 id가 일치하지않으면 히트카운트 +1
			    if(!session.getAttribute("loginId").equals(repository.selectOne(board_num).getUserid())) {
				repository.updateHitcount(board_num);
			    }
				}
				return "board/BoardDetail";
				
			}
			
			
			@RequestMapping(value="/download", method=RequestMethod.GET)
			public String download(int board_num,HttpServletResponse response) { 
				
				Board board = repository.selectOne(board_num); //맨처음 db에 셀렉트원해서 저장된이름과 오리지널이름을 가져옴. 
				String b_savedfile= board.getB_savedfile();
				String b_originalfile= board.getB_originalfile();
				
				
				try {
					response.setHeader("Content-Disposition", " attachment;filename="+URLEncoder.encode(b_originalfile, "UTF-8"));
		                                                        //한칸띄고                                                                //무엇을               어떤방식으로.
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				                               
				String fullPath = uploadPath + "/" + b_savedfile;
				
				FileInputStream fin= null; 
				ServletOutputStream fout = null;
						
						try {
							fin= new FileInputStream(fullPath);
							fout = response.getOutputStream();
							
							FileCopyUtils.copy(fin, fout);
							
							fin.close(); //원래는 finally에서 클로즈해줘야함.
							fout.close();
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				
				return null;
			}
			
			
			@RequestMapping(value="/BoardDelete", method=RequestMethod.GET)
			public String delete(int board_num) {
				
				Board board = repository.selectOne(board_num);
				
				
				String fullPath= uploadPath +"/"+ board.getB_savedfile(); 
				FileService fs=new FileService();
				
				
				if(!fs.deleteFile(fullPath)) {
					repository.delete(board_num);
					return "redirect:/Board";
				}
				repository.delete(board_num);
				return "board/BoardList";
				  // 삭제또는 업데이트 등 동작이 취해진후 처음 페이지로 가는게 아니라 redirect:/action명 으로 이동해줘야함.
				
			}
			
			@RequestMapping(value="/BoardUpdate", method=RequestMethod.GET)
			public String update(int board_num, Model model) {
				Board board = repository.selectOne(board_num);
				model.addAttribute("board",board);

				return "board/BoardUpdate";
			}
			
			
			@RequestMapping(value="/BoardUpdate", method=RequestMethod.POST)
			public String update(Board board, Model model, MultipartFile upload, HttpSession session) {
				
				int board_num= board.getBoard_num();
				Board old= repository.selectOne(board_num); // 글번호를 가지고 이전에 있는파일을 db에서 가져옴.
				//if(upload.getSize()!=0 && )
				
				//첨부 한 경우
				if(upload.getSize() != 0) {
					//
					String b_originalfile= upload.getOriginalFilename();
					String b_savedfile=FileService.saveFile(upload, uploadPath);
					
					board.setB_originalfile(b_originalfile);;
					board.setB_savedfile(b_savedfile);
				} else {
					board.setB_originalfile(null);
					board.setB_savedfile(null);
				}
				System.out.println(board.toString());
				 repository.update(board);
				
				 return "redirect:/Board"; 
			}
			
			
			@RequestMapping(value="/DeleteAttachment", method=RequestMethod.GET)
			public String deleteAttachment(int board_num,RedirectAttributes redirect) {
				
				Board board = repository.selectOne(board_num);
				
				String fullPath= uploadPath +"/"+ board.getB_savedfile();  
				FileService.deleteFile(fullPath);
				
				board.setB_savedfile("");
				board.setB_originalfile("");
				
				repository.update(board);
				
				redirect.addAttribute("board_num",board_num);
				
				return "redirect:/BoardUpdate";
				
				
			}

}