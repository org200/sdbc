package com.sdbc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.dao.MenuDao;
import com.sdbc.pojo.TQklSysPerson;
import com.sdbc.pojo.TQklSysResource;
import com.sdbc.service.MenuService;
import com.sdbc.service.UserManageService;

@Controller
@RequestMapping(value = "/login/")
public class LoginController {
	@Resource
	private UserManageService ums;
	@Resource
	private MenuService ms;
	@RequestMapping(value = "index")
	public String login(TQklSysPerson user,HttpSession session){
		boolean flag;
		// HttpSession session=request.getSession();
		// 判断用户名和密码是否正确
		flag = ums.validateUser(user.getUsername(), user.getUserpasswd());
		if (flag == true) {
			//获取登录用户的typeid,根据typeid,得到相应的菜单项
			session.setAttribute("username", user.getUsername());
			int typeid=ums.userTypeId(user.getUsername()).getTypeid();
			List<TQklSysResource> Pmenulist=ms.MenuList(1,typeid);			
			List<TQklSysResource> Mmenulist=ms.MenuList(2,typeid);
			session.setAttribute("Pmenulist", Pmenulist);
			session.setAttribute("Mmenulist", Mmenulist);
			return "/menu/home";
		} else
			return "login";
	}
	
	@RequestMapping(value = "test")
	public String test(){
		//ms.MenuList(2);
		System.out.println("2333333333333333333333443543534");
		return "/menu/test";
	}
	@RequestMapping(value = "out")
	public String logout(){
		//ms.MmenuList(1);
		return "login";
	}
	@RequestMapping(value="indexfilter")
	public String indexfilter(){
		return "/filter";
	}
}
