package form;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import util.BlogUtil;
import util.CommonUtil;

public class BlogForm extends Form {
    private String content;
    private String author;
    private String title;
    private Date date;
    
    
    public BlogForm(HttpServletRequest req) {
        if(req.getParameter(BlogUtil.BLOG_CONTENT_KEY)!=null){
            this.content=req.getParameter(BlogUtil.BLOG_CONTENT_KEY);
        }
        if(req.getParameter(BlogUtil.BLOG_DATE_KEY)!=null){
            this.date= CommonUtil.createDateFromString(req.getParameter(BlogUtil.BLOG_DATE_KEY));
        }
        if(req.getParameter(BlogUtil.BLOG_AUTHOR_KEY)!=null){
            this.author=req.getParameter(BlogUtil.BLOG_AUTHOR_KEY);
        }
    }
    
    
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    
    
    
    public boolean isValid(){
        boolean valid=true;
        
        return valid;
    }
    

}
