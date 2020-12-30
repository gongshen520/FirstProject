package com.model.common;

import java.util.List;

/**
 * 前端框架分页参数
 * 
 * @author Administrator
 * @param <T>
 *
 */
public class DataTable<T> {

	/**
	 * 返回 数据
	 */
	private List<T> data;

	/**
	 * 绘制次数
	 */
	private int draw = 1;

	/**
	 * 总记录
	 */
	private int recordsTotal;

	/**
	 * 总纪录过滤后
	 */
	private int recordsFiltered;

	/**
	 * 起始位置
	 */
	private int start = 0;

	/**
	 * 每页显示记录
	 */
	private int length = 10;

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public int getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(int recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

}
