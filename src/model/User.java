package model;

public class User {
	
	
	//declaring varibles
	private String name;
	private String phoneNumber;
	private String NIC;
	private int age;
	
	
	//creating and initialising the overloaded constructor
	public User(String name, String phoneNumber) {
		
		this.name = name;
		this.phoneNumber = phoneNumber;
		
	}
	
	//creating and initialising the overloaded constructor
	public User(String name, String phoneNumber, String nIC, int age) {
		
		this.name = name;
		this.phoneNumber = phoneNumber;
		NIC = nIC;
		this.age = age;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getNIC() {
		return NIC;
	}


	public void setNIC(String nIC) {
		NIC = nIC;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}
	
	
	

}
