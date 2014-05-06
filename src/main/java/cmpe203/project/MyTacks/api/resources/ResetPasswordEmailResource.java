package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.views.ActivateEmailView;
import cmpe203.project.MyTacks.views.ResetPasswordEmailView;

import com.yammer.dropwizard.views.View;

/** 
 * This class will allow the user to reset or change his password
 */
@Path("/ResetPasswordEmail")
public class ResetPasswordEmailResource {
	
	/**
	 * This method calls for the view for resetting the password
	 * @QueryParam takes email as a query parameter and sends the password change link to the user's email id
	 */
	@GET
	public View getVerifiedView(@QueryParam("id") String email)
	{
		 return new ResetPasswordEmailView();
		

		
	}

	/**
	 * This method will make a call to reset the password and store the updated new password into mongo DB
	 */
	@POST
	public Response resetPassword(@QueryParam("id") String email,@FormParam("password") String password) throws URISyntaxException
	{
		 mongo test=new mongo();
		 System.out.println("email is "+email);
		 System.out.println("password is::"+password);
		 test.resetPassword(email,password);
		 URI uri =new URI("http://localhost:8080/MyTacks/PasswordChangeSuccess");
			return Response.seeOther(uri).build();

		
	}

}
