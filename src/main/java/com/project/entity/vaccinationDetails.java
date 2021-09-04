package com.project.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name="vaccination_details")
@Data
@Entity
public class vaccinationDetails {

	@Column(name="id")
	private Integer id;
	
	@Column(name=" patient_id")
	private Integer patientId;
	
	@Column(name="vaccine_type")
	private String vaccineType;
	
	@Column(name="vaccine_date")
	private Date vaccineDate;
	
	@Column(name=" created_date")
	private Timestamp createddate;
	
	@Column(name=" center_name")
	private String centerName;
	
	@Column(name="dose_term")
	private Integer doseTerm;
	
	@Column(name="status")
	private Character status;
		
}
