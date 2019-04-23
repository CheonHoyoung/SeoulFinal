package global.sesoc.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.shop.vo.Culture;
import global.sesoc.shop.vo.Socar;

@Repository
public class CarRepository {
	@Autowired
	SqlSession session;
	/**
	 * 회원 가입
	 * @param member
	 * @return int 회원가입여부(0, 1)
	 */
	public int insert(Socar socar){
		CarMapper mapper = session.getMapper(CarMapper.class);
		int result = mapper.insert(socar);		
		return result;
	}
	
	public List<Socar> selectAll(String keywordGu, String keywordNm){
		CarMapper mapper = session.getMapper(CarMapper.class);
		Map<String, String> map = new HashMap<>();
		
		map.put("keywordGu", keywordGu);
		map.put("keywordNm", keywordNm);
		List<Socar> result = mapper.selectAll(map);		
		return result;
	}
	
	public int insertCulture(Culture culture) {
		CarMapper mapper = session.getMapper(CarMapper.class);
		int result = mapper.insertCulture(culture);		
		return result;
	}
	
	//전체 글 개수 조회
	public int getBoardCount(String searchItem, String searchWord) {
		CarMapper mapper = session.getMapper(CarMapper.class);
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int result = mapper.getTotalBoard(map);
		return result;
	}
	
	/**
	 * 전체 글 조회
	 * @return list 조회된 전체 글
	 */
	public List<Culture> selectCulture(String searchItem, String searchWord, int startRecord, int countPerPage) {
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		CarMapper mapper = session.getMapper(CarMapper.class);
		Map<String, String> map = new HashMap<>();
		
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		System.out.println(rb);
		List<Culture> list = mapper.selectCulture(map, rb);
		
		return list;
	}

	public Culture selectOne(int culturenum) {
		CarMapper mapper = session.getMapper(CarMapper.class);
		Culture c = mapper.selectOne(culturenum);
		return c;
	}

	public Map<String, String> selectNotice(int culturenum) {
		CarMapper mapper = session.getMapper(CarMapper.class);
		Map<String, String> m = mapper.selectNotice(culturenum);
		return m;
	}
	
}

/*
@Controller  --view랑 연동
@Repository  --db랑 연동
@Service     --로직작업
@Componentt  --bean이랑 (여러가지 잡다)
<bean> 으로 등록되는것은 위의 4가지 +1 
*/