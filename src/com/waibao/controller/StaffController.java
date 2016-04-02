package com.waibao.controller;

import java.util.Date;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.waibao.common.model.Staff;
import com.waibao.common.model.User;
import com.waibao.utils.DatatablePage;

public class StaffController  extends Controller {
	
	public void get(){
		String staffId = this.getPara("staffId");
		Staff staff = Staff.dao.findById(staffId);
		this.setAttr("staff", staff);
		this.renderJsp("/page/staff/add.jsp");
	}
	
	@Before(Tx.class)
	public void add(){
		User user = (User)this.getSession().getAttribute("user");
		Staff staff = this.getModel(Staff.class, "staff");
		staff.setInsertDate(new Date());
		staff.setUpdateDate(new Date());
		staff.setInsertUserId(user.getUsername());
		staff.setUpdateUserId(user.getUsername());
		staff.save();
		this.renderJson("{\"success\":true}");
	}
	
	@Before(Tx.class)
	public void edit(){
		User user = (User)this.getSession().getAttribute("user");
		Staff staff = this.getModel(Staff.class, "staff");
		staff.setUpdateDate(new Date());
		staff.setUpdateUserId(user.getUsername());
		staff.update();
	}
	
	
	public void query(){
		int start = this.getParaToInt("start");
		int length = this.getParaToInt("length");
		String name = this.getPara("name");
		String phone = this.getPara("phone");
		Page<Staff> page = Staff.dao.query((start+length)/length, length, name, phone);
		DatatablePage<Staff> dtpage = new DatatablePage<Staff>();
		dtpage.setRecordsTotal(page.getTotalRow());
		dtpage.setRecordsFiltered(page.getTotalRow());
		dtpage.setData(page.getList());
		this.renderJson(dtpage);
	}
	

}
