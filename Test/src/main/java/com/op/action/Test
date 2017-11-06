package com.resetComputers.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.resetComputers.BD.LoginBD;
import com.resetComputers.BD.UserProfileBD;
import com.resetComputers.domain.SystemUsers;
import com.resetComputers.util.BaseDispatchAction;
import com.resetComputers.util.EncryptService;

public class LoginAction extends BaseDispatchAction{
	private LoginBD loginBD;
	private UserProfileBD userProfileBD;
	
	public UserProfileBD getUserProfileBD() {
		return userProfileBD;
	}
	public void setUserProfileBD(UserProfileBD userProfileBD) {
		this.userProfileBD = userProfileBD;
	}
	public LoginBD getLoginBD() {
		return loginBD;
	}
	public void setLoginBD(LoginBD loginBD) {
		this.loginBD = loginBD;
	}

	/*call dispatch default method */
	@Override
	protected ActionForward unspecified(ActionMapping mapping, ActionForm form,
						HttpServletRequest request, HttpServletResponse response)throws Exception {
		/*check whether session already created or not */
		if(request.getSession(false).getAttribute("firstName") != null ){	
			DynaActionForm dynaActionForm = getNavPath(request.getRequestURI(),form);
			return mapping.getInputForward();

		}else{
			/*check parameters null or not*/
			if(request.getParameter("username") == null || request.getParameter("password") == null)
				return mapping.findForward("loginFail");
			
			String username = request.getParameter("username");
			String psw = request.getParameter("password");
			
			/*Start user authentication*/
			if(getLoginBD().validateUser(username,EncryptService.encryptPassword(psw))){
