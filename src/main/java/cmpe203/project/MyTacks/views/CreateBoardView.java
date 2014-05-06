package cmpe203.project.MyTacks.views;
import com.yammer.dropwizard.views.View;

/**
 * This class allows for a user to create his board through this view page 
 */ 
public class CreateBoardView extends View{
	public CreateBoardView(){
		super("/CreateBoard.ftl");
	}
		
}
