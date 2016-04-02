package com.waibao.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseProduct<M extends BaseProduct<M>> extends Model<M> implements IBean {

	public void setProductId(java.lang.Integer productId) {
		set("productId", productId);
	}

	public java.lang.Integer getProductId() {
		return get("productId");
	}

	public void setProductName(java.lang.String productName) {
		set("productName", productName);
	}

	public java.lang.String getProductName() {
		return get("productName");
	}

	public void setProductPrice(java.lang.Float productPrice) {
		set("productPrice", productPrice);
	}

	public java.lang.Float getProductPrice() {
		return get("productPrice");
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
