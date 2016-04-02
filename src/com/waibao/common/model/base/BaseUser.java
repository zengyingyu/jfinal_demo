package com.waibao.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseUser<M extends BaseUser<M>> extends Model<M> implements IBean {

	public void setUsername(java.lang.String username) {
		set("username", username);
	}

	public java.lang.String getUsername() {
		return get("username");
	}

	public void setPwd(java.lang.String pwd) {
		set("pwd", pwd);
	}

	public java.lang.String getPwd() {
		return get("pwd");
	}

	public void setEmail(java.lang.String email) {
		set("email", email);
	}

	public java.lang.String getEmail() {
		return get("email");
	}

	public void setTelephone(java.lang.String telephone) {
		set("telephone", telephone);
	}

	public java.lang.String getTelephone() {
		return get("telephone");
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

}