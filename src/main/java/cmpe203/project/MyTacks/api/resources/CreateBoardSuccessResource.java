package cmpe203.project.MyTacks.api.resources;
import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;



//import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.views.CreateBoardSuccessView;

public class CreateBoardSuccessResource {

//On successful creation of board
	@Path("/CreateBoardSuccess")
	public class CreateBoardResource {
		public CreateBoardResource()
		{
		
		}
		
//Get the view of successful creation of board
		@GET
		public CreateBoardSuccessView getEditProfileSuccess()
		{
			return new CreateBoardSuccessView();
		}


	}
}
