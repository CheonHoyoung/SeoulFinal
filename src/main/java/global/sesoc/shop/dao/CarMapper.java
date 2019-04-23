package global.sesoc.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.shop.vo.Culture;
import global.sesoc.shop.vo.Socar;

/**
 * 회원관련 Interface
 */
public interface CarMapper {
	/**
	 * 소카 넣을때 
	 * @param member
	 * @return
	 */
	public int insert(Socar socar);
	
	/***
	 * 소카 올 셀렉트
	 * @param 
	 * @return
	 */
	public List<Socar> selectAll(Map<String, String> map);
	
	public int insertCulture(Culture culture);
	public int getTotalBoard(Map<String, String> map); // 한페이지에 7개씩 

	public List<Culture> selectCulture(Map<String, String> map, RowBounds rb);

	public Culture selectOne(int culturenum);

	public Map<String, String> selectNotice(int culturenum);
}
