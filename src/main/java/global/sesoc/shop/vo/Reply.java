package global.sesoc.shop.vo;

public class Reply {
    
	private int  reply_num;	
	private int  board_num;	
	private String userid;	//리플 작성자 이름 
	private String b_replytext; //리플내용
	private String b_regdate;
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reply(int reply_num, int board_num, String userid, String b_replytext, String b_regdate) {
		super();
		this.reply_num = reply_num;
		this.board_num = board_num;
		this.userid = userid;
		this.b_replytext = b_replytext;
		this.b_regdate = b_regdate;
	}
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getB_replytext() {
		return b_replytext;
	}
	public void setB_replytext(String b_replytext) {
		this.b_replytext = b_replytext;
	}
	public String getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(String b_regdate) {
		this.b_regdate = b_regdate;
	}
	@Override
	public String toString() {
		return "Reply [reply_num=" + reply_num + ", board_num=" + board_num + ", userid=" + userid + ", b_replytext="
				+ b_replytext + ", b_regdate=" + b_regdate + "]";
	}
	
	
	
}
