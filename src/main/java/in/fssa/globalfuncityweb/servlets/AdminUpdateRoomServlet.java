package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.service.RoomService;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class UpdateRoomServlet
 */
@WebServlet("/admin/dashboard/room/update")
public class AdminUpdateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Room room = new Room();
		
		try {
			
			room.setHotelName(request.getParameter("hotel_name"));
			room.setRoomName(request.getParameter("room_name"));
			
			String noOfBeds = request.getParameter("no_of_beds");
			int no_Of_Beds = Integer.parseInt(noOfBeds);
			
			room.setNoOfBeds(no_Of_Beds);
			
			String price = request.getParameter("room_price");
			int roomPrice = Integer.parseInt(price);
			
			room.setPrice(roomPrice);
			
			room.setRoomImageUrl(request.getParameter("room_image"));
			room.setRoomAmenities(request.getParameter("room_amenity"));
			
			System.out.println(room);
			
			
			
			
			RoomService roomService = new RoomService();
			
			String stringId = request.getParameter("room_id");
			
				int id = Integer.parseInt(stringId);
				roomService.updateRoom(id, room);
				response.sendRedirect(request.getContextPath()+"/admin/dashboard/rooms_list");				
			
			
		} catch (ValidationException e) {
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		} catch (PersistenceException e) {
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		}
	}

}