package webtest;

public class Item {
private String id;
private String pass;
private String title;
private String content;
private String date;
public Item(String id, String pass) {
	this.id = id;
	this.pass = pass;
}
public Item(String id, String pass, String title , String content, String date) 
{
	this.id = id;
	this.pass =pass;
	this.title =title;
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


}
