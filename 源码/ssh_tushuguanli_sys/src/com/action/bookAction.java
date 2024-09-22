package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TBookDAO;
import com.dao.TCatelogDAO;
import com.dao.TJieyueDAO;
import com.dao.TLeibieDAO;
import com.model.TBook;
import com.opensymphony.xwork2.ActionSupport;

public class bookAction extends ActionSupport
{
	private Integer bookId;
	private String bookName;
	private String bookZuozhe;
	private String bookChubanshe;

	private String bookChubanriqi;
	private String bookIsbm;
	private String bookPrice;
	private int catelogId;
	
	private int leibieId;
	private String del;
    
    private TBookDAO bookDAO;
    private TCatelogDAO catelogDAO;
    private TLeibieDAO leibieDAO;
    private TJieyueDAO jieyueDAO;
	
	
	
	public String bookAdd()
	{
		TBook book=new TBook();
		
		book.setBookId(bookId);
		book.setBookName(bookName);
		book.setBookZuozhe(bookZuozhe);
		book.setBookChubanshe(bookChubanshe);
		
		book.setBookChubanriqi(bookChubanriqi);
		book.setBookIsbm(bookIsbm);
		book.setBookPrice(bookPrice);
		book.setCatelogId(catelogId);
		book.setLeibieId(leibieId);
		
		book.setDel("no");
		
		bookDAO.save(book);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	public String bookMana()
	{
		String sql="from TBook where del='no' order by catelogId";
		List bookList=bookDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<bookList.size();i++)
		{
			TBook book=(TBook)bookList.get(i);
			book.setLeibie(leibieDAO.findById(book.getLeibieId()));		
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("bookList", bookList);
		return ActionSupport.SUCCESS;
	}
	
	public String bookDel()
	{
		TBook book=bookDAO.findById(bookId);
		book.setDel("yes");
		bookDAO.attachDirty(book);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	public String bookSelect()
	{
		String sql="from TBook where del='no' order by catelogId";
		List bookList=bookDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<bookList.size();i++)
		{
			TBook book=(TBook)bookList.get(i);
			book.setLeibie(leibieDAO.findById(book.getLeibieId()));		
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("bookList", bookList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String bookRes()
	{
		StringBuffer  sql=new StringBuffer("from TBook where del='no'");
		if(catelogId !=0)
		{
			sql.append(" and catelogId="+catelogId);
		}
		
		sql.append(" and bookName like '%"+bookName+"%'");
		sql.append(" and bookZuozhe like '%"+bookZuozhe+"%'");
		sql.append(" and bookChubanshe like '%"+bookChubanshe+"%'");
		sql.append(" and bookIsbm like '%"+bookIsbm+"%'");
		
		
		List bookList=bookDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<bookList.size();i++)
		{
			TBook book=(TBook)bookList.get(i);
			book.setLeibie(leibieDAO.findById(book.getLeibieId()));		
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("bookList", bookList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String tongjiRes()
	{
		StringBuffer  sql=new StringBuffer("from TBook where del='no'");
		sql.append(" and bookName like '%"+bookName+"%'");
		List bookList=bookDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<bookList.size();i++)
		{
			TBook book=(TBook)bookList.get(i);
			String sql1="from TJieyue where bookId="+book.getBookId();
	    	List jieyueList=jieyueDAO.getHibernateTemplate().find(sql1);
	    	book.setJieyuecishu(jieyueList.size());
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("bookList", bookList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String getBookChubanriqi()
	{
		return bookChubanriqi;
	}
	public void setBookChubanriqi(String bookChubanriqi)
	{
		this.bookChubanriqi = bookChubanriqi;
	}
	public String getBookChubanshe()
	{
		return bookChubanshe;
	}
	public void setBookChubanshe(String bookChubanshe)
	{
		this.bookChubanshe = bookChubanshe;
	}
	public TBookDAO getBookDAO()
	{
		return bookDAO;
	}
	public void setBookDAO(TBookDAO bookDAO)
	{
		this.bookDAO = bookDAO;
	}
	
	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}


	public int getLeibieId() {
		return leibieId;
	}


	public TJieyueDAO getJieyueDAO() {
		return jieyueDAO;
	}


	public void setJieyueDAO(TJieyueDAO jieyueDAO) {
		this.jieyueDAO = jieyueDAO;
	}


	public void setLeibieId(int leibieId) {
		this.leibieId = leibieId;
	}


	public String getDel() {
		return del;
	}


	public void setDel(String del) {
		this.del = del;
	}


	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}


	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}


	public int getBookId()
	{
		return bookId;
	}
	public void setBookId(int bookId)
	{
		this.bookId = bookId;
	}
	public String getBookIsbm()
	{
		return bookIsbm;
	}
	public void setBookIsbm(String bookIsbm)
	{
		this.bookIsbm = bookIsbm;
	}
	
	public String getBookName()
	{
		return bookName;
	}
	public void setBookName(String bookName)
	{
		this.bookName = bookName;
	}
	public String getBookPrice()
	{
		return bookPrice;
	}
	public void setBookPrice(String bookPrice)
	{
		this.bookPrice = bookPrice;
	}
	
	public String getBookZuozhe()
	{
		return bookZuozhe;
	}
	public void setBookZuozhe(String bookZuozhe)
	{
		this.bookZuozhe = bookZuozhe;
	}
	public int getCatelogId()
	{
		return catelogId;
	}
	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}


	public TLeibieDAO getLeibieDAO() {
		return leibieDAO;
	}


	public void setLeibieDAO(TLeibieDAO leibieDAO) {
		this.leibieDAO = leibieDAO;
	}
	
	
}
