package group.zerry.api_server.utils;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.beans.factory.annotation.Autowired;

import com.mysql.jdbc.Statement;
import com.sun.swing.internal.plaf.metal.resources.metal_zh_TW;

import group.zerry.api_server.entity.Node;

/**
 * content: 读取配置文件label_tree 通过关键词确定标签
 */

// 标签自动识别
public class LabelManageTools {

	@Autowired
	private Node rootNode;

	public LabelManageTools() {
		// TODO Auto-generated constructor stub
		try {
			init();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 标签树读入内存
	public void init() throws DocumentException {

		SAXReader reader = new SAXReader();
		File file = new File("/Users/zhuzirui/GitHub/Social-Network/api-server/src/main/resources/label_tree.xml");
		Document document = reader.read(file);
		Element root = document.getRootElement();
		List<Element> childElements = root.elements();
		rootNode = new Node();
		rootNode.value = "1";
		rootNode.next = new Node[childElements.size()];
		for (int i = 0; i < childElements.size(); i++) {
			// 递归拓展决策树
			rootNode.next[i] = new Node();
			build_tree(rootNode.next[i], childElements.get(i).elements());
		}

	}

	private void build_tree(Node node, List<Element> elements) {

		// 记住这个bug！！！ node = new Node();
		node.id = elements.get(0).getText();
		node.name = elements.get(1).getText();
		// node.value = elements.get(2).getText();
		System.out.println("id: " + node.id + "    name: " + node.name);
		if (node.id != null && node.name != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/social network?Unicode=true&characterEncoding=UTF-8", "root",
						"486579");
				Statement stmt = (Statement) conn.createStatement();
				String sql = "select * from label_inf where id=" + node.id;
				if (stmt.executeQuery(sql).next() == false) {
					sql = "insert into label_inf(id, name) values(" + node.id + ", '" + node.name + "')";
					System.out.println(sql);
				}
				stmt.execute(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block e.printStackTrace();
				e.printStackTrace();
			}
		}

		int size;
		if ((size = elements.size()) > 3) {
			node.next = new Node[size - 3];
			for (int i = 0; i < size - 3; i++) {
				node.next[i] = new Node();
				build_tree(node.next[i], elements.get(i + 3).elements());
			}
		}
	}

	/*
	 * public List<String> recommentLabel(String label) { Node keyNode = null;
	 * if ((keyNode = findNode(rootNode, label, null)) != null) { List<String>
	 * list = new ArrayList<String>(); for (int i = 0;i < keyNode.next.length;
	 * i++) { String name = keyNode.next[i].name; if (name.equals(label) ==
	 * false) list.add(name); } if (list.size() < 5 && keyNode.name != null)
	 * list.add(keyNode.name); return list; } else return null; }
	 * 
	 */

	public List<String> extractLabel(String content) {
		List<String> labels = new LinkedList<String>();
		List<String> keywords = com.hankcs.hanlp.HanLP.extractKeyword(content, 10);
		for (String keyword : keywords) {
			findNode(rootNode, keyword, labels);
		}
		return labels;
	}

	// DFS
	public void findNode(Node _node, String keyword, List<String> labels) {
		Node node = null;
		if (_node.next != null) {
			for (int i = 0; i < _node.next.length; i++) {
				node = _node.next[i];
				if (keyword.contains(node.name)) {
					if (labels != null) {
						System.out.println("keyword: " + keyword);
						labels.add(node.name); // 将标签加入到labels return _node;
						return;
					}
				} else {
					findNode(node, keyword, labels);
				}
			}
		}
		return;
	}

	/* 关键字提取demo
	public static void main(String[] args) {
		new LabelManageTools().extractLabel("哈登今天进了NBA，牛逼啊");
	}
	*/

}
