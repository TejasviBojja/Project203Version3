package cmpe203.project.MyTacks.api.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Board;
import cmpe203.project.MyTacks.domain.Tile;
import cmpe203.project.MyTacks.views.ViewBoardView;
import cmpe203.project.MyTacks.views.ViewTileView;
@Path("/ViewTile")

public class ViewTileResource {





	@GET
	public  ViewTileView getTile(@QueryParam("email") String email,@QueryParam("boardName") String boardName)
	{
		mongo test=new mongo();
		List tiles=test.viewBoard(boardName, email);
		System.out.print("Tiles in resource class is ::"+tiles);
		return new ViewTileView(tiles);
	}
}

