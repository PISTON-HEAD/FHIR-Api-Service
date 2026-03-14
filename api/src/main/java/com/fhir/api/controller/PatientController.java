package com.fhir.api.controller;

import com.fhir.api.dto.CreatePatientRequest;
import com.fhir.api.dto.PatientIdentifierDto;
import com.fhir.api.dto.PatientResponse;
import com.fhir.api.entity.Patient;
import com.fhir.api.entity.PatientIdentifier;
import com.fhir.api.repository.PatientRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/patients")
public class PatientController {

    private final PatientRepository patientRepository;

    public PatientController(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @PostMapping
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<PatientResponse> createPatient(@RequestBody CreatePatientRequest request) {
        try {
            Patient patient = new Patient();
            patient.setFirstName(request.getFirstName());
            patient.setMiddleName(request.getMiddleName());
            patient.setLastName(request.getLastName());
            patient.setDateOfBirth(LocalDate.parse(request.getDateOfBirth()));
            patient.setGender(request.getGender());
            patient.setPhone(request.getPhone());
            patient.setEmail(request.getEmail());
            patient.setAddressLine1(request.getAddressLine1());
            patient.setAddressLine2(request.getAddressLine2());
            patient.setCity(request.getCity());
            patient.setState(request.getState());
            patient.setPostalCode(request.getPostalCode());
            patient.setCountry(request.getCountry());
            patient.setActive(true);

            // Create identifiers
            if (request.getIdentifiers() != null) {
                List<PatientIdentifier> identifiers = new ArrayList<>();
                for (PatientIdentifierDto dto : request.getIdentifiers()) {
                    PatientIdentifier identifier = new PatientIdentifier();
                    identifier.setIdentifierType(dto.getType());
                    identifier.setIdentifierValue(dto.getValue());
                    identifier.setSystem(dto.getSystem());
                    identifier.setPatient(patient);
                    identifiers.add(identifier);
                }
                patient.setIdentifiers(identifiers);
            }

            Patient savedPatient = patientRepository.save(patient);

            PatientResponse response = PatientResponse.builder()
                    .id(savedPatient.getId())
                    .firstName(savedPatient.getFirstName())
                    .lastName(savedPatient.getLastName())
                    .message("Patient created successfully")
                    .build();

            return ResponseEntity.status(HttpStatus.CREATED).body(response);
        } catch (Exception e) {
            PatientResponse errorResponse = PatientResponse.builder()
                    .message("Error creating patient: " + e.getMessage())
                    .build();
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
        }
    }
}
