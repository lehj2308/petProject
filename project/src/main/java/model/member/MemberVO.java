package model.member;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	
	private String mId;
	private String mName;
	private String mPw;
	private String mPh;
	private String mAddr1;
	private String mAddr2;
	private String mAddr3;
	private String mEmail;
	private String mImg;
	private MultipartFile mImgFile;
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmPh() {
		return mPh;
	}
	public void setmPh(String mPh) {
		this.mPh = mPh;
	}
	public String getmAddr1() {
		return mAddr1;
	}
	public void setmAddr1(String mAddr1) {
		this.mAddr1 = mAddr1;
	}
	public String getmAddr2() {
		return mAddr2;
	}
	public void setmAddr2(String mAddr2) {
		this.mAddr2 = mAddr2;
	}
	public String getmAddr3() {
		return mAddr3;
	}
	public void setmAddr3(String mAddr3) {
		this.mAddr3 = mAddr3;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmImg() {
		return mImg;
	}
	public void setmImg(String mImg) {
		this.mImg = mImg;
	}
	public MultipartFile getmImgFile() {
		return mImgFile;
	}
	public void setmImgFile(MultipartFile mImgFile) {
		this.mImgFile = mImgFile;
	}
	@Override
	public String toString() {
		return "MemberVO [mId=" + mId + ", mName=" + mName + ", mPw=" + mPw + ", mPh=" + mPh + ", mAddr1=" + mAddr1
				+ ", mAddr2=" + mAddr2 + ", mAddr3=" + mAddr3 + ", mEmail=" + mEmail + ", mImg=" + mImg + ", mImgFile="
				+ mImgFile + "]";
	}
	

}
