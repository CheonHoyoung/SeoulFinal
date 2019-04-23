package global.sesoc.shop.vo;

public class Board {

	private int board_num; 	
	private String userid; 		
	private String b_title; 		
	private String b_content; 	
	private String b_regdate; 
	private String b_originalfile;	
	private String b_savedfile;
	private int hitcount; 	
	public Board() {
		super();
	}
	public Board(int board_num, String userid, String b_title, String b_content, String b_regdate,
			String b_originalfile, String b_savedfile, int hitcount) {
		super();
		this.board_num = board_num;
		this.userid = userid;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_regdate = b_regdate;
		this.b_originalfile = b_originalfile;
		this.b_savedfile = b_savedfile;
		this.hitcount = hitcount;
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
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(String b_regdate) {
		this.b_regdate = b_regdate;
	}
	public String getB_originalfile() {
		return b_originalfile;
	}
	public void setB_originalfile(String b_originalfile) {
		this.b_originalfile = b_originalfile;
	}
	public String getB_savedfile() {
		return b_savedfile;
	}
	public void setB_savedfile(String b_savedfile) {
		this.b_savedfile = b_savedfile;
	}
	public int getHitcount() {
		return hitcount;
	}
	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}
	@Override
	public String toString() {
		return "Board [board_num=" + board_num + ", userid=" + userid + ", b_title=" + b_title + ", b_content="
				+ b_content + ", b_regdate=" + b_regdate + ", b_originalfile=" + b_originalfile + ", b_savedfile="
				+ b_savedfile + ", hitcount=" + hitcount + "]";
	}
	
}
