package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import cmpe203.project.MyTacks.views.PasswordChangeSuccessView;

@Path("/PasswordChangeSuccess")
public class PasswordChangeSuccessResource {
	
	@GET
	public PasswordChangeSuccessView getInviteFriend()
	{
		return new PasswordChangeSuccessView();
	}

}
