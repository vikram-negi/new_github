package com.cts.ppd.vo;

import java.util.ArrayList;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Patient {

	ArrayList<Study> studies = new ArrayList<Study>();
	
	Study study ;
	
    @Size(min=2, max=30)
    private String name;
    
    @Size(max=4000)
    private String address;

    @Size(max=20)
    private String phone;
    
    @Size(max=50)
    private String email;  

    @NotNull
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date dob;

    @NotNull
    @Min(18)
    private Integer age;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

	/**
	 * @return the studies
	 */
	public ArrayList<Study> getStudies() {
		return studies;
	}

	/**
	 * @param studies the studies to set
	 */
	public void setStudies(ArrayList<Study> studies) {
		this.studies = studies;
	}

	/**
	 * @return the study
	 */
	public Study getStudy() {
		return study;
	}

	/**
	 * @param study the study to set
	 */
	public void setStudy(Study study) {
		this.study = study;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Patient [name=");
		builder.append(name);
		builder.append(", address=");
		builder.append(address);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", email=");
		builder.append(email);
		builder.append(", dob=");
		builder.append(dob);
		builder.append(", age=");
		builder.append(age);
		builder.append("]");
		return builder.toString();
	}

}