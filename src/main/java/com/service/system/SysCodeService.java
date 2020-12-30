package com.service.system;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.system.SysCodeMapper;
import com.model.common.DataTable;
import com.model.system.SysCodeModel;

/**
 * 系统基础数据Service服务
 * 
 * @author Administrator
 *
 */
@Service
public class SysCodeService {

	@Resource
	private SysCodeMapper sysCodeMapper;

	/**
	 * 查询所有基础数据分页
	 * 
	 * @param dataTable
	 * @return
	 * @throws Exception
	 */
	public List<SysCodeModel> selectAllPage(DataTable<?> dataTable) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("dataTable", dataTable);
		return sysCodeMapper.selectAllPage(paramMap);
	}

	/**
	 * 查询所有基础数据分页
	 * 
	 * @return
	 * @throws Exception
	 */
	public int selectAllTotal() throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		return sysCodeMapper.selectAllTotal(paramMap);
	}

	/**
	 * 保存
	 * 
	 * @param sysCodeModel
	 * @throws Exception
	 */
	public void save(SysCodeModel sysCodeModel) throws Exception {
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 日期格式化;
		sysCodeModel.setOperateCode("admin");
		sysCodeModel.setOperateName("系统管理员");
		sysCodeModel.setOperateDate(dateFormat.format(date));
		sysCodeModel.setUpdateCode("admin");
		sysCodeModel.setUpdateName("系统管理员");
		sysCodeModel.setUpdateDate(dateFormat.format(date));
		sysCodeMapper.save(sysCodeModel);
	}

	/**
	 * 更新
	 * 
	 * @param sysCodeModel
	 * @throws Exception
	 */
	public SysCodeModel selectByPK(String pubCode, String pubValue) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("pubCode", pubCode);
		paramMap.put("pubValue", pubValue);
		return sysCodeMapper.selectByPK(paramMap);
	}

	/**
	 * 更新
	 * 
	 * @param sysCodeModel
	 * @throws Exception
	 */
	public void update(SysCodeModel sysCodeModel) throws Exception {
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 日期格式化;
		sysCodeModel.setUpdateCode("admin");
		sysCodeModel.setUpdateName("系统管理员");
		sysCodeModel.setUpdateDate(dateFormat.format(date));
		sysCodeMapper.update(sysCodeModel);
	}

	/**
	 * 删除
	 * 
	 * @param sysCodeModel
	 * @throws Exception
	 */
	public void delete(SysCodeModel sysCodeModel) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("pubCode", sysCodeModel.getPubCode());
		paramMap.put("pubValue", sysCodeModel.getPubValue());
		sysCodeMapper.delete(paramMap);
	}

}
