package myWeb;


public class MyDto {
	int id;
	String name;
	String pss;
	String board_title;
	String board_content;
	
	public MyDto(int id, String name, String pss, String board_title, String board_content) {
		super();
		this.id = id;
		this.name = name;
		this.pss = pss;
		this.board_title = board_title;
		this.board_content = board_content;
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

	public String getPss() {
		return pss;
	}

	public void setPss(String pss) {
		this.pss = pss;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	@Override
	public String toString() {
		return "myDto [id=" + id + ", name=" + name + ", pss=" + pss + ", board_title=" + board_title
				+ ", board_content=" + board_content + "]";
	}
	
	

}
