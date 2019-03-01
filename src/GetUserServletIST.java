

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetUserServletIST")
public class GetUserServletIST extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String MarketPlace = request.getParameter("MarketPlace");
        String TimeStamp = request.getParameter("TimeStamp");

     
        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm zzz");
        response.setContentType("text/plain");
        
		try {
			Date today=new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(TimeStamp);
			//System.out.println("user entered date : " + sdf.format(today));
			Calendar cal = Calendar.getInstance();
			cal.setTime(today);
			if (MarketPlace.equals("JP"))
			{
				sdf.setTimeZone(TimeZone.getTimeZone("JST"));	
				cal.add(Calendar.MINUTE, -210);
				Date SubtractedDate = cal.getTime();
				sdf.setTimeZone(TimeZone.getTimeZone("IST"));
				response.getWriter().write("IST Format Date : "+sdf.format(SubtractedDate));
			}
			else if(MarketPlace.equals("US"))
			{
				sdf.setTimeZone(TimeZone.getTimeZone("PST"));	
				cal.add(Calendar.MINUTE, +810);
				Date SubtractedDate = cal.getTime();
				sdf.setTimeZone(TimeZone.getTimeZone("IST"));
				response.getWriter().write("IST Format Date : "+sdf.format(SubtractedDate));
			}
			else if(MarketPlace.equals("UK"))
			{
				sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
				cal.add(Calendar.MINUTE, -330);
				Date SubtractedDate = cal.getTime();
				sdf.setTimeZone(TimeZone.getTimeZone("IST"));
				response.getWriter().write("IST Format Date : "+sdf.format(SubtractedDate));
			}
			else if(MarketPlace.equals("IN"))
			{
				/*sdf.setTimeZone(TimeZone.getTimeZone("PST"));	
				cal.add(Calendar.MINUTE, +810);
				Date SubtractedDate = cal.getTime();
				sdf.setTimeZone(TimeZone.getTimeZone("IST"));*/
				response.getWriter().write("You are hitting wrong button!");
			}
			
			

		} catch (ParseException e) {
			e.printStackTrace();
		}
	
	}

}
