package com.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name="patient_locations")
@Data
@Entity
public class patientLocations {
	
	@Column (name="id")
	private Integer id;
	
	@Column (name="current_address")
	private String currentAddress;
	
	@Column (name="permanent_address")
	private String curentAddress;
	
	@Column(name="workplace_address")
	private String workplaceAddress;
	
	@Column(name="status")
	private Character status;
	
	@Column(name="patient_id")
	private Integer patientId;
	
}
