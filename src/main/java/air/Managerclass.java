package air;

public class Managerclass {
	private String manager_names,manager_email,manager_username,manager_password;

	public Managerclass() {
		super();
	}

	public Managerclass(String manager_names, String manager_email, String manager_username, String manager_password) {
		super();
		this.manager_names = manager_names;
		this.manager_email = manager_email;
		this.manager_username = manager_username;
		this.manager_password = manager_password;
	}

	public String getManager_names() {
		return manager_names;
	}

	public void setManager_names(String manager_names) {
		this.manager_names = manager_names;
	}

	public String getManager_email() {
		return manager_email;
	}

	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}

	public String getManager_username() {
		return manager_username;
	}

	public void setManager_username(String manager_username) {
		this.manager_username = manager_username;
	}

	public String getManager_password() {
		return manager_password;
	}

	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}
	
}
