package model;

public class User {
	
	private int id;
	private String accountNumber;
	private String name;
	private String phoneNumber;
	private String cvc;
	private String expDate;
	private int amount;
	
	
	public User() {
		
	}
		
	public User(int id, String accountNumber, String name, String phoneNumber, String cvc, String expDate,
			int amount) {
		
		this.id = id;
		this.accountNumber = accountNumber;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.cvc = cvc;
		this.expDate = expDate;
		this.amount = amount;
	}



	public User(String accountNumber, String name, String phoneNumber , String cvc, String expDate,
			int amount) {
		super();
		this.accountNumber = accountNumber;
		this.name = name;
		this.phoneNumber = phoneNumber;
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
