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
	
	
	@POST
	public Response goToLogin() throws URISyntaxException
	{
		URI uri=new URI("http://localhost:8080/MyTacks/login");
		return Response.seeOther(uri).build();
	}
	
	
}


