package Ch03;

public class BookDTO {
	private String BookCode;
	private String BookName;
	private String Publisher;
	
	
	public BookDTO(String BookCode, String BookName, String Publisher) {
		super();
		this.BookCode = BookCode;
		this.BookName = BookName;
		this.Publisher = Publisher;
	}


	public String getBookCode() {
		return BookCode;
	}


	public void setBookCode(String bookCode) {
		BookCode = bookCode;
	}


	public String getBookName() {
		return BookName;
	}


	public void setBookName(String bookName) {
		BookName = bookName;
	}


	public String getPublisher() {
		return Publisher;
	}


	public void setPublisher(String publisher) {
		Publisher = publisher;
	}


	@Override
	public String toString() {
		return "BookDTO [BookCode=" + BookCode + ", BookName=" + BookName + ", Publisher=" + Publisher + "]";
	}
	
	
}
