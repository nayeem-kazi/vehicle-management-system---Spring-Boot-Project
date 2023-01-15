package com.exam.spring.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.exam.spring.models.TransportModel;

@Repository
public interface TransportModelRepository extends JpaRepository<TransportModel, Integer>{

}
