package global.sesoc.shop.vo;

public class Friend {
	private String userid;
	private String friend_id;
	private String friend_name;
	private String friend_mail;
	private String friend_phone;
	private String friend_access;
	public Friend() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Friend(String userid, String friend_id, String friend_name, String friend_mail, String friend_phone,
			String friend_access) {
		super();
		this.userid = userid;
		this.friend_id = friend_id;
		this.friend_name = friend_name;
		this.friend_mail = friend_mail;
		this.friend_phone = friend_phone;
		this.friend_access = friend_access;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getFriend_id() {
		return friend_id;
	}
	public void setFriend_id(String friend_id) {
		this.friend_id = friend_id;
	}
	public String getFriend_name() {
		return friend_name;
	}
	public void setFriend_name(String friend_name) {
		this.friend_name = friend_name;
	}
	public String getFriend_mail() {
		return friend_mail;
	}
	public void setFriend_mail(String friend_mail) {
		this.friend_mail = friend_mail;
	}
	public String getFriend_phone() {
		return friend_phone;
	}
	public void setFriend_phone(String friend_phone) {
		this.friend_phone = friend_phone;
	}
	public String getFriend_access() {
		return friend_access;
	}
	public void setFriend_access(String friend_access) {
		this.friend_access = friend_access;
	}
	@Override
	public String toString() {
		return "Friend [userid=" + userid + ", friend_id=" + friend_id + ", friend_name=" + friend_name
				+ ", friend_mail=" + friend_mail + ", friend_phone=" + friend_phone + ", friend_access=" + friend_access
				+ "]";
	}
	
	
}
