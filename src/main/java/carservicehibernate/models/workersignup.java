package carservicehibernate.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class workersignup {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String workerid;
	private String workername;
	private String email;
	private String password;
	public String getWorkerid() {
		return workerid;
	}
	public void setWorkerid(String workerid) {
		this.workerid = workerid;
	}
	public String getWorkername() {
		return workername;
	}
	public void setWorkername(String workername) {
		this.workername = workername;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public workersignup(String workerid, String workername, String email, String password) {
		super();
		this.workerid = workerid;
		this.workername = workername;
		this.email = email;
		this.password = password;
	}
	
	public workersignup() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
