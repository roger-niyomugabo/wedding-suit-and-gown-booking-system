package air;

public class Customerclass {
	private String customer_names,customer_email,customer_phone,customer_address,customer_username,customer_password,customer_gender;

	public Customerclass() {
		super();
	}

	public Customerclass(String customer_names, String customer_email, String customer_phone, String customer_address,
			String customer_username, String customer_password, String customer_gender) {
		super();
		this.customer_names = customer_names;
		this.customer_email = customer_email;
		this.customer_phone = customer_phone;
		this.customer_address = customer_address;
		this.customer_username = customer_username;
		this.customer_password = customer_password;
		this.customer_gender = customer_gender;
	}

	public String getCustomer_names() {
		return customer_names;
	}

	public void setCustomer_names(String customer_names) {
		this.customer_names = customer_names;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getCustomer_username() {
		return customer_username;
	}

	public void setCustomer_username(String customer_username) {
		this.customer_username = customer_username;
	}

	public String getCustomer_password() {
		return customer_password;
	}

	public void setCustomer_password(String customer_password) {
		this.customer_password = customer_password;
	}

	public String getCustomer_gender() {
		return customer_gender;
	}

	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}

	
}