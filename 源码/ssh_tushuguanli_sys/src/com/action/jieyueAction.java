
package com.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TBookDAO;
import com.dao.TJieyueDAO;
import com.dao.TUserDAO;
import com.model.TJieyue;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Util;

public class jieyueAction extends ActionSupport
{
	private Integer id;
	private String userJiehao;
	private int bookId;
	private String jieyueShijian;

	private String yinghuanShijian;
	private String shifouhuan;
	private String guihuanShijian;
	private String fajin;
	
	private String beizhu;
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
    private TBookDAO bookDAO;
    private TJieyueDAO jieyueDAO;
    
    
    
    
    public String jieyueAdd()
    {
    	String sql="from TUser where userDel='no' and userJiehao='"+userJiehao+"'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		
		if(userList.size()==0)
		{
			this.setMessage("借书证号不存在。请重新录入");
			this.setPath("admin/jieyue/jieyueAdd.jsp");
			
			return "succeed";
		}
    	
    	
    	TJieyue jieyue=new TJieyue();
    	
    	//jieyue.setId(id);
    	jieyue.setUserJiehao(userJiehao);
    	jieyue.setBookId(bookId);
    	jieyue.setJieyueShijian(jieyueShijian);
    	
    	
    	jieyue.setYinghuanShijian(yinghuanShijian);
    	jieyue.setShifouhuan("否");
    	jieyue.setGuihuanShijian("");
    	jieyue.setFajin("");
    	
    	
    	jieyue.setBeizhu(beizhu);
    	
    	jieyueDAO.save(jieyue);
    	
    	this.setMessage("操作成功");
		this.setPath("jieyueMana.action");
		return "succeed";
    }
    
    
    public String jieyueMana()
    {
    	String sql="from TJieyue order by shifouhuan";
    	List jieyueList=jieyueDAO.getHibernateTemplate().find(sql);
    	for(int i=0;i<jieyueList.size();i++ )
    	{
    		TJieyue jieyue=(TJieyue)jieyueList.get(i);
    		jieyue.setBook(bookDAO.findById(jieyue.getBookId()));
    	}
    	Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jieyueList", jieyueList);
		return ActionSupport.SUCCESS;
    }
    
    
    public String huanshu()
    {
    	TJieyue jieyue=jieyueDAO.findById(id);
    	
    	String yinghuanShijian=jieyue.getYinghuanShijian();
    	String guihuanShiajian=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    	String fajin1="";
    	String beizhu="无";
    	
    	int chaotianshu=getDaySub(yinghuanShijian, guihuanShiajian);
    	System.out.println(chaotianshu);
    	
    	if(chaotianshu>0)
    	{
    		fajin1=String.valueOf(chaotianshu *1);
    	}
    	
    	jieyue.setShifouhuan("是");
    	jieyue.setGuihuanShijian(guihuanShiajian);
    	jieyue.setFajin(String.valueOf(fajin1));
    	jieyue.setBeizhu(beizhu);
    	
    	jieyueDAO.attachDirty(jieyue);
    	
    	
    	Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "还书完毕");
    	return "msg";
    }
    
    
    
    
    public String jieyueDel()
    {
    	TJieyue jieyue=jieyueDAO.findById(id);
    	jieyueDAO.delete(jieyue);
    	this.setMessage("操作成功");
		this.setPath("jieyueMana.action");
		return "succeed";
    }


    public String jieyueMine()
    {
    	Map session=ActionContext.getContext().getSession();
    	TUser user=(TUser)session.get("user");
    	
    	
    	
    	String sql="from TJieyue where userJiehao=?";
    	Object[] c={user.getUserJiehao()};
    	List jieyueList=jieyueDAO.getHibernateTemplate().find(sql,c);
    	for(int i=0;i<jieyueList.size();i++ )
    	{
    		TJieyue jieyue=(TJieyue)jieyueList.get(i);
    		jieyue.setBook(bookDAO.findById(jieyue.getBookId()));
    	}
    	Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jieyueList", jieyueList);
		return ActionSupport.SUCCESS;
    }
    
    
    public String xujie() throws ParseException
    {
    	HttpServletRequest req=ServletActionContext.getRequest();
    	int id=Integer.parseInt(req.getParameter("id"));
		int tianshu=Integer.parseInt(req.getParameter("tianshu"));
		
		TJieyue jieyue=jieyueDAO.findById(id);
		
		Date yinghuanShijian=Util.newDate(jieyue.getYinghuanShijian());
		Date xujiehoushijian=new Date(yinghuanShijian.getTime()+tianshu*24*60*60*1000);
		
		String ss=Util.splitDate(xujiehoushijian);
		
		jieyue.setYinghuanShijian(ss);
		
		jieyueDAO.attachDirty(jieyue);
    	
		req.setAttribute("msg", "成功续借");
		return "msg";
    }
    
    
    public int getDaySub(String beginDateStr,String endDateStr)
    {
        long day=0;
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");    
        java.util.Date beginDate;
        java.util.Date endDate;
        try
        {
            beginDate = format.parse(beginDateStr);
            endDate= format.parse(endDateStr);    
            day=(endDate.getTime()-beginDate.getTime())/(24*60*60*1000);    
            //System.out.println("相隔的天数="+day);   
        } catch (ParseException e)
        {
            // TODO 自动生成 catch 块
            e.printStackTrace();
        }   
        return (int)day;
    }
    
    
	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public String getUserJiehao()
	{
		return userJiehao;
	}


	public void setUserJiehao(String userJiehao)
	{
		this.userJiehao = userJiehao;
	}


	public int getBookId()
	{
		return bookId;
	}


	public void setBookId(int bookId)
	{
		this.bookId = bookId;
	}


	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public String getJieyueShijian()
	{
		return jieyueShijian;
	}


	public void setJieyueShijian(String jieyueShijian)
	{
		this.jieyueShijian = jieyueShijian;
	}


	public String getYinghuanShijian()
	{
		return yinghuanShijian;
	}


	public void setYinghuanShijian(String yinghuanShijian)
	{
		this.yinghuanShijian = yinghuanShijian;
	}


	public String getGuihuanShijian()
	{
		return guihuanShijian;
	}


	public void setGuihuanShijian(String guihuanShijian)
	{
		this.guihuanShijian = guihuanShijian;
	}


	


	public String getShifouhuan()
	{
		return shifouhuan;
	}


	public void setShifouhuan(String shifouhuan)
	{
		this.shifouhuan = shifouhuan;
	}


	public String getFajin()
	{
		return fajin;
	}


	public void setFajin(String fajin)
	{
		this.fajin = fajin;
	}


	public String getBeizhu()
	{
		return beizhu;
	}


	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
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


	public TBookDAO getBookDAO()
	{
		return bookDAO;
	}


	public void setBookDAO(TBookDAO bookDAO)
	{
		this.bookDAO = bookDAO;
	}


	public TJieyueDAO getJieyueDAO()
	{
		return jieyueDAO;
	}


	public void setJieyueDAO(TJieyueDAO jieyueDAO)
	{
		this.jieyueDAO = jieyueDAO;
	}

 }
