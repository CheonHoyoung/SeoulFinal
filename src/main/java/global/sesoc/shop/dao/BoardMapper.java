package global.sesoc.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.shop.vo.Board;

public interface BoardMapper {

	
	public List<Board> select(Map<String,String> map,RowBounds rb);
	public Board selectOne(int board_num);
	public int update(Board board);
	public int delete(int board_num);
	public int insert(Board board);
	public int updateHitcount(int board_num);
	public int getTotalBoard(Map<String,String> search); // 전체 글개수를 알아내는것 페이징을 위해 필요함. ex한페이지에 10개씩 보이게하면 11개면 페이지가 한개 더생김.
    public int deleteAttachment(int board_num);
	
	
}
