package global.sesoc.shop.dao;

import java.util.List;

import global.sesoc.shop.vo.MessageRoom;
import global.sesoc.shop.vo.Message;

/**
 * 회원관련 Interface
 */
public interface ChatMapper {
	public int chatEnter(MessageRoom chat);

	public List<MessageRoom> chatList(String roomName);

	public int chatOut(String userId);

	public int addMessage(Message msg);

	public List<Message> selectMessage(String userid);

	public int selectOffMessage(String userid);

	public int updateOffMessage(String userid);
	
	public int deleteMessage(int msgdnum);

	public int addUser(MessageRoom chat);

	public int deleteUser(String id);
}
