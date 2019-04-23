package global.sesoc.shop.vo;

import java.util.*;

import org.springframework.web.socket.WebSocketSession;

public class MessageRoom {
	private String userId;
	private String id;
	private WebSocketSession session;
	public MessageRoom() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MessageRoom(String userId, String id, WebSocketSession session) {
		super();
		this.userId = userId;
		this.id = id;
		this.session = session;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public WebSocketSession getSession() {
		return session;
	}
	public void setSession(WebSocketSession session) {
		this.session = session;
	}
	@Override
	public String toString() {
		return "ChatRoom [userId=" + userId + ", id=" + id + ", session=" + session + "]";
	}
	

}
