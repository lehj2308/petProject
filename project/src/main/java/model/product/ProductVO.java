package model.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	
	private int pNum;
	private String mId;
	private String pName;
	private String pBrand;
	private String pTitle;
	private String pContent;
	private int pPrice;
	private int pStock;
	private int pTotal;
	private double pRating;
	private int pReview;
	private String pCtgr;
	private MultipartFile pImg1File;
	private MultipartFile pImg2File;
	private String pImg1;
	private String pImg2;
	private Date pDate;
	private int lowPrice;
	private int highPrice;
	private String sort;
	
	
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpBrand() {
		return pBrand;
	}
	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}
	public String getpTitle() {
		return pTitle;
	}
	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpStock() {
		return pStock;
	}
	public void setpStock(int pStock) {
		this.pStock = pStock;
	}
	public int getpTotal() {
		return pTotal;
	}
	public void setpTotal(int pTotal) {
		this.pTotal = pTotal;
	}
	public double getpRating() {
		return pRating;
	}
	public void setpRating(double pRating) {
		this.pRating = pRating;
	}
	public int getpReview() {
		return pReview;
	}
	public void setpReview(int pReview) {
		this.pReview = pReview;
	}
	public String getpCtgr() {
		return pCtgr;
	}
	public void setpCtgr(String pCtgr) {
		this.pCtgr = pCtgr;
	}
	public MultipartFile getpImg1File() {
		return pImg1File;
	}
	public void setpImg1File(MultipartFile pImg1File) {
		this.pImg1File = pImg1File;
	}
	public MultipartFile getpImg2File() {
		return pImg2File;
	}
	public void setpImg2File(MultipartFile pImg2File) {
		this.pImg2File = pImg2File;
	}
	public String getpImg1() {
		return pImg1;
	}
	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	public String getpImg2() {
		return pImg2;
	}
	public void setpImg2(String pImg2) {
		this.pImg2 = pImg2;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public int getLowPrice() {
		return lowPrice;
	}
	public void setLowPrice(int lowPrice) {
		this.lowPrice = lowPrice;
	}
	public int getHighPrice() {
		return highPrice;
	}
	public void setHighPrice(int highPrice) {
		this.highPrice = highPrice;
	}
	
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	@Override
	public String toString() {
		return "ProductVO [pNum=" + pNum + ", mId=" + mId + ", pName=" + pName + ", pBrand=" + pBrand + ", pTitle="
				+ pTitle + ", pContent=" + pContent + ", pPrice=" + pPrice + ", pStock=" + pStock + ", pTotal=" + pTotal
				+ ", pRating=" + pRating + ", pReview=" + pReview + ", pCtgr=" + pCtgr + ", pImg1File=" + pImg1File
				+ ", pImg2File=" + pImg2File + ", pImg1=" + pImg1 + ", pImg2=" + pImg2 + ", pDate=" + pDate
				+ ", lowPrice=" + lowPrice + ", highPrice=" + highPrice + ", sort=" + sort + "]";
	}


	
}
