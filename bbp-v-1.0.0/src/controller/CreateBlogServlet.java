package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CreateBlogCommand;
import form.BlogForm;

public class CreateBlogServlet extends HttpServlet {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    
   private CreateBlogCommand command;
  
   
    @Override
    public void init() throws ServletException {       
        super.init();       
        
    }


 
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // super.doPost(req, resp);
        System.out.println("==============================Inside CreateBlogServlet class===========================");
        this.command=new CreateBlogCommand();
        command.execute(req);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/pages/home.jsp");
            dispatcher.forward(req,resp);
        
    }
    
    
 
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
    }

    
   
}