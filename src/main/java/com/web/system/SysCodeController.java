package com.web.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.AjaxResult;
import com.common.BusinessException;
import com.model.common.DataTable;
import com.model.system.SysCodeModel;
import com.service.system.SysCodeService;

import net.sf.json.JSON;
import net.sf.json.JSONObject;

/**
 * 系统基础数据Controller
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/sysCode")
public class SysCodeController {

	@Autowired
	private SysCodeService sysCodeService;

	@RequestMapping("/show.action")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/syscode/query");
		return mv;
	}

	/**
	 * 基础数据查询
	 * 
	 * @param dataTable
	 * @param request
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/query.action")
	@ResponseBody
	public DataTable<SysCodeModel> query(DataTable<SysCodeModel> dataTable, HttpServletRequest request)
			throws BusinessException {
		try {
			List<SysCodeModel> resultList = sysCodeService.selectAllPage(dataTable);
			int total = sysCodeService.selectAllTotal();
			dataTable.setData(resultList);
			dataTable.setRecordsTotal(total);
			dataTable.setRecordsFiltered(total);
			return dataTable;
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

	/**
	 * 准备新增
	 * 
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/preAdd.action")
	public ModelAndView preAdd() throws BusinessException {
		try {
			ModelAndView mv = new ModelAndView("/WEB-INF/page/syscode/edit");
			return mv;
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

	/**
	 * 保存
	 * 
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/save.action")
	@ResponseBody
	public String save(SysCodeModel sysCodeModel) throws BusinessException {
		try {
			AjaxResult ajaxResult = new AjaxResult();

			sysCodeService.save(sysCodeModel);

			ajaxResult.setStatus(true);
			return JSONObject.fromObject(ajaxResult).toString();
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

	/**
	 * 准备修改
	 * 
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/preUpdate.action")
	public ModelAndView preUpdate(String pubCode, String pubValue) throws BusinessException {
		try {
			ModelAndView mv = new ModelAndView("/WEB-INF/page/syscode/edit");
			SysCodeModel sysCodeModel = sysCodeService.selectByPK(pubCode, pubValue);
			mv.addObject("sysCodeModel",sysCodeModel);
			return mv;
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

	/**
	 * 修改
	 * 
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/update.action")
	@ResponseBody
	public String update(SysCodeModel sysCodeModel) throws BusinessException {
		try {
			AjaxResult ajaxResult = new AjaxResult();

			sysCodeService.update(sysCodeModel);

			ajaxResult.setStatus(true);
			return JSONObject.fromObject(ajaxResult).toString();
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

	/**
	 * 删除
	 * 
	 * @return
	 * @throws BusinessException
	 */
	@RequestMapping("/delete.action")
	@ResponseBody
	public JSON delete(SysCodeModel sysCodeModel) throws BusinessException {
		try {
			AjaxResult ajaxResult = new AjaxResult();

			sysCodeService.delete(sysCodeModel);

			ajaxResult.setStatus(true);
			return JSONObject.fromObject(ajaxResult);
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}
}
