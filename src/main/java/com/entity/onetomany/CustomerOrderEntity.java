package com.entity.onetomany;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "customerOrder")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CustomerOrderEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer orderId;
	String itemName;
	
	@ManyToOne
	@JoinColumn(name = "customerId")
	CustomerEntity customerEntity;
}
