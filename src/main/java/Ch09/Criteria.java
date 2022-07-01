package Ch09;

public class Criteria {
	private String type;
//	private int start;
	private int end;
	
	public Criteria() {
		end = 100;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	@Override
	public String toString() {
		return "Criteria [type=" + type + ", end=" + end + "]";
	}
	
	
	
}
