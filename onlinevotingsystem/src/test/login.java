package test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.*;
public class login extends HttpServlet 
{
   protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
   {
	   String voterid=req.getParameter("voterid");
	   String pwd=req.getParameter("password");
	   System.out.print("In Login Class ");
	   System.out.println(voterid+" "+pwd);
	   
	   Connection conn=DBUtil.getDBConnection();
	   PrintWriter pw=res.getWriter();
	   try
	   {
		   PreparedStatement sp=conn.prepareStatement("select * from temp_voter where voterID = ?");
		   sp.setString(1,voterid);
		   ResultSet sr=sp.executeQuery();
		   if(sr.next())
		   {
		       String v1=sr.getString("voterID");
		       if(v1.equals(voterid))
		       {
		    	   String link="<a href=\"login.jsp\">Go to homepage</a>";
				   pw.print("You vote has already been registered... "+link);
		       }
		   }
		   
		   PreparedStatement ps=conn.prepareStatement("select * from login where voterID = ?");
		   ps.setString(1,voterid);
		   ResultSet rs=ps.executeQuery();
		   if(rs.next())
		   {
			   String v=rs.getString("voterID");
			   String p=rs.getString("password");
			   if(v.equals(voterid))
			   {
					if(p.equals(pwd)) 
					{
						System.out.println("Data found");
						PreparedStatement pss=conn.prepareStatement("insert into temp_voter values(?)");
			        	pss.setString(1, voterid);
			        	int k=pss.executeUpdate();
						RequestDispatcher rd = req.getRequestDispatcher("vote.jsp");
						rd.forward(req, res);
						return;
					}
			   }
		   }
			else
			{
				System.out.println("No data found");
				pw.print("No data found. Please register yourself");
				RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");	
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

