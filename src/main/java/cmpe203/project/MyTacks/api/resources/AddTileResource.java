package cmpe203.project.MyTacks.api.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.views.AddTileView;

@Path("/AddTile")
public class AddTileResource {
	public AddTileResource()
	{
	
	}

	@GET
	public AddTileView getAddTile(@QueryParam("name") String name,@QueryParam("description") String description,@QueryParam("category") String category)
	{
		mongo test=new mongo();
		test.createBoard(name,description,category);
		return new AddTileView();
	}


}

