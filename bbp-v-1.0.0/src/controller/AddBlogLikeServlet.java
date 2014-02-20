package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.AddBlogLikeCommand;

public class AddBlogLikeServlet extends HttpServlet {

    
   
   
private AddBlogLikeCommand command;
 
  
   @Override
   public void init() throws ServletException {       
       super.init();       
       
   }



    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("============================Ajax call====================================");
        this.command = new AddBlogLikeCommand();
        command.execute(req);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/pages/home.jsp");
        dispatcher.forward(req, resp);
    }
   
   

   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
   }

   
}
