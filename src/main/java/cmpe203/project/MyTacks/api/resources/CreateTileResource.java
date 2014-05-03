package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import cmpe203.project.MyTacks.views.CreateTileView;

@Path("/CreateTile")
public class CreateTileResource {
	public CreateTileResource()
	{
	
	}

	@GET
	public CreateTileView getCreateTile()
	{
		return new CreateTileView();
	}


}
