package carservicehibernate.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity

public class carservicemodels {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private String id;
private String name;
private String vehicletype;
private String vehicleno;
private String phoneo;
private String email;
private String password;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getPhoneo() {
	return phoneo;
}
public void setPhoneo(String phoneo) {
	this.phoneo = phoneo;
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
public carservicemodels(String id, String name, String vehicletype, String vehicleno, String phoneo, String email,
		String password) {
	super();
	this.id = id;
	this.name = name;
	this.vehicletype = vehicletype;
	this.vehicleno = vehicleno;
	this.phoneo = phoneo;
	this.email = email;
	this.password = password;
}
public carservicemodels() {
	super();
	// TODO Auto-generated constructor stub
}

	
}
