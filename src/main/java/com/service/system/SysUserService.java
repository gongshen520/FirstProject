package com.service.system;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.system.SysUserMapper;
import com.model.common.DataTable;
import com.model.system.SysUserModel;

/**
 * 系统用户Service服务
 * 
 * @author Administrator
 *
 */
@Service
public class SysUserService {

	@Resource
	private SysUserMapper sysUserMapper;

	/**
	 * 查询所有用户分页
	 * 
	 * @param dataTable
	 * @return
	 * @throws Exception
	 */
	public List<SysUserModel> selectAllPage(DataTable<?> dataTable) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("dataTable", dataTable);
		return sysUserMapper.selectAllPage(paramMap);
	}

	/**
	 * 查询所有用户分页
	 * 
	 * @return
	 * @throws Exception
	 */
	public int selectAllTotal() throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		return sysUserMapper.selectAllTotal(paramMap);
	}

}
