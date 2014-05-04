package cmpe203.project.MyTacks.views;

import com.yammer.dropwizard.views.View;

public class LandingPageView extends View{
	
	private final String name;
	
	public LandingPageView(String firstName)extends View{
		super("/LandingPage.ftl");
		this.name=firstName;
	}

	public String getName(){
		return name;
	}
	
}
