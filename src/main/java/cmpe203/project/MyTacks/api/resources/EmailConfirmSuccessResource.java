package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;

import cmpe203.project.MyTacks.views.EmailConfirmSuccessView;

@Path("/EmailConfirmSuccess")
public class EmailConfirmSuccessResource {

	
		public EmailConfirmSuccessResource()
		{
		
		}

		@GET
		public EmailConfirmSuccessView getEmailConfirmSuccess()
		{
			return new EmailConfirmSuccessView();
		}
	}


