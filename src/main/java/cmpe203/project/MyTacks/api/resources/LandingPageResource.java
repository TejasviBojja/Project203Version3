package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
//import javax.ws.rs.QueryParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;



import cmpe203.project.MyTacks.dao.mongo;
//import cmpe203.project.MyTacks.views.HomeView;
import cmpe203.project.MyTacks.views.LandingPageView;

//public class LandingPageResource {


@Path("/LandingPage")
public class LandingPageResource {
	
	public LandingPageResource()
	{
	
	}

	@GET
<<<<<<< HEAD
	public LandingPageView getLandingPage()
	{
	
			return new LandingPageView();
=======
	public LandingPageView getLandingPage(@QueryParam("name") String firstName)
	{
		firstName=""+firstName;
		return new LandingPageView(firstName);

>>>>>>> d31a701e537c9f1c2ede37643af41c2e16f47a25
	}
	

}

