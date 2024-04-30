package boardServer.user;

import java.security.Timestamp;

public class User {

	private String id;
	private String password;
	private String email;
	private String name;
	private String birth;
	private String gender;
	private String country;
	private String telecom;
	private String phone;
	private boolean agree;
	private java.sql.Timestamp regDate;
	private java.sql.Timestamp modDate;

	public User(String id, String email, String name, String birth, String gender, String country, String telecom,
			String phone, boolean agree, java.sql.Timestamp regDate, java.sql.Timestamp modDate) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.country = country;
		this.telecom = telecom;
		this.phone = phone;
		this.agree = agree;
		this.regDate = regDate;
		this.modDate = modDate;
	}

	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public String getBirth() {
		return birth;
	}

	public java.sql.Timestamp getRegDate() {
		return regDate;
	}

	public java.sql.Timestamp getModDate() {
		return modDate;
	}

	public String getGender() {
		return gender;
	}

	public String getCountry() {
		return country;
	}

	public String getTelecom() {
		return telecom;
	}

	public String getPhone() {
		return phone;
	}

	public boolean isAgree() {
		return agree;
	}

}