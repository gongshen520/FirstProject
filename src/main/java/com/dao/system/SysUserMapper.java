package com.dao.system;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.model.system.SysUserModel;

/**
 * 系统用户Mapper
 * 
 * @author Administrator
 *
 */
@Repository
public interface SysUserMapper {

	/**
	 * 登录验证
	 * 
	 * @param sysUserModel
	 * @return
	 */
	int checkLogin(SysUserModel sysUserModel);

	/**
	 * 查询所有用户分页
	 * 
	 * @param paramMap
	 * @return
	 */
	List<SysUserModel> selectAllPage(Map<String, Object> paramMap);

	/**
	 * 查询所有用户分页
	 * 
	 * @param paramMap
	 * @return
	 */
	int selectAllTotal(Map<String, Object> paramMap);
}
