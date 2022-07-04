package Prac;

import java.sql.Date;

public class boardDTO {
	private int no;
	private String title;
	private String writer;
	private Date day;
	
	public boardDTO() {
		
	}
	
	public boardDTO(int no, String title, String writer, Date day) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.day = day;
	}
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date date) {
		this.day = date;
	}

	@Override
	public String toString() {
		return "boardDTO [no=" + no + ", title=" + title + ", writer=" + writer + ", day=" + day + "]";
	}
	
	
	
}
