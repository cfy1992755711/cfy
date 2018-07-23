package ssm.entity;

public class Recuit {
	private int id;
	private String title;
	private String content;
	private Department dept;
	private Position position;
	public Recuit(int id, String title, String content, Department dept, Position position) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.dept = dept;
		this.position = position;
	}
	public Recuit() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "Recuit [id=" + id + ", title=" + title + ", content=" + content + ", dept=" + dept + ", position="
				+ position + "]";
	}
	
}
