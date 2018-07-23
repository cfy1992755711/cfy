package ssm.entity;

public class Department {
	private int id;
	private String name;
	private String createTime;
	public Department(int id, String name, String createTime) {
		super();
		this.id = id;
		this.name = name;
		this.createTime = createTime;
	}
	public Department() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", createTime=" + createTime + "]";
	}
	

}
