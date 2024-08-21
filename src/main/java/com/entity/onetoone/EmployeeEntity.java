package com.entity.onetoone;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "employee")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class EmployeeEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer employeeId;
	String name;
	
	@OneToOne
	@JoinColumn(name = "employeeProfileId")
	EmployeeProfileEntity employeeProfileEntity;
}
