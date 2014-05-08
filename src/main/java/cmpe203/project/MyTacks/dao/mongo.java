package cmpe203.project.MyTacks.dao;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cmpe203.project.MyTacks.domain.Register;
import cmpe203.project.MyTacks.domain.Signup;
import cmpe203.project.MyTacks.domain.Tile;

import java.net.UnknownHostException;
import java.util.Set;

import cmpe203.project.MyTacks.domain.Register;

import com.mongodb.BasicDBList;
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
				mongoClient = new MongoClient(new ServerAddress("172.20.10.4" , 27017));
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
		
				object.put("verify", register.getEmail_Verified());

				collection.insert(object);
			}
			catch (MongoException.DuplicateKey e) {
	            System.out.println("Username already in use");
			}
		

	}
		
		public Register getDetails(String email)
		{
			Register register= new Register();
			DBCollection collection=db.getCollection("users");
			DBObject query=new BasicDBObject("email",email);
			DBObject obj=collection.findOne(query);
			if(obj!=null)
			{
				String var=obj.get("password").toString();
			register.setPassword(var);
			register.setEmail(email);
			register.setFirstName(obj.get("firstname").toString());
			register.setLastName(obj.get("lastname").toString());
			
			
			}
	return register;		
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

		public void createBoard(String email,String name, String description, String category,String privacy) {
			// TODO Auto-generated method stub
			DBCollection collection=db.getCollection("users");
		//	DBCollection tilesColl=db.getCollection("tiles");
			try
			{
				DBObject query=new BasicDBObject("email",email);
				DBObject obj=collection.findOne(query);
				BasicDBObject object=new BasicDBObject();
				BasicDBList object1=new BasicDBList();
				object.put("name", name);
				object.put("description",description);
				object.put("category", category);
				object.put("privacy", privacy);
				object1.add(object);
				//obj.put("boards",object1);
				BasicDBObject updateCommand = new BasicDBObject("$push", new BasicDBObject("boards",object ));
				
				//obj.put("boards.$.tiles",tiles);
				collection.update(obj, updateCommand);
				//DBObject object2 = tilesColl.findOne(query);
				//System.out.println("object2 :::: "+object2);
				//if(object2 == null){
					/*System.out.println("function inside object 2 ceration called");

					BasicDBObject insTilesObj = new BasicDBObject();
					insTilesObj.put("email",email);
					insTilesObj.put("boardname", name);
					tilesColl.insert(insTilesObj);
				}*/
				//tilesColl.update(object, o)
				//collection.save(obj);
			}
			catch (MongoException.DuplicateKey e) {
	            System.out.println("Board already exists");
			}
		
		}
		
		//get display firstname after logging in with email 
		public String getFirstName(String email)
		{
			String fname;
			DBCollection collection=db.getCollection("users");	
			DBObject query=new BasicDBObject("email",email);		
			DBObject obj=collection.findOne(query);	
			fname=((String) obj.get("firstname"));	
			return fname;
		}


		public void editProfile(Register reg){
			DBCollection collection = db.getCollection("users"); 
			try
			{
				DBObject object;
				DBObject query=new BasicDBObject("email",reg.getEmail());
				object=collection.findOne(query);
				System.out.println("firstnameis::"+reg.getFirstName());
				object.put("firstname",reg.getFirstName());
				object.put("lastname",reg.getLastName());
				object.put("sex", reg.getSex());
				object.put("password", reg.getPassword());

				//object.put("verify", register.getEmail_Verified());

				collection.save(object);
			}
			catch (MongoException.DuplicateKey e) {
	            System.out.println("Username already in use");
			}
			
		}

		public List getUserDetails(String email) {
			DBCollection collection=db.getCollection("users");
			BasicDBList boardsList=null;
			BasicDBObject query=new BasicDBObject("email",email);
			DBObject obj=collection.findOne(query);
			if(obj!=null){
			boardsList =  (BasicDBList) obj.get("boards");
					if(!boardsList.isEmpty())	
				for (int i=0;i<boardsList.size();i++){
				System.out.println("the boardlist object ::: "+boardsList.get(i));
				
				}		
		}
			return  boardsList;
		}

		public void createTile(String email,String boardName,Tile tile) {
			DBCollection collection=db.getCollection("tiles");
				BasicDBObject object=new BasicDBObject();
				object.put("boardname", boardName);
				object.put("email",email);
				object.put("description", tile.getDescription());
				object.put("url",tile.getUrl());
				collection.save(object);
			}
			

		
		////this is for vie tiles ,, so name shud be viewTile()
		public List viewBoard(String boardName,String email) {
			
			
			DBCollection collection=db.getCollection("tiles");
			BasicDBList tilesList=new BasicDBList();
			BasicDBObject query=new BasicDBObject("boardname",boardName);
			query.put("email", email);
			DBCursor cur = collection.find(query);
			if(cur.hasNext())
			{
				DBObject obj =cur.next();
				tilesList.add(obj);
			}return tilesList;
		}
}

	
		
	
	
	
