package com.dao.system;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.model.system.SysCodeModel;

/**
 * 系统基础数据Mapper
 * 
 * @author Administrator
 *
 */
@Repository
public interface SysCodeMapper {

	/**
	 * 查询所有基础数据分页
	 * 
	 * @param paramMap
	 * @return
	 */
	List<SysCodeModel> selectAllPage(Map<String, Object> paramMap);

	/**
	 * 查询所有基础数据分页
	 * 
	 * @param paramMap
	 * @return
	 */
	int selectAllTotal(Map<String, Object> paramMap);

	/**
	 * 保存
	 * 
	 * @param sysCodeModel
	 */
	void save(SysCodeModel sysCodeModel);

	/**
	 * 根据主键查询
	 * 
	 * @param paramMap
	 * @return
	 */
	SysCodeModel selectByPK(Map<String, Object> paramMap);

	/**
	 * 更新
	 * 
	 * @param sysCodeModel
	 */
	void update(SysCodeModel sysCodeModel);

	/**
	 * 删除
	 * 
	 * @param sysCodeModel
	 */
	void delete(Map<String, Object> paramMap);
}
