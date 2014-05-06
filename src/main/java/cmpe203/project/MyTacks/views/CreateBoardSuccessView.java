package cmpe203.project.MyTacks.views;
import com.yammer.dropwizard.views.View;

/**
 * This class displays the successful message after creating the board through this view page 
 */ 
public class CreateBoardSuccessView {
	
	
	public class CreateBoardView extends View{
		public CreateBoardView(){
			super("/CreateBoardSuccess.ftl");
		}
			
	}
}
