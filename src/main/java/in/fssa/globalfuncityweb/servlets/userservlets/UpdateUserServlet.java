package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/user_dashboard/profile/update")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try {
			
			//Instance
			User user = new User();
			
			//Mobile number
			String phoneNumber = request.getParameter("mobile_number");
			long number = Long.parseLong(phoneNumber);
			user.setPhoneNumber(number);
		
			//Password
			user.setPassword(request.getParameter("password"));
			
			//FirstName
			user.setFirstName(request.getParameter("first_name"));
			
			//MiddleName
			user.setMiddleName(request.getParameter("middle_name"));
			
			//LastName
			user.setLastName(request.getParameter("last_name"));
			
			UserService userService = new UserService();
			
			String idParams = request.getParameter("userId");
			
			int id = Integer.parseInt(idParams);
			
			userService.updateUser(id, user);
			//System.out.println(id);
			response.sendRedirect("/globalfuncityweb/user_dashboard/profile");
			
	   }  catch (Exception e) {
		   e.printStackTrace();
			out.println("<script>alert('"+ e.getMessage() +"');</script>");
			out.println("<script>window.history.back();</script>");
			
		}

}
}
