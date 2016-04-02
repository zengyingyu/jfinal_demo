package com.waibao;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.waibao.common.model._MappingKit;
import com.waibao.controller.AuthController;
import com.waibao.controller.StaffController;

public class AppConfig extends JFinalConfig {
	public void configConstant(Constants me) {
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
	}

	public void configRoute(Routes me) {
		me.add("/", AuthController.class);
		me.add("/staff", StaffController.class);
	}

	public void configPlugin(Plugins me) {
		Prop p = PropKit.use("system.properties");
		C3p0Plugin c3p0Plugin = new C3p0Plugin(p.get("jdbc.url"), p.get("jdbc.username"), p.get("jdbc.password"));
		me.add(c3p0Plugin);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		_MappingKit.mapping(arp);
		me.add(arp);
	}

	public void configInterceptor(Interceptors me) {
	}

	public void configHandler(Handlers me) {
	}
}