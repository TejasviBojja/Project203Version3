package cmpe203.project.MyTacks.api.resources;

import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import cmpe203.project.MyTacks.dao.mongo;
import cmpe203.project.MyTacks.domain.Register;

//import cmpe203.project.MyTacks.domain.Email;
import cmpe203.project.MyTacks.views.EditProfileView;

	@Path("/EditProfile")
	public class EditProfileResource {
		
		public EditProfileResource()
		{
		
		}

		@GET
		public EditProfileView getEditProfile()
		{
			return new EditProfileView();
		}
		@POST

		public Response verifyEditProfile(@FormParam("firstname") String firstName, @FormParam("lastname") String lastName,@FormParam("email") String email,@FormParam("sex") String sex,@FormParam("password") String password,@FormParam("cpassword") String cpassword) throws URISyntaxException
		{
			URI uri =new URI("http://localhost:8080/MyTacks/EditProfileSuccess");
			System.out.println("firstnamae is::"+firstName);
			Register register=new Register();
			register.setFirstName(firstName);
			register.setEmail(email);
			register.setLastName(lastName);
			register.setSex(sex);
			register.setPassword(password);
			//register.setEmail_Verified("no");
			mongo test = new mongo();
			test.editProfile(register);

			return Response.seeOther(uri).build();
		}
	}

