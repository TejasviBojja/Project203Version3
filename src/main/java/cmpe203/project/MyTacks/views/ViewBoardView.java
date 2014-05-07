package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Board;

import com.yammer.dropwizard.views.View;


public class ViewBoardView extends View{
	
	List<Board> board=new ArrayList<Board>();
	
	
	public ViewBoardView(List board){
		super("/ViewBoard.ftl");
		this.board=board;
	}


	public List<Board> getBoard() {
		return board;
	}


	public void setBoard(List<Board> board) { 	
		this.board = board;
	}


}
