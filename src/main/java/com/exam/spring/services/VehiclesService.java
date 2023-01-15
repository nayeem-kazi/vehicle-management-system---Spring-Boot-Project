package com.exam.spring.services;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.exam.spring.models.Booking;
import com.exam.spring.models.Invoice;
import com.exam.spring.models.TransportBrand;
import com.exam.spring.models.TransportModel;
import com.exam.spring.models.TransportType;
import com.exam.spring.models.Vehicles;
import com.exam.spring.repositories.BookingRepository;
import com.exam.spring.repositories.DistanceWithLocationRepository;
import com.exam.spring.repositories.EmployeeRepository;
import com.exam.spring.repositories.InvoiceRepository;
import com.exam.spring.repositories.TransportBrandRepository;
import com.exam.spring.repositories.TransportModelRepository;
import com.exam.spring.repositories.TransportTypeRepository;
import com.exam.spring.repositories.VehiclesRepository;

@Service
public class VehiclesService {
	@Autowired
	VehiclesRepository vr;
	@Autowired
	EmployeeService es;
	@Autowired
	EmployeeRepository er;
	@Autowired
	TransportBrandRepository tbr;
	@Autowired
	TransportModelRepository tmr;
	@Autowired
	TransportTypeRepository ttr;
	@Autowired
	DistanceWithLocationRepository dwlr;
	@Autowired
	BookingRepository br;
	@Autowired
	InvoiceRepository ir;

	public void addNewVehicles(Vehicles v) {
		vr.save(v);
	}

	public void dashboard(Model m) {
		LocalDate today = LocalDate.now();
		m.addAttribute("today", today);
		
		LocalTime time = LocalTime.now();
		m.addAttribute("time", time);
				
		long totalEmployee = es.getTotalEmployee();
		m.addAttribute("totalEmployee", totalEmployee);
		
		long totalDriver = es.getTotalDriver();
		m.addAttribute("totalDriver", totalDriver);
		
		long totalHelper = es.getTotalHelper();
		m.addAttribute("totalHelper", totalHelper);
		
		long totalTransport = vr.getTotalTransport();
		m.addAttribute("totalTransport", totalTransport);
		
		long HiredTransport = vr.getHiredTransport();
		m.addAttribute("HiredTransport", HiredTransport);
		
		long AvailableTransport = vr.getAvailableTransport();
		m.addAttribute("AvailableTransport", AvailableTransport);
	}
	public Vehicles updateVehiclesById(Integer id, Vehicles v) {
		Vehicles vehicle = vr.findById(id).get();
		if (Objects.nonNull(v.getvBrand()) && !"".equalsIgnoreCase(v.getvBrand())) {
			vehicle.setvBrand(v.getvBrand());
		}
		if (Objects.nonNull(v.getType()) && !"".equalsIgnoreCase(v.getType())) {
			vehicle.setType(v.getType());
		}
		if (Objects.nonNull(v.getModel()) && !"".equalsIgnoreCase(v.getModel())) {
			vehicle.setModel(v.getModel());
		}
		if (Objects.nonNull(v.getCapasity()) && !"".equalsIgnoreCase(v.getCapasity())) {
			vehicle.setCapasity(v.getCapasity());
		}
		if (Objects.nonNull(v.getvNo()) && !"".equalsIgnoreCase(v.getvNo())) {
			vehicle.setvNo(v.getvNo());
		}
		if (Objects.nonNull(v.getDescription()) && !"".equalsIgnoreCase(v.getDescription())) {
			vehicle.setDescription(v.getDescription());
		}
		if (Objects.nonNull(v.getvPhoto()) && !"".equalsIgnoreCase(v.getvPhoto())) {
			vehicle.setvPhoto(v.getvPhoto());
		}
		if (Objects.nonNull(v.getSts()) && !"".equalsIgnoreCase(v.getSts())) {
			vehicle.setSts(v.getSts());
		}

		return vr.save(vehicle);
	}

	public void deleteVehicles(Vehicles v) {
		vr.delete(v);
	}

	public List<Vehicles> allVehicles(Vehicles v) {
		return vr.findAll();
	}
	public List<Object> getTransportInfo() {
		return vr.getTransportInfo();
	}

