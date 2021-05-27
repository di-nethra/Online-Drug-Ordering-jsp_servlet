package model;

public class Payment extends User {
	
	//declaring varibles
	private int id;
	private String accountNumber;
	private String cvc;
	private String expDate;
	private int amount;
	
	//creating and initialising the overloaded constructor
	public Payment(int id, String accountNumber,String name, String phoneNumber,String cvc,String expDate, int amount){
		
		super(name, phoneNumber);
		
		this.id = id;
		this.accountNumber = accountNumber;
		this.cvc = cvc;
		this.expDate = expDate;
		this.amount = amount;
	}

	//creating and initialising the overloaded constructor
	public Payment( String accountNumber,String name, String phoneNumber,String cvc,String expDate, int amount){
		
		
		super(name, phoneNumber);
		
		this.accountNumber = accountNumber;
		this.cvc = cvc;
		this.expDate = expDate;
		this.amount = amount;
	}
			

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	
	//overided method
	public String getName() {
	
		return super.getName();
	}

	//overided method
	public String getPhoneNumber() {
		return super.getPhoneNumber();
	}

	public String getCvc() {
		return cvc;
	}

	public void setCvc(String cvc) {
		this.cvc = cvc;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

		

}
