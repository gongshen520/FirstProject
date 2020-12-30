package com.web.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.BusinessException;
import com.model.common.DataTable;
import com.model.system.SysUserModel;
import com.service.system.SysUserService;

/**
 * 系统用户Controller
 * 
 * @author Administrator
 *
 */
@Controller
public class SysUserController {

	@Autowired
	private SysUserService sysUserService;

	@RequestMapping("/index.action")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/index");
		return mv;
	}

	@RequestMapping("/error.action")
	public ModelAndView error(String title, String msg) {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/error");
		mv.addObject("title", title);
		mv.addObject("msg", msg);
		return mv;
	}

	@RequestMapping("/login.action")
	public ModelAndView login(
			@RequestParam(value = "userName", required = false, defaultValue = "Spring") String userName,
			@RequestParam(value = "password", required = false, defaultValue = "Spring") String password) {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/main");
		return mv;
	}

	@RequestMapping("/sysUser/show.action")
	public ModelAndView querySysUser() {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/sysuser/query");
		return mv;
	}

	/**
	 * 查询用户
	 * 
	 * @return
	 */
	@RequestMapping("/sysUser/query.action")
	@ResponseBody
	public DataTable<SysUserModel> query(DataTable<SysUserModel> dataTable, HttpServletRequest request)
			throws BusinessException {
		try {
			List<SysUserModel> resultList = sysUserService.selectAllPage(dataTable);
			int total = sysUserService.selectAllTotal();
			dataTable.setData(resultList);
			dataTable.setRecordsTotal(total);
			dataTable.setRecordsFiltered(total);
			return dataTable;
		} catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
	}

}
