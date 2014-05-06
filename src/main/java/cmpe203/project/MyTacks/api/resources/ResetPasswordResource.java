package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.views.HomeView;
import cmpe203.project.MyTacks.views.ResetPasswordEmailView;
import cmpe203.project.MyTacks.views.ResetPasswordView;

/** 
 * This class allows the user to reset his/her password
 */
@Path("/ResetPassword")
public class ResetPasswordResource {

	
	public ResetPasswordResource()
	{
	
	}
	
	/** 
	 * This method calls the view allowing the user to change password
	 */
	@GET
	public ResetPasswordView getHome()
	{
		return new ResetPasswordView();
	}
	
	/**
	 * This method post will send the reset password link to user's mail id
	 * @FormParam takes email and sends the reset password link to this mail id
	 * This link on click will allow the user to reset his password of MyTacks
	 */
	@POST
	public Response resetPassword(@FormParam("email") String email) throws URISyntaxException
	{
		URI uri=new URI("http://localhost:8080/MyTacks/ResetPasswordSuccess");
		Email e=new Email();
		e.sendEmail(3,email,"");
		return Response.seeOther(uri).build();
	}
	
		
}

