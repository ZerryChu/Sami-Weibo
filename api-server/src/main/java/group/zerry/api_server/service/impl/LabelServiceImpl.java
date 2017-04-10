package group.zerry.api_server.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.log4j.Logger;
import org.mockito.asm.tree.IntInsnNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableLoadTimeWeaving;
import org.springframework.stereotype.Service;

import group.zerry.api_server.dao.LabelDao;
import group.zerry.api_server.dao.LabelHeatDao;
import group.zerry.api_server.dao.UserDao;
import group.zerry.api_server.entity.Label;
import group.zerry.api_server.entity.User;
import group.zerry.api_server.enumtypes.LabelStatusEnum;
import group.zerry.api_server.service.LabelService;
import group.zerry.api_server.utils.LabelHeat;
// import group.zerry.api_server.utils.LabelManageTools;
import group.zerry.api_server.utils.Recommender;

@Service(value = "LabelService")
public class LabelServiceImpl implements LabelService {

	@Autowired
	private LabelHeat lh;
	
	@Autowired
	private LabelDao  labelDao;
	
	@Autowired
	private LabelHeatDao labelHeatDao;
	
	@Autowired
	private UserDao   userDao;
	
	@Autowired
	private Recommender recommender;
	
	// @Autowired
	// private LabelManageTools labelManageTools;
	
	@Autowired
	private static Logger logger = Logger.getLogger(LabelServiceImpl.class); 
	
	@Override
	public Label[] showHeatedLabel() {
		// TODO Auto-generated method stub
		Label[] labels = new Label[4];
		Random random = new Random();
		List<Long> _list = lh.getLabelList();
		List<Long> list = new ArrayList<Long>();
		for(int i = 0;i < _list.size(); i++)
			list.add(_list.get(i));
		int index = random.nextInt(list.size());
		long id1 = list.get(index);
		list.remove(index);
		labels[0] = new Label(labelDao.searchLabelNameById(id1), lh.getHeatByID(id1));
		labels[0].setId(id1);
		index = random.nextInt(list.size());
		long id2 = list.get(index);
		list.remove(index);
		labels[1] = new Label(labelDao.searchLabelNameById(id2), lh.getHeatByID(id2));
		labels[1].setId(id2);
		index = random.nextInt(list.size());
		long id3 = list.get(index);
		list.remove(index);
		labels[2] = new Label(labelDao.searchLabelNameById(id3), lh.getHeatByID(id3));
		labels[2].setId(id3);
		index = random.nextInt(list.size());
		long id4 = list.get(index);
		list.remove(index);
		labels[3] = new Label(labelDao.searchLabelNameById(id4), lh.getHeatByID(id4));
		labels[3].setId(id4);
		return labels;
	}

	
	// 修改。。。标签不限制数目，增加搜索功能。（删除常用标签功能） 1: 常用标签 2：热门标签 3：推荐标签 3者用不同颜色底色
	@Override
	public Label[] showRecommendedLabels(String username) {
		// TODO Auto-generated method stub
		Label[] lbs = new Label[20];
		Map<Long, Integer> map = new HashMap<Long, Integer>();
		User user = userDao.selectUserByUsername(username);
		int lbs_index = 0;
		Label[] labellist1 = labelDao.selectHotLabelsByUserId(user.getId());
		for (;lbs_index < labellist1.length; lbs_index++) {
			map.put(labellist1[lbs_index].getId(), 1);

			lbs[lbs_index] = new Label();
			lbs[lbs_index].setId(labellist1[lbs_index].getId());
			lbs[lbs_index].setName(labellist1[lbs_index].getName());
		}
				
		List<Long> labelList2 = lh.getLabelList();
		for(int i = 0;i < labelList2.size(); i++) {
			long num = labelList2.get(i);

			if (map.get(num) != null) {
				continue;
			}			
			map.put(num, 1);

			lbs[lbs_index] = new Label();
			lbs[lbs_index].setId(num);
			lbs[lbs_index].setName(labelDao.searchLabelNameById(num));
			lbs_index++;

		}
		
		// 由mahout的item-based协同过滤算法推荐产生
		long[] labelList3 = recommender.recommend(user.getId(), 5);
		System.out.println("推荐标签数目： " + labelList3.length);
		for (int i = 0;i < labelList3.length; i++) {
			if (map.get(labelList3[i]) != null) {
				continue;
			}
			
			lbs[lbs_index] = new Label();
			lbs[lbs_index].setId(labelList3[i]);
			lbs[lbs_index].setName(labelDao.searchLabelNameById(labelList3[i]));
		}
		
		return lbs;
	}
	
	public void addLabels(int user_id, int msg_id, List<String> labels) {
		for (String label : labels) {
			int lbl_id = labelDao.searchLabelIdByName(label);
			labelDao.addLabel(msg_id, lbl_id);
			labelHeatDao.updateLabelHeatById(user_id, lbl_id, 3);
		}
	}

	// 改进
	@Override
	public Label[] showSimilarLabels(int label_id) {
		// TODO Auto-generated method stub
		/*String label = labelDao.searchLabelNameById(label_id);
		List<String> labelNameList = labelManageTools.recommentLabel(label);
		if (labelNameList == null)
			return null;
		String[] label_name = labelNameList.toArray(new String[]{});
		Label[] labels = new Label[label_name.length];
		for (int i = 0;i < label_name.length; i++) {
			labels[i] = new Label();
			labels[i].setName(label_name[i]);
			labels[i].setId(labelDao.searchLabelIdByName(label_name[i]));
		}
		return labels;*/
		return null;
	}

	@Override
	public int showLabelIdByName(String label_name) {
		// TODO Auto-generated method stub
		return labelDao.searchLabelIdByName(label_name);
	}

	
	@Override
	public LabelStatusEnum subscribeLabel(String username, int label_id) {
		// TODO Auto-generated method stub
		try {
			labelDao.addUsrLblRelation(username, label_id);
		} catch(Exception e) {
			e.printStackTrace();
			return LabelStatusEnum.OF;
		}
		return LabelStatusEnum.SS;
	}

	@Override
	public String showLabelNameById(int id) {
		// TODO Auto-generated method stub
		return labelDao.showLabelNameById(id);
	}

	@Override
	public Label[] showRelatedLabels(int label_id) {
		// TODO Auto-generated method stub
		return labelDao.showRelatedLabels(label_id);
	}

	@Override
	public group.zerry.api_server.entity.LabelHeat[] showLabelHeat(String username) {
		// TODO Auto-generated method stub
		int user_id = userDao.selectUserByUsername(username).getId();
		return labelHeatDao.selectLabelHeat(user_id);
	}

	@Override
	public int showTotalLabelHeat(String username) {
		// TODO Auto-generated method stub
		int user_id = userDao.selectUserByUsername(username).getId();
		return labelHeatDao.selectTotalLabelHeat(user_id);
	}

	@Override
	public group.zerry.api_server.entity.LabelHeat getUserLabelHeat(int user_id, int label_id) {
		// TODO Auto-generated method stub
		return labelHeatDao.selectUserLabelHeat(user_id, label_id);
	}

}
