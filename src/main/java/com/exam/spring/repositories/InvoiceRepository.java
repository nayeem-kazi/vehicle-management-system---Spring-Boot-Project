package com.exam.spring.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exam.spring.models.Invoice;

@Repository
public interface InvoiceRepository extends JpaRepository<Invoice, Integer>{
	@Query("SELECT MAX(i.invoiceId) FROM Invoice i")
	public Integer getLastInvoiceId();
}
