package global.sesoc.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;
import global.sesoc.shop.vo.Reply;

@Repository
public class ReplyRepository {
	@Autowired
	SqlSession session;
	public int replyWrite(Reply r) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		int result = mapper.replyWrite(r);	
		return result;
	}
	public List<Reply> selectAll(Reply reply) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		List<Reply> list = mapper.selectAll(reply);
		return list;
	}
	public int replyDelete(Reply reply) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
    	 int result = mapper.replyDelete(reply);
    	 return result;
	}
	
}

/*
@Controller  --view랑 연동
@Repository  --db랑 연동
@Service     --로직작업
@Componentt  --bean이랑 (여러가지 잡다)
<bean> 으로 등록되는것은 위의 4가지 +1 
*/