package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Register;

import com.yammer.dropwizard.views.View;


public class HomePageView extends View{
	List<Register> register=new ArrayList<Register>();
	
	public List<Register> getRegister() {
		return register;
	}

	public void setRegister(List<Register> register) {
		this.register = register;
	}

	public HomePageView(Register register){
		super("/HomePage.ftl");
		this.register.add(register);
		
		}
	

	
	


}
