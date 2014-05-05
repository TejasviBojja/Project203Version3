package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.UUID;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;



import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.views.ActivateEmailView;

import com.yammer.dropwizard.views.View;

/**
 * To activate a user's account at MyTacks
 * @QueryParam takes the parameter "activationlink" which includes the details of the user. 
 */
@Path("/Activate")
public class ActivateEmailResource {

	@GET
	public View getVerifiedView(@QueryParam("activationlink") String firstname)
	{
		 mongo test=new mongo();
		 System.out.println("firstname is ::"+firstname);
		 test.activateEmail(firstname);
		 return new ActivateEmailView();
		

	
	}
	
/**
 * Switch to Login Page after successful activation of account
 * Once the activation link sent to user's email is verified, then it goes to "/login" to login to the portal
 */
	@POST
	public Response goToLogin() throws URISyntaxException
	{
		URI uri=new URI("http://localhost:8080/MyTacks/login");
		return Response.seeOther(uri).build();
	}
	
	
}


