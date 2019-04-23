package global.sesoc.shop.vo;

public class Socar {
	private Double la;
	private Double lo;
	private int positn_cd;
	private String elctyvhcle_at;
	private String adres;
	private String positn_nm;
	public Socar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Socar(Double la, Double lo, int positn_cd, String elctyvhcle_at, String adres, String positn_nm) {
		super();
		this.la = la;
		this.lo = lo;
		this.positn_cd = positn_cd;
		this.elctyvhcle_at = elctyvhcle_at;
		this.adres = adres;
		this.positn_nm = positn_nm;
	}
	public Double getLa() {
		return la;
	}
	public void setLa(Double la) {
		this.la = la;
	}
	public Double getLo() {
		return lo;
	}
	public void setLo(Double lo) {
		this.lo = lo;
	}
	public int getPositn_cd() {
		return positn_cd;
	}
	public void setPositn_cd(int positn_cd) {
		this.positn_cd = positn_cd;
	}
	public String getElctyvhcle_at() {
		return elctyvhcle_at;
	}
	public void setElctyvhcle_at(String elctyvhcle_at) {
		this.elctyvhcle_at = elctyvhcle_at;
	}
	public String getAdres() {
		return adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
	}
	public String getPositn_nm() {
		return positn_nm;
	}
	public void setPositn_nm(String positn_nm) {
		this.positn_nm = positn_nm;
	}
	@Override
	public String toString() {
		return "Socar [la=" + la + ", lo=" + lo + ", positn_cd=" + positn_cd + ", elctyvhcle_at=" + elctyvhcle_at
				+ ", adres=" + adres + ", positn_nm=" + positn_nm + "]";
	}
	
	
	
}
