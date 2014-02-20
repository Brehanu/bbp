package command;

import javax.servlet.http.HttpServletRequest;
import data.BlogsDAO;

public class AddBlogLikeCommand {
    
    private BlogsDAO dao;
    
    public void execute(HttpServletRequest req) {
      
           int blogId=Integer.parseInt(req.getParameter("blogId"));
            this.dao=new BlogsDAO();
            dao.addLike(blogId);
       
    }

}
