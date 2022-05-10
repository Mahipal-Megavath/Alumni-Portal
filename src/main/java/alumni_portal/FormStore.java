package alumni_portal;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Statement;


@SuppressWarnings("serial")
@WebServlet("/form")
public class FormStore extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String a,b,c,d,e,f,g=null,h,i,j,k,m,n,o,p;
		int l;
		a = request.getParameter("U_id");
		b = request.getParameter("U_pswd");
		c = request.getParameter("f_name");
		d = request.getParameter("l_name");
		e = request.getParameter("email");
		f = request.getParameter("Mob_num");
		if(request.getParameter("gender").matches("Male"))
			g="male";
		else if(request.getParameter("gender").matches("Female"))
			g="female";
		else if(request.getParameter("gender").matches("Other"))
			g="others";
		h = "11092001";
		i = request.getParameter("y");
		j = request.getParameter("company");
		k = request.getParameter("ds");
		l = Integer.parseInt(request.getParameter("pk"));
		m = request.getParameter("lk");
		n = request.getParameter("tr");
		o = request.getParameter("ins");
		p = request.getParameter("fb");
		
		
		/* try {
			System.out.println("see");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
			java.sql.Statement st;
			st = con.createStatement();
			/* st.setString(2,b);
			st.setString(3,c);
			st.setString(4,d);
			st.setString(5,e);
			st.setString(6,f);
			st.setNString(7,g);
			st.setString(8,h);
			st.setString(9,i);
			st.setString(10,j);
			st.setString(11,k);
			st.setInt(12,l);
			st.setString(13,m);
			st.setString(14,n);
			st.setString(15,o);
			st.setString(16,p); 
			System.out.println("hii");
			int nn = 0; nn = st.executeUpdate("insert into alumini_table values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"')");
			System.out.println(nn);
		} catch (SQLException e1) { e1.printStackTrace();}  */
		
		
		try {
			FormDao.dataInsert(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p);
		} catch (SQLException e1) {
		}
		response.sendRedirect("regsuccess.jsp");
	}
	

}
