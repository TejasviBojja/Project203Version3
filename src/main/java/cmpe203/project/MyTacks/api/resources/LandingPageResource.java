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
import cmpe203.project.MyTacks.views.LandingPageView;

//public class LandingPageResource {


@Path("/LandingPage")
public class LandingPageResource {
	
	public LandingPageResource()
	{
	
	}

	@GET

	public LandingPageView getLandingPage(@QueryParam("firstName") String firstName)
	{
		
		return new LandingPageView(firstName);


	}
	

}

