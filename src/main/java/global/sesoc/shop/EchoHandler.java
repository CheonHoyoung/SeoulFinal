package global.sesoc.shop;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import global.sesoc.shop.dao.ChatRepository;
import global.sesoc.shop.vo.MessageRoom;
import global.sesoc.shop.vo.Message;

public class EchoHandler extends TextWebSocketHandler {

	@Autowired
	ChatRepository repository;
	int count = 0;

	private static final Logger logger = LoggerFactory.getLogger(EchoHandler.class);
	// private Map<String, WebSocketSession> users = new ConcurrentHashMap<>();
	private List<MessageRoom> RoomList = new ArrayList<>();
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	private List<MessageRoom> slist = new ArrayList<>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		// users.put(session.getId(), session);
		logger.info("{} 연결됨", session.getId());
		// System.out.println("채팅방 입장자 :"+session.getPrincipal().getName());

	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		logger.info("{}로부터 {}받음", session.getId(), message.getPayload());
		String sendUserId = null;
		String talker = session.getId();
		String receiveUserId = null;
		// 채팅 시간 저장
		Date chatDate = new Date();
		SimpleDateFormat datetype = new SimpleDateFormat("yyyy/MM/dd ");
		SimpleDateFormat time = new SimpleDateFormat(" hh시mm분ss초 a");
		String date = datetype.format(chatDate);
		date += time.format(chatDate);

		int index = 0;
		if (message.getPayload().indexOf(":::") != -1) {
			String userid = message.getPayload().split(":::")[1];
			System.out.println(userid);
			MessageRoom chat = new MessageRoom(userid, session.getId(), session);
			repository.addUser(chat);
			RoomList.add(chat);
			return;
		}
		//0번 메시지 , 1번 리시브 아이디, 2번 보내는 아이디
		String messageU = message.getPayload().split("-")[0];
		receiveUserId = message.getPayload().split("-")[1];
		sendUserId = message.getPayload().split("-")[2];
		boolean flag = false;
		for (MessageRoom chat : RoomList) {
			if(receiveUserId.equals(chat.getUserId())) {
				flag = true;
			}
		}
		if(flag) {
			Message msg = new Message(null, messageU, receiveUserId, sendUserId, null, 0);
			repository.addMessage(msg);
		} else {
			Message msg = new Message(null, messageU, receiveUserId, sendUserId, null, 1);
			repository.addMessage(msg);
		}
		
		
		System.out.println(messageU);
		System.out.println(receiveUserId);
		System.out.println(sendUserId);
		boolean flag2 = false;
		for (MessageRoom chat1 : RoomList) {
			if (receiveUserId.equals(chat1.getUserId())) {
				//chat1.getSession().sendMessage(new TextMessage(message.getPayload() + "-" + date));
				
				flag2 = true;
				MessageRoom chat = new MessageRoom(chat1.getUserId(), chat1.getId(), chat1.getSession());
				slist.add(chat);
			}
		}
		
		if(flag2) {
			slist.get(slist.size()-1).getSession().sendMessage(new TextMessage(message.getPayload() + "-" + date));
		}

		logger.info("{}로부터 {}받음", session.getId(), message.getPayload());
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		// users.remove(session.getId());
		int s = 0;
		for (int i = 0; i < RoomList.size(); i++) {
			if (RoomList.get(i).getId().equals(session.getId())) {
				s = i;
				repository.deleteUser(RoomList.get(i).getId());
				break;
			}
		}
		RoomList.remove(s);
		

		logger.info("{} 연결끊김", session.getId());
		// System.out.println("채팅방 퇴장자 :"+session.getPrincipal().getName());
	}

}
