package global.sesoc.shop.vo;

public class MyRecord {
	private String recordnum;
	private String userid;
	private String svcnm;
	private String searchnm;
	private String regdate;
	public MyRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyRecord(String recordnum, String userid, String svcnm, String searchnm, String regdate) {
		super();
		this.recordnum = recordnum;
		this.userid = userid;
		this.svcnm = svcnm;
		this.searchnm = searchnm;
		this.regdate = regdate;
	}
	public String getRecordnum() {
		return recordnum;
	}
	public void setRecordnum(String recordnum) {
		this.recordnum = recordnum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSvcnm() {
		return svcnm;
	}
	public void setSvcnm(String svcnm) {
		this.svcnm = svcnm;
	}
	public String getSearchnm() {
		return searchnm;
	}
	public void setSearchnm(String searchnm) {
		this.searchnm = searchnm;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MyRecord [recordnum=" + recordnum + ", userid=" + userid + ", svcnm=" + svcnm + ", searchnm=" + searchnm
				+ ", regdate=" + regdate + "]";
	}
	
}
