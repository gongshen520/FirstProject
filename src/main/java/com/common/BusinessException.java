package com.common;

/**
 * 系统公共业务异常处理
 * 
 * @author Administrator
 *
 */
public class BusinessException extends Exception {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 错误信息
	 */
	private String msg;

	/**
	 * 构造函数
	 * @param msg
	 */
	public BusinessException(String msg) {
		super();
		this.msg = msg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
