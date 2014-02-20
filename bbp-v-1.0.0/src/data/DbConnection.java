package data;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbConnection {

    private static DbConnection instance;
    private Connection connection;
    
    private  DbConnection(){
        Context context;
        try {
            context = new InitialContext();
            DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/blogDB");
            this.connection = dataSource.getConnection();
        } catch (Exception e) {
           e.printStackTrace();
        }
        
    }
    
    public static DbConnection getInstance(){
        if(instance==null){
            return new DbConnection();
        }else{
            return instance;
        }
    }
    
    public Connection getConnection(){
        return this.connection;
    }
}
