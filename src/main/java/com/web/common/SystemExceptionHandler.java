package com.web.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.common.BusinessException;

/**
 * 系统全局异常处理器
 * 
 * @author Administrator
 *
 */
public class SystemExceptionHandler implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		ModelAndView mv = new ModelAndView("/WEB-INF/page/error");

		String title = "系统异常";
		String msg = ex.getMessage();

		if (ex instanceof BusinessException) {
			title = "业务异常";
			msg = ((BusinessException) ex).getMsg();
		}

		mv.addObject("title", title);
		mv.addObject("msg", msg);

		return mv;
	}

}
