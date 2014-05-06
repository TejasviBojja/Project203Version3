package cmpe203.project.MyTacks.api.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Tile;
import cmpe203.project.MyTacks.views.ViewBoardView;

@Path("/ViewBoard")
public class ViewBoardResource {
	
	@GET
	public  ViewBoardView getSignUp(@QueryParam("boardName") String boardName)
	{
		mongo test=new mongo();
		List tile=test.viewBoard(boardName);
		
		return new ViewBoardView(tile);
	}

}
