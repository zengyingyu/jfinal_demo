package com.waibao.controller;

import com.jfinal.core.Controller;
import com.waibao.common.model.User;

public class AuthController extends Controller {
	public void index(){
		this.renderJsp("/index.jsp");
	}
	
	public void login() {
		String username=this.getPara("username");
		String pwd = this.getPara("pwd");
		User user = User.dao.findById(username);
		if(user!=null&&user.getPwd().equals(pwd)){
			this.getSession().setAttribute("user", user);
//			this.renderJsp("/page/layout.jsp");
			this.redirect("/page/layout.jsp");
		}else{
			this.setAttr("error", "用户名或密码错误");
			this.renderJsp("/index.jsp");
		}			
	}
	
	public void logout(){
		this.getSession().removeAttribute("user");
		this.getSession().invalidate();
		this.renderJsp("/index.jsp");
	}
}
