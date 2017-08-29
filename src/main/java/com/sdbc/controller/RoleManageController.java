package com.sdbc.controller;


import java.util.ArrayList;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.sdbc.pojo.TQklPersontypeResource;
import com.sdbc.pojo.TQklSysPersontype;

import com.sdbc.pojo.TQklSysResource;
import com.sdbc.service.MenuService;

import com.sdbc.pojo.TQklSysResource;
import com.sdbc.service.MenuService;
import com.sdbc.service.RightManageService;

import com.sdbc.service.RoleManageService;

//角色管理
@Controller
@RequestMapping("/sm/")
public class RoleManageController {

	@Autowired
	private RoleManageService rs;

	@Autowired
	private MenuService ms;

	@Autowired
	private RightManageService rms;

	@RequestMapping(value = "role_manage")
	public String roleManager(Model m,HttpSession session){
		List<TQklSysPersontype> rolelist=rs.rolelist();
		m.addAttribute("rolelist", rolelist);
		return "/freamwork/sysmanage/rolemanager";
	}
	//跳转至新增角色页面
	@RequestMapping(value = "roleadd")
	public String addrole(Model m,HttpSession session){
		return "/freamwork/sysmanage/roleadd";
	}

	//插入角色
	@RequestMapping(value = "insertRole")
	public String insertRole(TQklSysPersontype role,Model m,HttpSession session){
		
		int typeid=rs.maxid();
		role.setTypeid(typeid+100);
		rs.insertRole(role);
		List<TQklSysPersontype> rolelist=rs.rolelist();
		m.addAttribute("rolelist", rolelist);
		return "/freamwork/sysmanage/rolemanager";
	}
	//删除角色
	@RequestMapping(value = "deleteRole")
	public String deleteRole(int id,Model m,HttpSession session){		
		rs.deleteRole(id);
		List<TQklSysPersontype> rolelist=rs.rolelist();
		m.addAttribute("rolelist", rolelist);
		return "/freamwork/sysmanage/rolemanager";
	}
	

	@RequestMapping(value = "giveresource")
	public String giveresource(Integer typeid,String typename,Model model){
		/*String ip_addr="";
		 if (request.getHeader("x-forwarded-for") == null) {
			 ip_addr= request.getRemoteAddr();
			  }else{
				  ip_addr=request.getHeader("x-forwarded-for");
			  }*/
		//角色授权
		//String name=new String(typename.getBytes("ISO-8859-1"),"utf-8");
		 String name = "typename";
		List<TQklSysResource> list=ms.MenuList(0,0);
		
		model.addAttribute("typeid", typeid);
		model.addAttribute("typename", name);
		model.addAttribute("resourcelist", list);
		return "/freamwork/sysmanage/giveresource";
	}
	@ResponseBody
	@RequestMapping(value = "getcheckbox")
	public String  checkbox(String typeid){		
		List<TQklSysResource> role_resourceList = ms.MenuList(0,Integer.parseInt(typeid));  
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<role_resourceList.size();i++){
			sb.append(role_resourceList.get(i).getMid()+",");
		}
	    return sb.toString();	
	}
	@RequestMapping(value = "updateresource" ,method = RequestMethod.POST)
	public String updateresource(@RequestParam(value="string",required=false) String string ,Model model){
		String [] strs = string.split("[,]");
		String typeid = null;
		List<String> list = new ArrayList<>();
		for(int i=0;i<strs.length;i++){
		 	typeid=strs[1];
			if(i%2==0){
				list.add(strs[i]);
			}			
		}		
		int id=Integer.parseInt(typeid);
		rms.updateresource(list, id);
		List<TQklSysPersontype> rolelist=rs.rolelist();
		model.addAttribute("rolelist", rolelist);
		return "/freamwork/sysmanage/rolemanager";
		
	}

	//角色授权,将选中的角色,跳转至授权页面
	
	@RequestMapping(value = "giveResource")
	public String giveResource(int typeid,Model m,HttpSession session){
		ArrayList<String> sList= new ArrayList<String>(); 
		List<TQklSysResource> typelist=ms.midByTypeId(typeid);	
		for(int i=0;i<typelist.size();i++){
			sList.add(typelist.get(i).getResourceId());
		}
		String[] strs = new String[sList.size()];
		sList.toArray(strs);
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<strs.length;i++ ){
				sb.append(strs[i]+",");
				sb.toString();
		}
		List<TQklSysResource> resourcelist=ms.allMenulist();
		m.addAttribute("checkgroups", sb);
		m.addAttribute("resourcelist", resourcelist);
		m.addAttribute("typeid", typeid);
		return "/freamwork/sysmanage/giveright";
	}
	
	
	@RequestMapping(value = "updateResource" ,method = RequestMethod.POST)
	public String updateresource(@RequestParam(value="string",required=false) String string,int typeid,Model m){
		String [] strs = string.split("[,]");
		List<String> midlist=new ArrayList();
		for(int i=0;i<strs.length;i++){		
				midlist.add(strs[i]);								
		}				
		ms.deleteMid(typeid);
		ms.insertMidTypeid(midlist, typeid);
		List<TQklSysPersontype> rolelist=rs.rolelist();
		m.addAttribute("rolelist", rolelist);
		return "/freamwork/sysmanage/rolemanager";
	}
	
}
