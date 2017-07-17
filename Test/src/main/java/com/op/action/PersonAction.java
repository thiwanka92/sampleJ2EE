package com.op.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.op.dao.PersonDAO;
import com.op.domain.Person;

public class PersonAction extends DispatchAction {
	
	@Override
	protected ActionForward unspecified(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception {
		return super.unspecified(mapping, form, request, response);
	}
	
	public ActionForward create(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception {
		try {
			String name		= request.getParameter("name");
			String city		= request.getParameter("city");
			int age			= request.getParameter("age") != null && !request.getParameter("age").equals("")? Integer.parseInt(request.getParameter("age")) : 0;
			
			Person person = new Person();
			person.setName(name);
			person.setAge(age);
			person.setCity(city);
		
			new PersonDAO().createPerson(person);
			System.out.println("Person Saved..");
			return mapping.findForward("success");
		} catch (Exception e) {
			System.err.println(e.getLocalizedMessage());
			return mapping.findForward("fail");
		}
	}
}
