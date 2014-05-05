package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import cmpe203.project.MyTacks.views.CreateTileView;

//For creating a tile
@Path("/CreateTile")
public class CreateTileResource {
	public CreateTileResource()
	{
	
	}

//Calling the method to get the view of tile creation 
	@GET
	public CreateTileView getCreateTile()
	{
		return new CreateTileView();
	}


}
