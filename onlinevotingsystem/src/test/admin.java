package test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.*;
public class admin extends HttpServlet
{
	   protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	   {
		   String username=req.getParameter("username");
		   String pwd=req.getParameter("password");
		   System.out.print("In Admin Class ");
		   System.out.println(username+" "+pwd);
		   
		   Connection conn=DBUtil.getDBConnection();
		   PrintWriter pw=res.getWriter();
	       try
	       {
	    	   PreparedStatement ps=conn.prepareStatement("select * from admin where username = ?");
			   ps.setString(1,username);
			   ResultSet rs=ps.executeQuery();
			   if(rs.next())
			   {
				   String u=rs.getString("username");
				   String p=rs.getString("password");
				   if(u.equals(username))
				   {
						if(p.equals(pwd)) 
						{
							System.out.println("Data found");
							RequestDispatcher rd = req.getRequestDispatcher("admin1.jsp");
							rd.forward(req, res);
							return;
						}
				   }
			   }
			   else
				{
					System.out.println("No data found");
					pw.print("Username or password is incorrect");
					RequestDispatcher rd = req.getRequestDispatcher("admin.jsp");	
					rd.include(req, res);
				}
	       }
	       catch(SQLException e)
	       {
	    	   System.out.println("Exception in Login class");
			   e.printStackTrace();
	       }
	   }
}





