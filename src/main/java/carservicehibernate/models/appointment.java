package carservicehibernate.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String email;
	private String vehicletype;
	private String vehicleno;
	private String date;
	private String time;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVehicletype() {
		return vehicletype;
	}
	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}
	public String getVehicleno() {
		return vehicleno;
	}
	public void setVehicleno(String vehicleno) {
		this.vehicleno = vehicleno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public appointment(String email, String vehicletype, String vehicleno, String date, String time) {
		super();
		this.email = email;
		this.vehicletype = vehicletype;
		this.vehicleno = vehicleno;
		this.date = date;
		this.time = time;
	}
}
