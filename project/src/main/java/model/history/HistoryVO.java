package model.history;

import java.sql.Date;

public class HistoryVO {
	private int hNum;
	private String mId;
	private String hName;
	private String hAddr1;
	private String hAddr2;
	private String hAddr3;
	private String hPh;
	private int pNum;
	private String pName;
	private String pImg1;
	private int pPrice;
	private int hAmount;
	private Date hDate;
	
	public int gethNum() {
		return hNum;
	}
	public void sethNum(int hNum) {
		this.hNum = hNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethAddr1() {
		return hAddr1;
	}
	public void sethAddr1(String hAddr1) {
		this.hAddr1 = hAddr1;
	}
	public String gethAddr2() {
		return hAddr2;
	}
	public void sethAddr2(String hAddr2) {
		this.hAddr2 = hAddr2;
	}
	public String gethAddr3() {
		return hAddr3;
	}
	public void sethAddr3(String hAddr3) {
		this.hAddr3 = hAddr3;
	}
	public String gethPh() {
		return hPh;
	}
	public void sethPh(String hPh) {
		this.hPh = hPh;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpImg1() {
		return pImg1;
	}
	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int gethAmount() {
		return hAmount;
	}
	public void sethAmount(int hAmount) {
		this.hAmount = hAmount;
	}
	public Date gethDate() {
		return hDate;
	}
	public void sethDate(Date hDate) {
		this.hDate = hDate;
	}
	@Override
	public String toString() {
		return "HistoryVO [hNum=" + hNum + ", mId=" + mId + ", hName=" + hName + ", hAddr1=" + hAddr1 + ", hAddr2="
				+ hAddr2 + ", hAddr3=" + hAddr3 + ", hPh=" + hPh + ", pNum=" + pNum + ", pName=" + pName + ", pImg1="
				+ pImg1 + ", pPrice=" + pPrice + ", hAmount=" + hAmount + ", hDate=" + hDate + "]";
	}
	
}
