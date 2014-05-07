package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import com.mongodb.Mongo;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Register;
import cmpe203.project.MyTacks.views.HomePageView;
import cmpe203.project.MyTacks.views.HomeView;


@Path("/homepage")
public class HomePageResource {

	
	public HomePageResource()
	{
	
	}

	@GET
	public HomePageView getHomePage(@QueryParam("email") String email)
	{
		Register register=new Register();
		mongo test=new mongo();
		register=test.getDetails(email);
		return new HomePageView(register);
	}
	
	


}
