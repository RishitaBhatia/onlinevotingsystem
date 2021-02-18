package test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class DBUtil 
{
	static Connection conn=null;
    static //put in static block so that connection gets established only once
    {
    	try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","RISHITA","honey");
			
			if(!conn.isClosed())
			{
				System.out.println("Connection established");
			}
		}	
    	catch(ClassNotFoundException | SQLException e)
    	{
    		System.out.println("Error in DBUtilFile");
    		e.printStackTrace();
    	}
    }
    public static Connection getDBConnection()
    {
    	return conn; 
    }
}
