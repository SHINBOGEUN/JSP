package Ch05;

public class MemberBean {
	private String name;
	private String age;
	private String add;
	private String nickname;
	private String height;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", age=" + age + ", add=" + add + ", nickname=" + nickname + ", height="
				+ height + "]";
	}
	
	
	
}
