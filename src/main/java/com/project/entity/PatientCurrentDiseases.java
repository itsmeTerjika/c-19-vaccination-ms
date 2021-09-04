package com.project.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name = "patient_current_diseases")
@Data
@Entity
public class PatientCurrentDiseases {
	
	@Column(name="id")
	private Integer Id;
	
	@Column(name="patient_id")
	private Integer patientId;
	
	@Column(name="disease_name")
	private String diseaseName;
	
	@Column(name="disease_identified_date")
	private Date diseaseIdentifiedDate;
	
	@Column(name="last_medical_treatment_date")
	private Date lastMedicalTreatmentDate;
	
	@Column(name="attachment_id")
	private Integer attachmentId;
	
	@Column(name="other_detail")
	private String otherDetail;
	
	@Column(name="status")
	private Character status;
	
}
