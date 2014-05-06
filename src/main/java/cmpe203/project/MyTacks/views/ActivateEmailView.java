package cmpe203.project.MyTacks.views;

import com.yammer.dropwizard.views.View;

/**
 * This class calls for an ftl page view to be displayed to the user once he checks his email 
 * to activate his account after registration
 */
public class ActivateEmailView extends View{

	public ActivateEmailView(){
		
		super("/ActivateEmail.ftl");
	}
}
