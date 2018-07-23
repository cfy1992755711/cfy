package ssm.entity;

public class Resume {
	private int id;
	private String username;
	private String name;
	private String self_introduction;
	private String phone;
	private String eduction;
	private String major;
	private String graduate_instutition;
	private String languageSkill;
	private String location;
	private String IDNumber;
	private String gender;
	private String birth;
	private String native_place;
	private int dept_id;
	private int position_id;
	public Resume(int id, String username, String name, String self_introduction, String phone, String eduction,
			String major, String graduate_instutition, String languageSkill, String location, String iDNumber,
			String gender, String birth, String native_place, int dept_id, int position_id) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.self_introduction = self_introduction;
		this.phone = phone;
		this.eduction = eduction;
		this.major = major;
		this.graduate_instutition = graduate_instutition;
		this.languageSkill = languageSkill;
		this.location = location;
		IDNumber = iDNumber;
		this.gender = gender;
		this.birth = birth;
		this.native_place = native_place;
		this.dept_id = dept_id;
		this.position_id = position_id;
	}
	public Resume() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSelf_introduction() {
		return self_introduction;
	}
	public void setSelf_introduction(String self_introduction) {
		this.self_introduction = self_introduction;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEduction() {
		return eduction;
	}
	public void setEduction(String eduction) {
		this.eduction = eduction;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getGraduate_instutition() {
		return graduate_instutition;
	}
	public void setGraduate_instutition(String graduate_instutition) {
		this.graduate_instutition = graduate_instutition;
	}
	public String getLanguageSkill() {
		return languageSkill;
	}
	public void setLanguageSkill(String languageSkill) {
		this.languageSkill = languageSkill;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getIDNumber() {
		return IDNumber;
	}
	public void setIDNumber(String iDNumber) {
		IDNumber = iDNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getNative_place() {
		return native_place;
	}
	public void setNative_place(String native_place) {
		this.native_place = native_place;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getPosition_id() {
		return position_id;
	}
	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}
	@Override
	public String toString() {
		return "Resume [id=" + id + ", username=" + username + ", name=" + name + ", self_introduction="
				+ self_introduction + ", phone=" + phone + ", eduction=" + eduction + ", major=" + major
				+ ", graduate_instutition=" + graduate_instutition + ", languageSkill=" + languageSkill + ", location="
				+ location + ", IDNumber=" + IDNumber + ", gender=" + gender + ", birth=" + birth + ", native_place="
				+ native_place + ", dept_id=" + dept_id + ", position_id=" + position_id + "]";
	}
	

}
