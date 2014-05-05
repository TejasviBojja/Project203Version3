package cmpe203.project.MyTacks.views;
import com.yammer.dropwizard.views.View;

/**
 * This class displays the successful message after editing the board through this view page 
 */ 
public class EditBoardSuccessView extends View{
	public EditBoardSuccessView(){
		super("/EditBoardSucess.ftl");
	}
		
}
