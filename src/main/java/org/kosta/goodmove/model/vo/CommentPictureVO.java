package org.kosta.goodmove.model.vo;

public class CommentPictureVO {
	private int picno; 
	private String img_path;
	public CommentPictureVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentPictureVO(int picno, String img_path) {
		super();
		this.picno = picno;
		this.img_path = img_path;
	}
	public int getPicno() {
		return picno;
	}
	public void setPicno(int picno) {
		this.picno = picno;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	@Override
	public String toString() {
		return "commentPictureVO [picno=" + picno + ", img_path=" + img_path + "]";
	}
	
	
}
