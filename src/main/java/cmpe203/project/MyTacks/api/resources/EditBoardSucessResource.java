package cmpe203.project.MyTacks.api.resources;
import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

//import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.views.CreateBoardView;
import cmpe203.project.MyTacks.views.EditBoardSuccessView;
import cmpe203.project.MyTacks.views.EditBoardView;

//Page shown after successful edit to boards
@Path("/EditBoardSuccess")
public class EditBoardSucessResource {
	public EditBoardSucessResource()
	{
	
	}

//Call to get the view after the board is edited
	@GET
	public EditBoardSuccessView getEditProfileSuccess()
	{
		return new EditBoardSuccessView();
	}


}
