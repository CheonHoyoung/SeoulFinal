package global.sesoc.shop.vo;

public class RequestFriend {
	private String senduserid;
	private String receiveuserid;
	public RequestFriend() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RequestFriend(String senduserid, String receiveuserid) {
		super();
		this.senduserid = senduserid;
		this.receiveuserid = receiveuserid;
	}
	public String getSenduserid() {
		return senduserid;
	}
	public void setSenduserid(String senduserid) {
		this.senduserid = senduserid;
	}
	public String getReceiveuserid() {
		return receiveuserid;
	}
	public void setReceiveuserid(String receiveuserid) {
		this.receiveuserid = receiveuserid;
	}
	@Override
	public String toString() {
		return "RequsetFriend [senduserid=" + senduserid + ", receiveuserid=" + receiveuserid + "]";
	}
	
}
