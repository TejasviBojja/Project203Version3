package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

//import cmpe203.project.MyTacks.views.HomeView;
import cmpe203.project.MyTacks.views.ResetPasswordSuccessView;

/** 
 * This class is returned on successful change of password
 */
@Path("/ResetPasswordSuccess")
public class ResetPasswordSuccessResource {
	
	public ResetPasswordSuccessResource()
	{
	
	}

	/** 
 	* This calls a View method that displays acknowledgement of successful change in password
 	*/
	@GET
	public ResetPasswordSuccessView getResetPasswordSuccess()
	{
		return new ResetPasswordSuccessView();
	}
}
