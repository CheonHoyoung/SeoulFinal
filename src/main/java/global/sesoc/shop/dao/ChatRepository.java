package global.sesoc.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.shop.vo.MessageRoom;
import global.sesoc.shop.vo.Message;

@Repository
public class ChatRepository {
	@Autowired
	SqlSession session;
	public int chatEnter(MessageRoom chat) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.chatEnter(chat);	
		return result;
	}
	public List<MessageRoom> chatList(String roomName) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		List<MessageRoom> cr = mapper.chatList(roomName);	
		return cr;
	}
	public int chatOut(String userId) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.chatOut(userId);	
		return result;
	}
	public int addMessage(Message msg) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.addMessage(msg);
		return result;
	}
	public List<Message> selectMessage(String userid) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		List<Message> mlist = mapper.selectMessage(userid);	
		return mlist;
	}
	public int selectOffMessage(String userid) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.selectOffMessage(userid);	
		return result;
	}
	public int updateOffMessage(String userid) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.updateOffMessage(userid);	
		return result;
	}
	
	public int deleteMessage(int msgdnum) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.deleteMessage(msgdnum);
		return result;
	}
	public int addUser(MessageRoom chat) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.addUser(chat);
		return result;
	}
	public int deleteUser(String id) {
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int result = mapper.deleteUser(id);
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