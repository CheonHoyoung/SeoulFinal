package global.sesoc.shop.vo;

public class Culture {
	private int culturenum;
	private String svcid;
	private String svcnm;
	private String minclassnm;
	private String placenm;
	private String svcurl;
	private String notice;
	private Double x;
	private Double y;
	private String svcopnbgndt;
	private String img_path;
	public Culture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Culture(int culturenum, String svcid, String svcnm, String minclassnm, String placenm, String svcurl,
			String notice, Double x, Double y, String svcopnbgndt, String img_path) {
		super();
		this.culturenum = culturenum;
		this.svcid = svcid;
		this.svcnm = svcnm;
		this.minclassnm = minclassnm;
		this.placenm = placenm;
		this.svcurl = svcurl;
		this.notice = notice;
		this.x = x;
		this.y = y;
		this.svcopnbgndt = svcopnbgndt;
		this.img_path = img_path;
	}
	public int getCulturenum() {
		return culturenum;
	}
	public void setCulturenum(int culturenum) {
		this.culturenum = culturenum;
	}
	public String getSvcid() {
		return svcid;
	}
	public void setSvcid(String svcid) {
		this.svcid = svcid;
	}
	public String getSvcnm() {
		return svcnm;
	}
	public void setSvcnm(String svcnm) {
		this.svcnm = svcnm;
	}
	public String getMinclassnm() {
		return minclassnm;
	}
	public void setMinclassnm(String minclassnm) {
		this.minclassnm = minclassnm;
	}
	public String getPlacenm() {
		return placenm;
	}
	public void setPlacenm(String placenm) {
		this.placenm = placenm;
	}
	public String getSvcurl() {
		return svcurl;
	}
	public void setSvcurl(String svcurl) {
		this.svcurl = svcurl;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public Double getX() {
		return x;
	}
	public void setX(Double x) {
		this.x = x;
	}
	public Double getY() {
		return y;
	}
	public void setY(Double y) {
		this.y = y;
	}
	public String getSvcopnbgndt() {
		return svcopnbgndt;
	}
	public void setSvcopnbgndt(String svcopnbgndt) {
		this.svcopnbgndt = svcopnbgndt;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	@Override
	public String toString() {
		return "Culture [culturenum=" + culturenum + ", svcid=" + svcid + ", svcnm=" + svcnm + ", minclassnm="
				+ minclassnm + ", placenm=" + placenm + ", svcurl=" + svcurl + ", notice=" + notice + ", x=" + x
				+ ", y=" + y + ", svcopnbgndt=" + svcopnbgndt + ", img_path=" + img_path + "]";
	}
	
	
	
}