	public Vehicles vehicleById(int id) {
		return vr.findById(id).get();
	}

	public void transportSelectionList(Model m) {
		List<TransportBrand> brandlist = getTransportBrand();
		m.addAttribute("brandlist", brandlist);

		List<TransportModel> modellist = getTransportModel();
		m.addAttribute("modellist", modellist);

		List<TransportType> typelist = getTransportType();
		m.addAttribute("typelist", typelist);
	}

	public long getTotalTransport() {
		return vr.getTotalTransport();
	}

	public long getHiredTransport() {
		return vr.getHiredTransport();
	}

	public long getAvailableTransport() {
		return vr.getAvailableTransport();
	}

	public long getLastTransportId() {
		return vr.getLastTransportId();
	}

	public List<Vehicles> getAvailableTransports() {
		return vr.getAvailableTransports();
	}

	public List<TransportBrand> getTransportBrand() {
		return tbr.findAll();
	}

	public List<TransportModel> getTransportModel() {
		return tmr.findAll();
	}

	public List<TransportType> getTransportType() {
		return ttr.findAll();
	}
	public TransportType getTypeInfo(String type) {
		return ttr.getTypeInfo(type);
	}
	public Double getDistance(String fromDistrict, String toDistrict) {
		return dwlr.getDistance(fromDistrict, toDistrict);
	}

	public Double getBaseFair(String type) {
		return ttr.getBaseFair(type);
	}

	public Double getPerKmFair(String type) {
		return ttr.getPerKmFair(type);
	}

	public void newBooking(Booking b) {
		br.save(b);
	}

	public void deleteBooking(Booking b) {
		br.delete(b);
	}

	public List<Booking> allBooking() {
		return br.findAll();
	}

	public Booking bookingById(int id) {
		return br.findById(id).get();
	}

	public Booking updateBookingById(int id, Booking b) {
		Booking booking = br.findById(id).get();
		if (Objects.nonNull(b.getTransportId())) {
			booking.setTransportId(b.getTransportId());
		}
		if (Objects.nonNull(b.getPickupLocation()) && !"".equalsIgnoreCase(b.getPickupLocation())) {
			booking.setPickupLocation(b.getPickupLocation());
		}
		if (Objects.nonNull(b.getDestination()) && !"".equalsIgnoreCase(b.getDestination())) {
			booking.setDestination(b.getDestination());
		}
		if (Objects.nonNull(b.getRet()) && !"".equalsIgnoreCase(b.getRet())) {
			booking.setRet(b.getRet());
		}
		if (Objects.nonNull(b.getRentFor())) {
			booking.setRentFor(b.getRentFor());
		}
		if (Objects.nonNull(b.getFare())) {
			booking.setFare(b.getFare());
		}
		if (Objects.nonNull(b.getDue())) {
			booking.setDue(b.getDue());
		}
		if (Objects.nonNull(b.getClientName()) && !"".equalsIgnoreCase(b.getClientName())) {
			booking.setClientName(b.getClientName());
		}
		if (Objects.nonNull(b.getMobileNo()) && !"".equalsIgnoreCase(b.getMobileNo())) {
			booking.setMobileNo(b.getMobileNo());
		}
		if (Objects.nonNull(b.getAddress()) && !"".equalsIgnoreCase(b.getAddress())) {
			booking.setAddress(b.getAddress());
		}
		return br.save(booking);
	}

	public void newInvoice(Invoice i) {
		ir.save(i);
	}

	public void deleteInvoice(Invoice i) {
		ir.delete(i);
	}

	public List<Invoice> allInvoice() {
		return ir.findAll();
	}

	public Invoice InvoiceById(int id) {
		return ir.findById(id).get();
	}

	public Integer getLastInvoiceNo() {
		return ir.getLastInvoiceId();
	}

	public List<Booking> getBookingByName(String clientName) {
		return br.getBookingByName(clientName);
	}

	public void addTransportType(TransportType tt) {
		ttr.save(tt);
		
	}

	public int getLastTransportTypeId() {
		// TODO Auto-generated method stub
		return ttr.getLastTransportTypeId();
	}

}
