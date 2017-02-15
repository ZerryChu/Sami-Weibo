package person.zerry.sami_api.entity;

/**
 * @author  ZerryChu
 * @version 2.0
 * @content 微博帖子
 * 
 */
public class Message extends SourceMessagae {
	private User      author;
	private int       type;
	private String    pic;           //uuid值，图片名，暂定一微博只能存一张图片
	private Label[]   labels;
	private boolean   isSupported;
	private SourceMessagae source_message;
	
	
	public Label[] getLabels() {
		return labels;
	}
	public void setLabels(Label[] labels) {
		this.labels = labels;
	}
	public boolean isSupported() {
		return isSupported;
	}
	public void setSupported(boolean isSupported) {
		this.isSupported = isSupported;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public User getAuthor() {
		return author;
	}
	public void setAuthor(User author) {
		this.author = author;
	}
	public SourceMessagae getSource_message() {
		return source_message;
	}
	public void setSource_message(SourceMessagae source_message) {
		this.source_message = source_message;
	}
	
}
