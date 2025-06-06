package org.egov.vendor.web.model.hrms;


import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

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
public class Jurisdiction {

    private String id;

    @NotNull
    @Size(min=2, max=100)
    private String hierarchy;

    @NotNull
    @Size(min=2, max=100)
    private String boundary;

    @NotNull
    @Size(max=256)
    private String boundaryType;
    
    private String tenantId;

    private AuditDetails auditDetails;

    private Boolean isActive;

}
