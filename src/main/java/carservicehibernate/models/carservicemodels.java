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

	
}
