package model.history;

import java.sql.Date;

public class HistoryVO {
	private int hNum;
	private String mId;
	private int pNum;
	private String pName;
	private int hPrice;
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
	public int gethPrice() {
		return hPrice;
	}
	public void sethPrice(int hPrice) {
		this.hPrice = hPrice;
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
		return "HistoryVO [hNum=" + hNum + ", mId=" + mId + ", pNum=" + pNum + ", pName=" + pName + ", hPrice=" + hPrice
				+ ", hAmount=" + hAmount + ", hDate=" + hDate + "]";
	}
	
	
}
