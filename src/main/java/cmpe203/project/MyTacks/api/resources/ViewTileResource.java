package cmpe203.project.MyTacks.api.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.views.ViewBoardView;
@Path("/ViewTile")
public class ViewTileResource {

	


public class ViewBoardResource {
	
	@GET
	public  ViewBoardView getSignUp(@QueryParam("email") String email)
	{
		mongo test=new mongo();
		List board=test.getUserDetails(email);
		System.out.print("boards in resource class is ::"+board);
		return new ViewBoardView(board,email);
	}
}
