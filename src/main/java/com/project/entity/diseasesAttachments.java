package com.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Table(name="diseases_attachments")
@Data
@Entity
public class diseasesAttachments {

	@Column(name="id")
	private Integer id;
	
	@Column(name="patient_id")
	private Integer patientId;
	
	@Column(name="attachment_name")
	private String attachmentName;
	
	@Column(name="attachment")
	private String attachment;
	
	@Column(name="status")
	private Character status;
	
}
