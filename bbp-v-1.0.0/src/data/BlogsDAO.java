package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import util.CommonUtil;

import bean.BlogBean;

import form.BlogForm;
import form.Form;

public class BlogsDAO extends GenericDAO {
    
    
    
    public boolean createBlog(Form form){
       boolean createSucceeded=false;
       BlogForm blogForm = (BlogForm)form;
       Connection con= DbConnection.getInstance().getConnection();
       try {
        PreparedStatement prepStat=con.prepareStatement("INSERT INTO BLOG(content, author, postdate) values (?,?,?)");
        prepStat.setString(1, blogForm.getContent());
        prepStat.setString(2, blogForm.getAuthor());
        prepStat.setDate(3, blogForm.getDate());
        createSucceeded = prepStat.execute();
    } catch (SQLException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }finally{
        try {
            if(con.isClosed()){                
                    con.close();                
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
       
       
       return createSucceeded;
       
    }
    
    public static List<BlogBean> getAllBlogs(){
        List<BlogBean> blogs=new ArrayList<BlogBean>();
        
        Connection con= DbConnection.getInstance().getConnection();
        
        PreparedStatement prepStat;
        try {
            prepStat = con.prepareStatement("SELECT * FROM BLOG");
            ResultSet rs = prepStat.executeQuery();
            
            while(rs.next()){
                BlogBean blog = new BlogBean();
                blog.setContent(rs.getString("content"));
                blog.setAuthor(rs.getString("author"));
                blog.setDate(rs.getDate("postDate"));
                blog.setTitle(rs.getString("title"));
                blog.setLikeCount(rs.getInt("likeCount"));
                blog.setShareCount(rs.getInt("shareCount"));
                blog.setCommentCount(rs.getInt("commentCount"));
               blogs.add(blog);
            }
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        
        
        
        return blogs;
        
    }
    
    public List<String> getNextNblogs(int startIndex, int n){
        List<String> blogs=new ArrayList<String>();
        
        
        return blogs;
        
    }

    public void addLike(int blogId) {
        Connection con= DbConnection.getInstance().getConnection();
        try {
         PreparedStatement prepStat=con.prepareStatement("UPDATE BLOG SET LIKECOUNT=LIKECOUNT + ? WHERE ID=?");
         prepStat.setInt(1, 1);
         prepStat.setInt(2, blogId);
         prepStat.executeUpdate();
     } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
     }finally{
         try {
             if(con.isClosed()){                
                     con.close();                
             }
         } catch (Exception e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
     }
       
        
    }
    
    

}
