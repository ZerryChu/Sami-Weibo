package person.zerry.sami_api.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import com.mysql.jdbc.Statement;

import person.zerry.sami_api.entity.Message;
import person.zerry.sami_api.entity.User;

class MsgHeat {
	public long id;
	public double hot;

	public MsgHeat(long id, double hot) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.hot = hot;
	}
}

/**
 * @content 每十分钟统计一次微博热度（交由其他计算机处理后将结果update）
 * @author zhuzirui
 *
 */
public class MessageHeat implements Runnable {
	private Message[] hitMessages = null;
	private MsgHeat[] msgHeats = null;
	private Connection conn = null;
	private Statement stmt = null;

	public Message[] getHitMessages() {
		return hitMessages;
	}
	
	private void queryMsgInfo() throws Exception {
		String sql = "select count(*) from message_inf";
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next())
			msgHeats = new MsgHeat[rs.getInt(1)];
		else
			return;
		sql = "select * from message_inf";
		rs = stmt.executeQuery(sql);
		int index = 0;
		// 热度公式 comment *5 + support *2 + repost *3 - 时间差/10000
		while (rs.next()) {
			long id = rs.getLong("id");
			int support_times = rs.getInt("support_times");
			int comment_times = rs.getInt("comment_times");
			int repost_times = rs.getInt("repost_times");
			String create_time = rs.getString("create_time");
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			double hot = (support_times * 2 + comment_times * 5 + repost_times * 3)
					+ (format.parse(create_time).getTime() - format.parse("2008-12-01 00:00:00").getTime()) / 10000;
			msgHeats[index++] = new MsgHeat(id, hot);
			System.out.println(hot);
		}
		rs.close();
		for (int i = 0; i < index; i++) {
			updateMsgHeat(msgHeats[i]);
		}
	}

	private void updateMsgHeat(MsgHeat msgHeat) throws SQLException {
		long id = msgHeat.id;
		double hot = msgHeat.hot;
		System.out.println(hot);
		String saveOfupdate = "insert into weibo_heat values(" + id + ", " + hot + ") ON DUPLICATE KEY UPDATE hot = "
				+ hot;
		stmt.executeUpdate(saveOfupdate);
	}

	public void init() {
		MessageHeat calculator = new MessageHeat();
		Thread thread = new Thread(calculator);
		thread.start();

	}

	public void run() {
		// TODO Auto-generated method stub
		try {
			while (true) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/social network", "root", "486579");
				stmt = (Statement) conn.createStatement();
				queryMsgInfo();
				conn.close();
				Thread.sleep(3600000);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	/*
	class GetHitMessages extends Thread {
		@Override
		public void run() {
			// TODO Auto-generated method stub
			try {
				while (true) {
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/social network", "root", "486579");
					stmt = (Statement) conn.createStatement();
					String sql = "select * from message_inf, weibo_heat where message_inf.id = weibo_heat.id order by hot desc limit 0, 5";
					ResultSet rs = stmt.executeQuery(sql);
					hitMessages = new Message[5];
					int index = 0;
					while (rs.next()) {
						hitMessages[index].setContent(rs.getString("content"));
						User user = new User();
						user.setNickname(rs.getString("author"));
						hitMessages[index].setAuthor(user);
						index++;
					}
					Thread.sleep(3600000);

				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	*/
}
