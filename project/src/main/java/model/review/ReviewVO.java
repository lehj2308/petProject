package model.review;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {

	private int rNum;
	private String mId;
	private int pNum;
	private String rContent;
	private int rRating;
	private Date rDate;
	private String mImg;
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getrRating() {
		return rRating;
	}
	public void setrRating(int rRating) {
		this.rRating = rRating;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
	public String getmImg() {
		return mImg;
	}
	public void setmImg(String mImg) {
		this.mImg = mImg;
	}
	@Override
	public String toString() {
		return "ReviewVO [rNum=" + rNum + ", mId=" + mId + ", pNum=" + pNum + ", rContent=" + rContent + ", rRating="
				+ rRating + ", rDate=" + rDate + ", mImg=" + mImg + "]";
	}
	
	
}
