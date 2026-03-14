package com.fhir.api.repository;

import com.fhir.api.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface PatientRepository extends JpaRepository<Patient, UUID> {
    
    @Query("SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.identifiers WHERE p.gender = :gender")
    List<Patient> findByGender(@Param("gender") String gender);
    
    @Query("SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.identifiers WHERE LOWER(p.lastName) = LOWER(:lastName)")
    List<Patient> findByLastName(@Param("lastName") String lastName);
    
    @Query("SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.identifiers WHERE p.id = :id")
    Optional<Patient> findByIdWithIdentifiers(@Param("id") UUID id);
    
    @Query("SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.identifiers i WHERE i.identifierValue = :identifier")
    Optional<Patient> findByIdentifier(@Param("identifier") String identifier);
    
    @Query("SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.identifiers")
    List<Patient> findAllWithIdentifiers();
}
