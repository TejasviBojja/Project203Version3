package cmpe203.project.MyTacks.api.resources;



import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Register;
import cmpe203.project.MyTacks.domain.Signup;
import cmpe203.project.MyTacks.views.LandingPageView;
import cmpe203.project.MyTacks.views.SignupView;

/** 
 * This class will create a login page for allowing the user to login to the portal
 */
@Path("/signup")
public class SignupResource {

	
	
	public SignupResource()
	{
	
	}
	
	/** 
 	* This method will call the SignupView() class to get the view for login
 	*/
	@GET
	public  SignupView getSignUp()
	{
		return new  SignupView();
	}
	
	/**
	 * This method will allow for the user to verify the login and password and provide access to portal as per the validity of the credentials provided
	 * @FormParam takes email id and password as input, goes into the database and if he/she is an authenticated person-then allows access to portal
	 */
	@POST
	public LandingPageView verifySignup(@FormParam("email") String email, @FormParam("password") String password) throws URISyntaxException
	{
		
		URI uri=new URI("http://localhost:8080/MyTacks/home");
		mongo test = new mongo();
		 int count=0;
		List list=null;
		String firstName="";
		Signup signup=new Signup();
		signup.setEmail(email);
		signup.setPassword(password);
		int value=test.verifyLogin(signup);
		System.out.println("value in signup class is ::"+value);
		if(value==1){
		list=mongo.getUserDetails(email);
		 uri=new URI("http://localhost:8080/MyTacks/LandingPage?firstName="+firstName);
		}
		if(value==2){
			uri=new URI("http://localhost:8080/MyTacks/register");
		}
		return new LandingPageView(email,list);
	
	}
}

