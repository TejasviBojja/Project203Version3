package cmpe203.project.MyTacks.api.resources;
import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
//import javax.ws.rs.POST;
import javax.ws.rs.Path;
//import javax.ws.rs.core.Response;


//import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.views.InviteFriendSuccessView;
//import cmpe203.project.MyTacks.views.InviteFriendView;

	/**
	 * This class displays the success message once the delivery of invitation is posted
	 */
	@Path("/InviteFriendSuccess")
	public class InviteFriendSuccessResource {
		
		public InviteFriendSuccessResource()
		{
		
		}
		
		/**
		 * This calls for a View page that is displayed on successful delivery of invitation
		 */
		@GET
		public InviteFriendSuccessView getInviteFriendSuccess()
		{
			return new InviteFriendSuccessView();
		}
		
	}
	
