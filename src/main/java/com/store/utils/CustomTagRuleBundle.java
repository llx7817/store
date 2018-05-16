package com.store.utils;

import org.sitemesh.SiteMeshContext;
import org.sitemesh.content.ContentProperty;
import org.sitemesh.content.tagrules.TagRuleBundle;
import org.sitemesh.content.tagrules.html.ExportTagToContentRule;
import org.sitemesh.tagprocessor.State;

//扩展自定义的 tag 规则
public class CustomTagRuleBundle implements TagRuleBundle {

	public void cleanUp(State arg0, ContentProperty arg1, SiteMeshContext arg2) {
		// TODO Auto-generated method stub

	}

	public void install(State arg0, ContentProperty arg1, SiteMeshContext arg2) {
		// TODO Auto-generated method stub
		arg0.addRule("myfooter", new ExportTagToContentRule(arg2, arg1.getChild("myfooter"), false));
	}

}
