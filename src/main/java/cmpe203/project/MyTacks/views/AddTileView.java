package cmpe203.project.MyTacks.views;

import java.util.ArrayList;

import cmpe203.project.MyTacks.domain.Board;

import com.yammer.dropwizard.views.View;

public class AddTileView extends View {

	private ArrayList<Board> board=new ArrayList<Board>();
	
	public AddTileView(ArrayList<Board> b){
		super("/AddTile.ftl");
		this.board=b;
		
	}

	public AddTileView() {
		super("/AddTile.ftl");
		// TODO Auto-generated constructor stub
	}

	public ArrayList<Board> getBoard() {
		return board;
	}

	public void setBoard(ArrayList<Board> board) {
		this.board = board;
	}
	
	

	


}
