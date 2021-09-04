package com.project.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name="patients")
@Data
@Entity
public class patients {
	
	@Column (name="id")
	private Integer id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name=" dob")
	private Date dob;
	
	@Column(name="nic")
	private String nic;
	
	@Column(name="contact_home")
	private String contactHome;
	
	@Column(name="contact_mobile_1")
	private String contactMobile1;
	
	@Column(name="contact_mobile_2")
	private String contactMobile2;
	
	@Column(name="emergency_contact_name")
	private String emergencyContactname;
	
	@Column(name="emergency_contact_no")
	private String emergencyContactNo;
	
	@Column(name="created_date")
	private Timestamp createdDate;
	
	@Column(name="status")
	private Character status;
		
}
