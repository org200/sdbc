package com.sdbc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdbc.pojo.TQklSysPerson;
import com.sdbc.pojo.TQklSysPersontype;
import com.sdbc.service.RoleManageService;
import com.sdbc.service.UserManageService;

//用户管理
@Controller
@RequestMapping("/sm/")
public class UserManageController {
	@Autowired
	private UserManageService ums;
	@Autowired
	private RoleManageService rms;
	//用户列表
	@RequestMapping(value = "user_manage")
	public String userManager(Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		
		List <TQklSysPerson> userlist=ums.userlist();
		m.addAttribute("userlist", userlist);
		m.addAttribute("usersearchstatus", "");
		return "/freamwork/sysmanage/usermanager";
	}
	@RequestMapping(value = "search")
	public String search(String name,String status,Model model,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		//List userlist=(List) userservice.serach(name,status);		
		//model.addAttribute("userlist",userlist);
		
		 session.setAttribute("inputname",name);
		 session.setAttribute("status",status);
		/*try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			
			Page page = userservice.page(Integer.valueOf(pageNo), 15,status,name);
			request.setAttribute("page", page);
			List<AuditInfo> userlist = page.getList();
			request.setAttribute("userlist", userlist);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		 List <TQklSysPerson> userlist=ums.userlist_query(name,status);
		model.addAttribute("userlist", userlist);
		model.addAttribute("usersearchstatus",status);
		model.addAttribute("usersearchname",name);
		return "/freamwork/user/usermanager";	
	}
	//跳转至新增用户页面
	@RequestMapping(value = "useradd")
	public String useradd(Model model){
		return "/freamwork/sysmanage/useradd";
	}
	
	//插入新用户
	@RequestMapping(value = "insertUser")
	public String insertUser(Model m,TQklSysPerson user){
		ums.insertUser(user);
		List <TQklSysPerson> userlist=ums.userlist();
		m.addAttribute("userlist", userlist);
		return "/freamwork/sysmanage/usermanager";
	}
	
	//判断新增用户名是否唯一
	@ResponseBody
	@RequestMapping(value="unique_username")
	public String unique_username(String name,Model model){
		String username = name;
		int temp = ums.unique_username(username);
		if (temp>0) {
			return "notunique";
		} else {
			return "unique";
		}
	}
	
	//删除用户
	@RequestMapping(value = "deleteUser")
	public String deleteUser(Model m,int userid,TQklSysPerson user){
		//ums.insertUser(user);
		ums.deleteUser(userid);
		List <TQklSysPerson> userlist=ums.userlist();
		m.addAttribute("userlist", userlist);
		return "/freamwork/sysmanage/usermanager";
	}
	
	//冻结用户
	@RequestMapping(value = "freezeuser")
	public String freezeuser(Model m,int userid){
		TQklSysPerson user=new TQklSysPerson();
		user.setUserid(userid);
		user.setStatus(0);
		ums.changStatus(user);
		List <TQklSysPerson> userlist=ums.userlist();
		m.addAttribute("userlist", userlist);
		return "/freamwork/sysmanage/usermanager";
	}
	//解除冻结的用户
		@RequestMapping(value = "unfreezeuser")
		public String unfreezeuser(Model m,int userid,TQklSysPerson user){
			user.setUserid(userid);
			user.setStatus(1);
			ums.changStatus(user);
			List <TQklSysPerson> userlist=ums.userlist();
			m.addAttribute("userlist", userlist);
			return "/freamwork/sysmanage/usermanager";
		}
	//重置密码
		@ResponseBody
		@RequestMapping(value="resetuser")
		public String resetuser(int userid,Model model,TQklSysPerson user){
			user.setUserid(userid);
			user.setUserpasswd("123456");
			int temp = ums.resetUser(user);
			if (temp>0) {
				return "notunique";
			} else {
				return "unique";
			}
		}
		//跳转设置角色页面
		
		@RequestMapping(value="setRole")
		public String setRole(int userid,Model m){
			TQklSysPerson user=ums.selectById(userid);
			List<TQklSysPersontype> rolelist=rms.rolelist();
			//ums.selectById(id);
			m.addAttribute("userid",user.getUserid());
			m.addAttribute("username", user.getUsername());
			m.addAttribute("rolelist", rolelist);
			return "/freamwork/sysmanage/setrole";			
		}
		
		//设置用户角色
		
		@RequestMapping(value="modifyUserRole")
		public String modifyUserRole(Model m,TQklSysPerson user){
			ums.modifyUserRole(user);
			List <TQklSysPerson> userlist=ums.userlist();
			m.addAttribute("userlist", userlist);
			return "/freamwork/sysmanage/usermanager";
		}
}
