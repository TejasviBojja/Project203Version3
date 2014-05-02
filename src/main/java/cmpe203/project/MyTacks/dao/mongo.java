package cmpe203.project.MyTacks.dao;



import java.net.UnknownHostException;
import java.util.Map;
import java.util.Set;

import org.bson.BSONObject;

import cmpe203.project.MyTacks.domain.Register;
import cmpe203.project.MyTacks.domain.Signup;

import java.net.UnknownHostException;
import java.util.Set;

import cmpe203.project.MyTacks.domain.Register;



import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.ServerAddress;

	public class mongo {
		
			public static DB db ;
			public static MongoClient mongoClient;
		public mongo() {
			 
			try {
				mongoClient = new MongoClient("localhost" , 27017);
			} catch (UnknownHostException e) {
				
				e.printStackTrace();
			}

			 db = mongoClient.getDB( "myTacks" );
			
			
		}
		
		public void createUser(Register register)
		{
			DBCollection collection = db.getCollection("users"); 
			try
			{
				BasicDBObject object=new BasicDBObject();
				object.put("firstname",register.getFirstName());

				object.put("lastname",register.getLastName());
				object.put("email", register.getEmail());
				object.put("sex", register.getSex());
				object.put("password", register.getPassword());
				object.put("cpassword", register.getCpassword());

				object.put("verify", register.getEmail_Verified());

				collection.insert(object);
			}
			catch (MongoException.DuplicateKey e) {
	            System.out.println("Username already in use");
			}
		

	}
		public int verifyLogin(Signup signup)
		{
			int value=0;
			DBCollection collection=db.getCollection("users");
			System.out.println("email is:----------------"+signup.getEmail());
			DBObject query=new BasicDBObject("email",signup.getEmail());
			DBObject obj=collection.findOne(query);
			if(obj!=null)
			{
			
			String password1=obj.get("password").toString();
			if(!obj.get("verify").toString().equals("yes"))
				value=2;
			else if(password1.equalsIgnoreCase(signup.getPassword()))
				value=1;
				}
	return value;		
	}
		public void activateEmail(String firstname) {
			// TODO Auto-generated method stub
			DBCollection collection=db.getCollection("users");
			DBObject query=new BasicDBObject("firstname",firstname);
			DBObject obj=collection.findOne(query);
			obj.put("verify","yes");
			collection.save(obj);
			
		}

		public void resetPassword(String email, String password) {
			// TODO Auto-generated method stub
			DBCollection collection=db.getCollection("users");
			DBObject query=new BasicDBObject("email",email);
			System.out.println("Inside db reset password method ");
			System.out.println("email is "+email);
			System.out.println("password is "+password);
			DBObject obj=collection.findOne(query);
			obj.put("password",password);
			collection.save(obj);
		}
	}
		
	
	
	