package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Board;

import com.yammer.dropwizard.views.View;


public class LandingPageView extends View{
	List email=new ArrayList();
	List<Board> l=new ArrayList<Board>();
	
	public LandingPageView(String email,List<Board> list) {
		
		super("/LandingPage.ftl");
		try{
		this.l=list;
		this.email.add(email);
		}
		catch(NullPointerException e){
			System.out.print("board is null");
		this.l.add(new Board());
		}
			
	}

	public List getEmail() {
		return email;
	}

	public void setEmail(List email) {
		this.email = email;
	}

	public List<Board> getL() {
		return l;
	}

	public void setL(List<Board> l) {
		this.l = l;
	}


	
	
}
