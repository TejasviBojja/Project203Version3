package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Board;

import com.yammer.dropwizard.views.View;
/**
 * This class allows for a user to add tiles to this account through this view page 
 */
 
public class AddTileView extends View {

	private List<Board> board=new ArrayList<Board>();
	
	public AddTileView(List<Board> b){
		super("/AddTile.ftl");
		this.board=b;
		
	}

	public AddTileView() {
		super("/AddTile.ftl");
		// TODO Auto-generated constructor stub
	}

	public List<Board> getBoard() {
		return board;
	}

	public void setBoard(List<Board> board) {
		this.board = board;
	}

}
