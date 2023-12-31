package model;

import java.util.Date;

public class ReplyVO {
	private int rid;
	private int bid;
	private String mid;
	private Date date;
	private String rContent;
	
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [rid=" + rid + ", bid=" + bid + ", mid=" + mid + ", date=" + date + ", rContent=" + rContent
				+ "]";
	}
	
}
