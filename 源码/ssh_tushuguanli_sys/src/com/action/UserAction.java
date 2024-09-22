package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport
{
	private Integer userId;
	private String userRealname;
	private String userSex;
	private int userAge;
	
	private String userAddress;
	private String userTel;
	private String userEmail;
	private String userJiehao;
	
	private String userPw;
	private String userDel;
	
	
	private String message;
	private String path;
	private TUserDAO userDAO;
	
	
	
	public String userAdd()
	{
		String sql="from TUser where userDel='no' and userJiehao='"+userJiehao.trim()+"'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		if(userList.size()>0)
		{
			this.setMessage("借书证号已存在。请重新录入");
			this.setPath("admin/user/userAdd.jsp");
			return "succeed";
		}
		
		TUser user=new TUser();
		
		//user.setUserId(userId);
		user.setUserRealname(userRealname);
		user.setUserSex(userSex);
		user.setUserAge(userAge);
		
		
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		user.setUserJiehao(userJiehao);
		
		
		user.setUserPw(userPw);
		user.setUserDel("no");
		
		userDAO.save(user);
		
		this.setMessage("操作成功");
		this.setPath("userMana.action");
		return "succeed";
	}
	
	
	
	
	
	public String userMana()
	{
		String sql="from TUser where userDel='no'";
		List userList=userDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String userDel()
	{
		TUser user=userDAO.findById(userId);
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		this.setMessage("删除成功");
		this.setPath("userMana.action");
		return "succeed";
	}
	
	
	public String userDetail()
	{
		String sql="from TUser where userId="+userId;
		List userList=userDAO.getHibernateTemplate().find(sql);
		
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}

	public String userEditMe()
	{
		TUser user=userDAO.findById(userId);
		
		//user.setUserId(userId);
		user.setUserRealname(userRealname);
		user.setUserSex(userSex);
		user.setUserAge(userAge);
		
		
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		user.setUserJiehao(userJiehao);
		
		
		user.setUserPw(userPw);
		user.setUserDel("no");
		
		userDAO.attachDirty(user);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "修改成功，重新登陆后生效");
		return "msg";
	}



	public Integer getUserId()
	{
		return userId;
	}





	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}





	public String getUserRealname()
	{
		return userRealname;
	}





	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}





	public String getMessage()
	{
		return message;
	}





	public void setMessage(String message)
	{
		this.message = message;
	}





	public String getPath()
	{
		return path;
	}





	public void setPath(String path)
	{
		this.path = path;
	}





	public String getUserSex()
	{
		return userSex;
	}





	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}





	public int getUserAge()
	{
		return userAge;
	}





	public void setUserAge(int userAge)
	{
		this.userAge = userAge;
	}





	public String getUserAddress()
	{
		return userAddress;
	}





	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}





	public String getUserTel()
	{
		return userTel;
	}





	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}





	public String getUserEmail()
	{
		return userEmail;
	}





	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}





	public String getUserJiehao()
	{
		return userJiehao;
	}





	public void setUserJiehao(String userJiehao)
	{
		this.userJiehao = userJiehao;
	}





	public String getUserPw()
	{
		return userPw;
	}





	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}





	public String getUserDel()
	{
		return userDel;
	}





	public void setUserDel(String userDel)
	{
		this.userDel = userDel;
	}





	public TUserDAO getUserDAO()
	{
		return userDAO;
	}





	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	
}
