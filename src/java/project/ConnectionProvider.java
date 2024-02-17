
package project;
import java.sql.*;


public class ConnectionProvider{
    public static Connection getCon(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","root");
            return con; 
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print(e);
            return null;
        }
        
        
        
    }
}
    
