package cmpe203.project.MyTacks.views;
import com.yammer.dropwizard.views.View;

/**
 * This class allows for a user to edit board to this account through this view page 
 */
public class EditBoardView extends View{
	public EditBoardView(){
		super("/EditBoard.ftl");
	}
		
}
