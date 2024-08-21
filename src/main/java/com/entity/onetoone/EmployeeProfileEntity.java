package com.entity.onetoone;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "employeeProfile")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class EmployeeProfileEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer employeeProfileId;
	String address;
}
