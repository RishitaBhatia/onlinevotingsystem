package test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class vote extends HttpServlet
{
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
    	PrintWriter pw=res.getWriter();
    	Connection conn=DBUtil.getDBConnection();
    	
    	try
    	{
    		String voterid=req.getParameter("voterid");
    		String vote=req.getParameter("vote");
    		PreparedStatement sp=conn.prepareStatement("insert into vote values(?,?)");
    		sp.setString(1, voterid);
        	sp.setString(2, vote);
        	int j=sp.executeUpdate();
        	
        	String link="<a href=\"login.jsp\">Go to homepage</a>";
        	if(j>0)
				pw.print("Your vote is successfully registered... "+link);
    	}
    	catch(SQLException e)
    	{
    		System.out.println("Exception in vote class");
			e.printStackTrace();
    	}
    	
    }
}


