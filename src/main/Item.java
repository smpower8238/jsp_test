

public class Item {
	private String id;
	private String pass;
	private String title;
	private String content;
	private String date;
	private int num;

	public Item(String id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	public Item(String id, String title, String content) {
		this.id = id;
		this.title = title;
		this.content = content;
	}

	public Item(int num, String id, String title, String content, String date) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

}
