package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import cmpe203.project.MyTacks.views.EditProfileSuccessView;

/**
 * This class will display success message when a user profile is edited successfully
 */
@Path("/EditProfileSuccess")
public class EditProfileSuccessResource {
	
	public EditProfileSuccessResource()
	{
	
	}
	
	/**
	 * This calls for a View method that refers to successful edit of profile
	 */
	@GET
	public EditProfileSuccessView getEditProfileSuccess()
	{
		return new EditProfileSuccessView();
	}
}
