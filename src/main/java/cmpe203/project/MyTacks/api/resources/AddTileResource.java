package cmpe203.project.MyTacks.api.resources;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Board;
import cmpe203.project.MyTacks.domain.Tile;
import cmpe203.project.MyTacks.views.AddTileView;

@Path("/AddTile")
public class AddTileResource {
	public AddTileResource()
	{
	
	}

	@GET
	public AddTileView getAddTile(@QueryParam("email") String email,@QueryParam("name") String boardName,@QueryParam("description") String description,@QueryParam("category") String category)
	{
		mongo test=new mongo();
		test.createBoard(email,boardName,description,category);
		Board board=new Board();
		board.setBoardName(boardName);
		board.setCategory(category);
		board.setDescription(description);
		ArrayList<Board> b=new ArrayList<Board>();
		b.add(board);
		return new AddTileView(b);
	}
	
	@Path("/tile")
	@GET
	public AddTileView getTile(@QueryParam("email") String email,@QueryParam("boardName") String boardName,@QueryParam("description") String description,@QueryParam("url") String url){
		mongo test=new mongo();
		List<Board> boards=test.getUserDetails(email);
		Tile tile=new Tile();
		tile.setDescription(description);
		tile.setUrl(url);
		test.createTile(email,boardName,tile);
		return new AddTileView(boards);
	}

}

