package group.zerry.front_server.enumtypes;

import java.util.HashMap;
import java.util.Map;

public enum LabelStatusEnum {

	CNF("LABEL_NOT_FOUND", "标签不存在"),
	OS("OPERATION_SUCCEED", "操作成功"),
	OF("OPERATION_FAIL", "操作失败"),
	SS("SUBSCRIBE SUCCEED", "订阅成功");
	
	private static Map<String, LabelStatusEnum> valueMap = new HashMap<String, LabelStatusEnum>();

	private String value;
	private String displayName;

	static {
		for (LabelStatusEnum item : LabelStatusEnum.values()) {
			valueMap.put(item.value, item);
		}
	}

	private LabelStatusEnum(String value, String displayName) {
		this.value = value;
		this.displayName = displayName;
	}

	public static LabelStatusEnum parse(String value) {
		return valueMap.get(value);
	}

	public String getValue() {
		return value;
	}

	public String getDisplayName() {
		return displayName;
	}
}

