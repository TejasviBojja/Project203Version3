package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

//import cmpe203.project.MyTacks.views.HomeView;
import cmpe203.project.MyTacks.views.ResetPasswordSuccessView;

@Path("/ResetPasswordSuccess")
public class ResetPasswordSuccessResource {
	
	public ResetPasswordSuccessResource()
	{
	
	}

	@GET
	public ResetPasswordSuccessView getResetPasswordSuccess()
	{
		return new ResetPasswordSuccessView();
	}
}
