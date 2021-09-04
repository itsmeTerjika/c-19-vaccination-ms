package com.project.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name = "daily_health_status")
@Data
@Entity
public class dailyHealthStatus {
	
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "patient_id")
	private Integer patientId;
	
	@Column(name = "created_date")
	private Timestamp createdDate;
	
	@Column(name = "date_str")
	private String dateString;
	
	@Column(name = "record_date")
	private Date recordDate;
	
	@Column(name = "oxygen_level")
	private String oxygenLevel;
	
	@Column(name = "temperature")
	private String temp;
	
	@Column(name = "pulse_rate")
	private String pulseRate;
	
	@Column(name = "other_detail")
	private String otherDetail;
	
	@Column(name = "status")
	private Character status;

}
