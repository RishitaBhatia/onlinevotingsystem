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
public class signup extends HttpServlet
{
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
    	PrintWriter pw=res.getWriter();
    	Connection conn=DBUtil.getDBConnection();
    	
    	try
    	{
    		String firstname=req.getParameter("fname");
        	String lastname=req.getParameter("lname");
        	String email=req.getParameter("email");
        	String dob=req.getParameter("dob");
        	String voterid=req.getParameter("voterid");
        	String mobile=req.getParameter("mobile");
        	String pwd=req.getParameter("password");
        	
        	PreparedStatement sp=conn.prepareStatement("insert into login values(?,?)");
        	sp.setString(1, voterid);
        	sp.setString(2, pwd);
        	int j=sp.executeUpdate();
        	
        	PreparedStatement ps = conn.prepareStatement("insert into info values(?,?,?,?,?,?,?)");
        	ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, dob);
			ps.setString(5, voterid);
			ps.setString(6, mobile);
			ps.setString(7, pwd);
			int i=ps.executeUpdate();
		
			String link="<a href=\"login.jsp\">Go to homepage</a>";
        	if(i>0)
				pw.print("You are successfully registered... "+link);
        	
        }
    	catch (SQLException e) {
			System.out.println("Exception in signup class");
			e.printStackTrace();
		}
    }
}
