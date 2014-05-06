package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;

import javax.ws.rs.FormParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.domain.Register;
import cmpe203.project.MyTacks.views.RegisterView;

/** 
 * This class allows a user to register to MyTacks, and controls his access to portal as a registered user
 */
@Path("/register")
public class RegisterResource {

	public RegisterResource()
	{
	
	}

/** 
 * This calls a method "RegisterView()" to get the view for Registration page
 */
@GET
public RegisterView getRegister()
{
	return new RegisterView();
}

/**
 * This method will call for the database to create a new user with the inputs provided by the user when he wants to register
 * @FormParam takes firstname, lastname, email, sex, password and cpassword as form parameters and the values will be entered by the user
 * On submit, it will verify the details by sending an activation link to the email. The user must click to activate his account at MyTacks
 */
@POST
public Response verifySignup(@FormParam("firstname") String firstName, @FormParam("lastname") String lastName,@FormParam("email") String email,@FormParam("sex") String sex,@FormParam("password") String password,@FormParam("cpassword") String cpassword) throws URISyntaxException

{

URI uri =new URI("http://localhost:8080/MyTacks/signup");
	Register register=new Register();
	
	register.setFirstName(firstName);
	register.setLastName(lastName);
	register.setEmail(email);
	register.setSex(sex);
	register.setPassword(password);
	register.setEmail_Verified("no");
	mongo test = new mongo();
	
	test.createUser(register);
	
	Email e=new Email();
	e.sendEmail(1,email,firstName);

	return Response.seeOther(uri).build();
}
}
