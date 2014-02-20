package command;

import javax.servlet.http.HttpServletRequest;

import data.BlogsDAO;

import form.BlogForm;


public class CreateBlogCommand  {
    
    private BlogForm form;
    private BlogsDAO dao;

    public void execute(HttpServletRequest req) {
        this.form=new BlogForm(req);
        if(form.isValid()){
            this.dao=new BlogsDAO();
            dao.createBlog(form);
        }
    }

    
   
}