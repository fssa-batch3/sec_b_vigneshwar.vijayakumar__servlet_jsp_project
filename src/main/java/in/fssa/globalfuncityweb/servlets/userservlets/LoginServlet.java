package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");
		rd.forward(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    UserService userService = new UserService();
		    User user = userService.findByEmail(email);

		    if (user == null) {
		        System.out.println("User not found");
		    } else if (!password.equals(user.getPassword())) {
		    	
		    	throw new ValidationException("Incorrect Password");
		    	
		    	//request.setAttribute("alertMessage", "Incorrect email or password.");
		    	//request.getRequestDispatcher("/user/login.jsp").forward(request, response);
		    	
		    	

		        //System.out.println("Incorrect Email or Password:(");
		        
		    } else {
		    	
		    	request.setAttribute("alertMessage", "Login successful");
		    	System.out.println("Login Successfull:)");
		       
		        Integer id = user.getUserId();
	            if (id != null) {
	                request.getSession().setAttribute("userId", id);
	                response.sendRedirect(request.getContextPath() + "/user/login-success.jsp");
	                //response.sendRedirect(request.getContextPath() + "/index");
	            }
		    
		    }
           
		} catch (Exception e) {
			e.printStackTrace();
			
			PrintWriter consoleOutput = response.getWriter();
			consoleOutput.println("<script>alert('"+ e.getMessage() +"');</script>");
			consoleOutput.println("<script>window.history.back();</script>");
			
			//consoleOutput.println(e.getMessage());
			
		} 
	}
	}

