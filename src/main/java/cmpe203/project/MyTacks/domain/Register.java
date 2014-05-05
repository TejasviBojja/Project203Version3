package cmpe203.project.MyTacks.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Register {
	
	@JsonProperty("firstname")
	private String firstName;
	
	@JsonProperty("lastname")
	private String lastName;
	
	@JsonProperty("email")
	private String email;
	
	@JsonProperty("sex")
	private String sex;

	@JsonProperty("password")
	private String password;
	
	
	public Board getBoard() {
		return board;
	}


	public void setBoard(Board board) {
		this.board = board;
	}


	public Tile getTile() {
		return tile;
	}


	public void setTile(Tile tile) {
		this.tile = tile;
	}


	private String email_Verified;
	
	Board board;
	Tile tile;


	public String getEmail_Verified() {
		return email_Verified;
	}


	public void setEmail_Verified(String email_Verified) {
		this.email_Verified = email_Verified;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	

}
