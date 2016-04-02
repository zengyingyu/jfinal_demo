package com.waibao.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseStaff<M extends BaseStaff<M>> extends Model<M> implements IBean {

	public void setStaffId(java.lang.String staffId) {
		set("staffId", staffId);
	}

	public java.lang.String getStaffId() {
		return get("staffId");
	}

	public void setStaffPwd(java.lang.String staffPwd) {
		set("staffPwd", staffPwd);
	}

	public java.lang.String getStaffPwd() {
		return get("staffPwd");
	}

	public void setStaffName(java.lang.String staffName) {
		set("staffName", staffName);
	}

	public java.lang.String getStaffName() {
		return get("staffName");
	}

	public void setStaffSex(java.lang.Integer staffSex) {
		set("staffSex", staffSex);
	}

	public java.lang.Integer getStaffSex() {
		return get("staffSex");
	}

	public void setStaffAge(java.lang.Integer staffAge) {
		set("staffAge", staffAge);
	}

	public java.lang.Integer getStaffAge() {
		return get("staffAge");
	}

	public void setStaffDepartment(java.lang.String staffDepartment) {
		set("staffDepartment", staffDepartment);
	}

	public java.lang.String getStaffDepartment() {
		return get("staffDepartment");
	}

	public void setStaffPhone(java.lang.String staffPhone) {
		set("staffPhone", staffPhone);
	}

	public java.lang.String getStaffPhone() {
		return get("staffPhone");
	}

	public void setStaffNote(java.lang.String staffNote) {
		set("staffNote", staffNote);
	}

	public java.lang.String getStaffNote() {
		return get("staffNote");
	}

	public void setStaffGrade(java.lang.Integer staffGrade) {
		set("staffGrade", staffGrade);
	}

	public java.lang.Integer getStaffGrade() {
		return get("staffGrade");
	}

	public void setInsertDate(java.util.Date insertDate) {
		set("insertDate", insertDate);
	}

	public java.util.Date getInsertDate() {
		return get("insertDate");
	}

	public void setInsertUserId(java.lang.String insertUserId) {
		set("insertUserId", insertUserId);
	}

	public java.lang.String getInsertUserId() {
		return get("insertUserId");
	}

	public void setUpdateDate(java.util.Date updateDate) {
		set("updateDate", updateDate);
	}

	public java.util.Date getUpdateDate() {
		return get("updateDate");
	}

	public void setUpdateUserId(java.lang.String updateUserId) {
		set("updateUserId", updateUserId);
	}

	public java.lang.String getUpdateUserId() {
		return get("updateUserId");
	}

	public void setVersion(java.lang.String version) {
		set("version", version);
	}

	public java.lang.String getVersion() {
		return get("version");
	}

}