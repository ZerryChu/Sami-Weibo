package person.zerry.sami_front.dto;

import java.io.Serializable;

import person.zerry.sami_front.entity.Message;

public class ReturnDataDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Message[] returndata;
	
	public Message[] getReturndata() {
		return returndata;
	}
	public void setReturndata(Message[] returndata) {
		this.returndata = returndata;
	}

}
