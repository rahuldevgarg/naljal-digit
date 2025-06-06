package org.egov.vendor.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import jakarta.validation.Valid;

import org.egov.common.contract.request.RequestInfo;
import org.egov.tracer.model.CustomException;
import org.egov.vendor.config.VendorConfiguration;
import org.egov.vendor.repository.VendorRepository;
import org.egov.vendor.util.VendorErrorConstants;
import org.egov.vendor.validator.VendorValidator;
import org.egov.vendor.web.model.Vendor;
import org.egov.vendor.web.model.VendorReportData;
import org.egov.vendor.web.model.VendorRequest;
import org.egov.vendor.web.model.VendorSearchCriteria;
import org.egov.vendor.web.model.user.User;
import org.egov.vendor.web.model.user.UserDetailResponse;
import org.egov.vendor.web.model.vehicle.Vehicle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class VendorService {

	@Autowired
	private VendorValidator vendorValidator;

	@Autowired
	private VendorRepository repository;


	@Autowired
	private EnrichmentService enrichmentService;
	
	@Autowired
	private VehicleService vehicleService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private VendorConfiguration config;
	

	public Vendor create(VendorRequest vendorRequest) {
		RequestInfo requestInfo = vendorRequest.getRequestInfo();
		String tenantId = vendorRequest.getVendor().getTenantId().split("\\.")[0];
		if (vendorRequest.getVendor().getTenantId().split("\\.").length == 1) {
			throw new CustomException("Invalid TenantId", " Application cannot be create at StateLevel");
		}
		vendorRequest.getVendor().setName(vendorRequest.getVendor().getName().trim());
		vendorRequest.getVendor().getOwner().setName(vendorRequest.getVendor().getOwner().getName().trim());
		
		vendorValidator.validateCreate(vendorRequest);
		enrichmentService.enrichCreate(vendorRequest);
		repository.save(vendorRequest);
		return vendorRequest.getVendor();

	}

	public List<Vendor> Vendorsearch(VendorSearchCriteria criteria, RequestInfo requestInfo) {

		List<Vendor> vendorList = new LinkedList<>();
		List<String> uuids = new ArrayList<String>();
		UserDetailResponse userDetailResponse;
		
		vendorValidator.validateSearch(requestInfo, criteria);
		
		if( criteria.getMobileNumber() !=null) {
			userDetailResponse = userService.getOwner(criteria,requestInfo);
			if(userDetailResponse !=null && userDetailResponse.getUser() != null && userDetailResponse.getUser().size() >0) {
				uuids = userDetailResponse.getUser().stream().map(User::getUuid).collect(Collectors.toList());
				if(CollectionUtils.isEmpty(criteria.getOwnerIds())) {
					criteria.setOwnerIds(uuids);
				}else {
					criteria.getOwnerIds().addAll(uuids);
				}
			}
		}
		
		if(!CollectionUtils.isEmpty(criteria.getVehicleRegistrationNumber()) || StringUtils.hasLength(criteria.getVehicleType())) {
			List<Vehicle> vehicles = vehicleService.getVehicles(null, criteria.getVehicleRegistrationNumber(), criteria.getVehicleType(), requestInfo, criteria.getTenantId());
			if(CollectionUtils.isEmpty(vehicles)) {
				return new ArrayList<Vendor>();
			}
			if(CollectionUtils.isEmpty(criteria.getVehicleIds())) {
				criteria.setVehicleIds(vehicles.stream().map(Vehicle::getId).collect(Collectors.toList()));
			}else {
				criteria.getVehicleIds().addAll(vehicles.stream().map(Vehicle::getId).collect(Collectors.toList()));
			}
			
			
		}
		
		if(!CollectionUtils.isEmpty(criteria.getVehicleIds())) {
			List<String> vendorIds  = repository.getVendorWithVehicles(criteria.getVehicleIds());
			if(CollectionUtils.isEmpty(vendorIds)) {
				return new ArrayList<Vendor>();
			}else {
				if(CollectionUtils.isEmpty(criteria.getIds())) {
					criteria.setIds(vendorIds);
				}else {
					criteria.getIds().addAll(vendorIds);
				}					
			}
		}
		
		vendorList = repository.getVendorData(criteria);
		if (!vendorList.isEmpty()) {
			enrichmentService.enrichVendorSearch(vendorList, requestInfo, criteria.getTenantId());
		}
		

		if (vendorList.isEmpty()) {
			return Collections.emptyList();
		}

		return vendorList;

	}

	public List<Vendor> vendorPlainSearch(@Valid VendorSearchCriteria criteria, RequestInfo requestInfo) {
		 List<Vendor> vendorList = getVendorPlainSearch(criteria, requestInfo);
		return vendorList;
	}

	private List<Vendor> getVendorPlainSearch(@Valid VendorSearchCriteria criteria, RequestInfo requestInfo) {
		if (criteria.getLimit() != null && criteria.getLimit() > config.getMaxSearchLimit())
            criteria.setLimit(config.getMaxSearchLimit());

        List<String> ids = null;

        if(criteria.getIds() != null && !criteria.getIds().isEmpty())
            ids = criteria.getIds();
        else
            ids = repository.fetchVendorIds(criteria);

        if(ids.isEmpty())
            return Collections.emptyList();

        VendorSearchCriteria vendorCriteria = VendorSearchCriteria.builder().ids(ids).build();

        List<Vendor> vendorList = repository.getVendorPlainSearch(vendorCriteria);
        if (!vendorList.isEmpty()) {
			enrichmentService.enrichVendorSearch(vendorList, requestInfo, criteria.getTenantId());
		}
        
        return vendorList;
	}

	public List<VendorReportData> vendorReport(String monthStartDate, String tenantId, Integer offset, Integer limit, RequestInfo requestInfo)
	{

		DateTimeFormatter formatter=DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate startDate= LocalDate.parse(monthStartDate,formatter);
//		LocalDate endDate=LocalDate.parse(monthEndDate,formatter);

		Long monthStartDateTime= LocalDateTime.of(startDate.getYear(),startDate.getMonth(),startDate.getDayOfMonth(),
				0,0,0).atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
//		Long monthEndDateTime=LocalDateTime.of(endDate, LocalTime.MAX).atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

		List<VendorReportData> vendorReportData=repository.getVendorReportData(monthStartDateTime,tenantId,offset,limit);
				return vendorReportData;

	}
}
