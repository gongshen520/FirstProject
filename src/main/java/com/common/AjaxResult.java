package com.common;

import java.util.HashMap;

/**
 * 定义请求的响应消息内容标准
 * 
 * @author Administrator
 *
 */
public class AjaxResult extends HashMap<Object, Object> {

	private static final long serialVersionUID = 1L;

	/**
	 * 状态
	 *
	 * @param status
	 */
	public void setStatus(boolean status) {
		super.put("status", status);
	}

	/**
	 * 消息
	 *
	 * @param msg
	 */
	public void setMessage(String msg) {
		super.put("msg", msg);
	}

	/**
	 * 结果
	 *
	 * @param key
	 * @param value
	 */
	public void setResult(String key, Object value) {
		super.put(key, value);
	}
}
