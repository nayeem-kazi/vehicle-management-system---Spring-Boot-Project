package com.exam.spring.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.TransportBrand;

@Repository
public interface TransportBrandRepository extends JpaRepository<TransportBrand, Integer>{

}
