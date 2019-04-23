package global.sesoc.shop.vo;

public class Message {
	private String msgnum;
	private String message;
	private String receiveUserId;
	private String sendUserId;
	private String msgDate;
	private int onoff;
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(String msgnum, String message, String receiveUserId, String sendUserId, String msgDate, int onoff) {
		super();
		this.msgnum = msgnum;
		this.message = message;
		this.receiveUserId = receiveUserId;
		this.sendUserId = sendUserId;
		this.msgDate = msgDate;
		this.onoff = onoff;
	}
	public String getMsgnum() {
		return msgnum;
	}
	public void setMsgnum(String msgnum) {
		this.msgnum = msgnum;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getReceiveUserId() {
		return receiveUserId;
	}
	public void setReceiveUserId(String receiveUserId) {
		this.receiveUserId = receiveUserId;
	}
	public String getSendUserId() {
		return sendUserId;
	}
	public void setSendUserId(String sendUserId) {
		this.sendUserId = sendUserId;
	}
	public String getMsgDate() {
		return msgDate;
	}
	public void setMsgDate(String msgDate) {
		this.msgDate = msgDate;
	}
	public int getOnoff() {
		return onoff;
	}
	public void setOnoff(int onoff) {
		this.onoff = onoff;
	}
	@Override
	public String toString() {
		return "Message [msgnum=" + msgnum + ", message=" + message + ", receiveUserId=" + receiveUserId
				+ ", sendUserId=" + sendUserId + ", msgDate=" + msgDate + ", onoff=" + onoff + "]";
	}
	
	
}
