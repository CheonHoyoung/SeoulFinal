package global.sesoc.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import global.sesoc.shop.vo.Board;


@Controller
public class BoardRepository {

	  
	// 여기는 Controller에서 호출함.
	  @Autowired
	  SqlSession session;
	
	  
	  
	public List<Board> select(String searchItem,String searchWord
	                          ,int startRecord
	                          , int countPerPage){
		
		RowBounds rb= new RowBounds(startRecord, countPerPage); //마이바티스에서 제공해주는것.
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		Map<String, String> map = new HashMap<>();
		
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		
		List<Board> list= mapper.select(map,rb);
			
		return list;
		
	}
	
     public int insert(Board board) {
    	
    	 
    	 BoardMapper mapper = session.getMapper(BoardMapper.class);
    	 int result = mapper.insert(board);
    	 
    	 return result;
    	 
     }
     public int update(Board board) {
		
    	 
    	 BoardMapper mapper = session.getMapper(BoardMapper.class);
    	 int result = mapper.update(board);
    	 
    	 return result;
    	 
    	 
     }
     public int delete(int board_num) {
    	 BoardMapper mapper = session.getMapper(BoardMapper.class);
    	 int result = mapper.delete(board_num);
    	 
    	 return result;
    	 
    	 
     }
     
     
     public Board selectOne(int board_num) {
    	
    	 Board board=null;
    	 BoardMapper mapper = session.getMapper(BoardMapper.class);
    	 board = mapper.selectOne(board_num);
    	 
    	 
    	 return board;
     }

	public int getTotalBoard(String searchItem, String searchWord) {
		// TODO Auto-generated method stub
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		Map<String,String> map = new HashMap<>();
   	 
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int count = mapper.getTotalBoard(map);
    	 
		
		return count;
	}

	public void updateHitcount(int boardnum) {
	        
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		mapper.updateHitcount(boardnum);
		
		
	}
	
	

     
    //전체 글 갯수를 얻어오는 메소드. 
	


}
