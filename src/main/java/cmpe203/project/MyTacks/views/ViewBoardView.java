package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Board;

import com.yammer.dropwizard.views.View;


public class ViewBoardView extends View{
	
	List<Board> board=new ArrayList<Board>();
	List email=new ArrayList();
	
	public ViewBoardView(List board,String email){
		super("/ViewBoard.ftl");
		this.board=board;
		this.email.add(email);
	}


	public List getEmail() {
		return email;
	}


	public void setEmail(List email) {
		this.email = email;
	}


	public List<Board> getBoard() {
		return board;
	}


	public void setBoard(List<Board> board) { 	
		this.board = board;
	}


}
