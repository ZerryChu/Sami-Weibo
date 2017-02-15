package person.zerry.sami_api.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.log4j.Logger;
import org.mockito.asm.tree.IntInsnNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import person.zerry.sami_api.dao.LabelDao;
import person.zerry.sami_api.dao.UserDao;
import person.zerry.sami_api.entity.Label;
import person.zerry.sami_api.entity.User;
import person.zerry.sami_api.enumtypes.LabelStatusEnum;
import person.zerry.sami_api.service.LabelService;
import person.zerry.sami_api.utils.LabelHeat;
import person.zerry.sami_api.utils.LabelManageTools;
import person.zerry.sami_api.utils.Recommender;

@Service(value = "LabelService")
public class LabelServiceImpl implements LabelService {

	@Autowired
	private LabelHeat lh;
	
	@Autowired
	private LabelDao  labelDao;
	
	@Autowired
	private UserDao   userDao;
	
	@Autowired
	private Recommender recommender;
	
	@Autowired
	private LabelManageTools labelManageTools;
	
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

	@Override
	public Label[] showRecommendedLabels(String username) {
		// TODO Auto-generated method stub
		Label[] lbs = new Label[10];
		Map<Long, Integer> map = new HashMap<Long, Integer>();
		User user = userDao.selectUserByUsername(username);
		// 由mahout的item-based协同过滤算法推荐产生
		long[] labelsId = recommender.recommend(user.getId(), 10);
		int labels_size = labelsId.length;
		for (int i = 0;i < labels_size; i++) {
			lbs[i] = new Label();
			lbs[i].setId(labelsId[i]);
			lbs[i].setName(labelDao.searchLabelNameById(labelsId[i]));
			map.put(labelsId[i], 1);
		}
		// logger.info("recommended_label_size: " + labels_size);
		//int labels_size = 0;
		List<Long> list = lh.getLabelList();
		for(int i = 0;i < list.size(); i++) {
			if (labels_size == 10)
				break;
			long num = list.get(i);
			if (map.get(num) != null) {
				continue;
			}			
			lbs[labels_size] = new Label();
			lbs[labels_size].setId(num);
			lbs[labels_size].setName(labelDao.searchLabelNameById(num));
			labels_size++;
		}
		//for(int i = 0;i < labels_size; i++)
			//System.out.println(lbs[i].getId());
		return lbs;
	}
	
	public void addLabels(int msg_id, List<String> labels) {
		for (String label : labels) {
			int lbl_id = labelDao.searchLabelIdByName(label);
			labelDao.addLabel(msg_id, lbl_id);
		}
	}

	@Override
	public Label[] showSimilarLabels(int label_id) {
		// TODO Auto-generated method stub
		String label = labelDao.searchLabelNameById(label_id);
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
		return labels;
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
}
