package org.egov.vendor.web.model.hrms;


import jakarta.validation.constraints.NotNull;

import org.egov.vendor.web.model.AuditDetails;
import org.springframework.validation.annotation.Validated;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Validated
@EqualsAndHashCode(exclude = {"auditDetails"})
@Builder
@AllArgsConstructor
@Getter
@NoArgsConstructor
@Setter
@ToString
public class DepartmentalTest {

	private String id;

	@NotNull
	private String test;

	@NotNull
	private Long yearOfPassing;

	private String remarks;
	
	private String tenantId;
	
	private AuditDetails auditDetails;

	private Boolean isActive;

}
