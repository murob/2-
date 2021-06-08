package model2.wagleboard;

public class WagleBoardDTO {
	private String idx;
	private String title;
	private String id;
	private java.sql.Date postdate;
	private String content;
	private int likebtn;
	private int hatebtn;
	private String ofile;
	private String sfile;
	private String pass;
	private String gu;
	
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	private int visitcount;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public java.sql.Date getPostdate() {
		return postdate;
	}
	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getLikebtn() {
		return likebtn;
	}
	public void setLikebtn(int likebtn) {
		this.likebtn = likebtn;
	}
	public int getHatebtn() {
		return hatebtn;
	}
	public void setHatebtn(int hatebtn) {
		this.hatebtn = hatebtn;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getVisitcount() {
		return visitcount;
	}
	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}
	
	
}
