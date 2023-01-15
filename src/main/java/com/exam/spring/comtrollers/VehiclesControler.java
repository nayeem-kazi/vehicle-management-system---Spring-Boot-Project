package com.exam.spring.comtrollers;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.spring.models.Booking;
import com.exam.spring.models.Invoice;
import com.exam.spring.models.Locations;
import com.exam.spring.models.TransportType;
import com.exam.spring.models.Vehicles;
import com.exam.spring.repositories.VehiclesRepository;
import com.exam.spring.services.LocationsService;
import com.exam.spring.services.VehiclesService;

@Controller
public class VehiclesControler {
	@Autowired
	VehiclesService vs;
	@Autowired
	LocationsService ls;
	@Autowired
	VehiclesRepository vr;

	@PostMapping("/newVehicles")
	private String newUser(@ModelAttribute Vehicles v,@RequestParam String type, Model m) {
		TransportType tt = vs.getTypeInfo(type);
		v.setDescription(tt.getDetails());
		vs.addNewVehicles(v);
		allVehicle(m);
		return "all_vehicles";
	}

	@RequestMapping("/allVehicle")
	private String allVehicle(Model m) {
		List<Vehicles> list = vs.allVehicles(null);
		m.addAttribute("vl", list);
//		List<Object> list = vs.getTransportInfo();
//		m.addAttribute("vl", list);
		return "all_vehicles";
	}

	@RequestMapping("/bookedTransport")
	private String allBookedTransport(Model m) {
		List<Booking> booked = vs.allBooking();
		m.addAttribute("booked", booked);
		return "booked_transport";
	}

	@RequestMapping("/payementHistory")
	private String allPayement(Model m) {
		List<Invoice> payment = vs.allInvoice();
		m.addAttribute("payment", payment);
		return "payment_history";
	}

	
	@RequestMapping("/newVehicle")
	private String newVehicle(Model m) {

		long ltid = vs.getLastTransportId() + 1;
		m.addAttribute("ltid", ltid);
		m.addAttribute("newTitle", "New Transport Information");
		vs.transportSelectionList(m);
		return "new_vehicle";
	}

	@RequestMapping("/vehicle")
	private String findVehicleById(@Param("id") Integer id, Model m) {
		Vehicles vehicle = vs.vehicleById(id);
		m.addAttribute("vcl", vehicle);
		m.addAttribute("updateTitle", "Update Transport Information");
		vs.transportSelectionList(m);
//		return "edit_vehicle";
		return "new_vehicle";
	}

	@GetMapping("/transportDetails")
	private String findAvailableTransportById(@RequestParam Integer id, Model m) {
		Vehicles vehicle = vs.vehicleById(id);
		m.addAttribute("vcl", vehicle);
		return "available_transport_details";
	}

	@GetMapping("/getHire")
	private String hireTransportById(@RequestParam Integer id, Model m) {
		Vehicles vehicle = vs.vehicleById(id);
		m.addAttribute("vcl", vehicle);
		String[] rtr = { "No", "Yes" };
		List<Locations> locations = ls.getLocations();
		m.addAttribute("locations", locations);
		m.addAttribute("rtr", rtr);
		return "hire_transport";
	}

	@GetMapping("/getFare")
	private String transportFareById(@RequestParam Integer id, String pickupLocation, String destination, String ret,
			Date rentFor, Model m) {

		Vehicles vehicle = vs.vehicleById(id);
		m.addAttribute("vcl", vehicle);
		String type = vehicle.getType().toString();
		m.addAttribute("fromDst", pickupLocation);
		m.addAttribute("toDst", destination);
		m.addAttribute("ret", ret);
		m.addAttribute("rentFor", rentFor);

		Double distance = vs.getDistance(pickupLocation, destination);
		m.addAttribute("distance", distance);

		Double perKmFare = vs.getPerKmFair(type);
		Double baseFare = vs.getBaseFair(type);
		Double fare = baseFare + (perKmFare * distance);
		Double netFare = 0.0;
		if (ret.equals("Yes")) {
			netFare = fare * 2;
		} else {
			netFare = fare;
		}
		m.addAttribute("fare", netFare);
		return "hire_transport";
	}

	@RequestMapping("/makeConfirm")
	private String newBooking(@ModelAttribute Booking b, Vehicles v, @RequestParam Integer id, Model m) {
//		Vehicles vehicle = vs.vehicleById(id);
		b.setTransportId(id);
		vs.newBooking(b);
		v.setSts("Hired");
		vs.updateVehiclesById(id, v);
		LocalDate today = LocalDate.now();
		m.addAttribute("today", today);
		m.addAttribute("newBooking", b);
		m.addAttribute("invoiceId", vs.getLastInvoiceNo() + 1);
		return "make_payment";
	}

//	@RequestMapping("/release")
//	private String release(@ModelAttribute Vehicles v, @RequestParam Integer id, Model m) {
//		v.setSts("Available");
//		vs.updateVehiclesById(id, v);
//		allVehicle(m);
//		return "all_vehicles";
//	}
	@RequestMapping("/release")
	private String release(@ModelAttribute Vehicles v,@ModelAttribute Booking b, @RequestParam Integer id, Model m) {
		v.setSts("Available");
		b.setStatus("Released");
		vs.updateVehiclesById(id, v);
		allVehicle(m);
		return "all_vehicles";
	}

	@RequestMapping("/duePayment")
	private String duePayment(@RequestParam Integer id, Model m) {
//		Vehicles vehicle = vs.vehicleById(id);
		Booking booking = vs.bookingById(id);
		LocalDate today = LocalDate.now();
		m.addAttribute("today", today);
		m.addAttribute("booking", booking);
		m.addAttribute("invoiceId", vs.getLastInvoiceNo() + 1);
		return "due_payment";
	}

	@RequestMapping("/payment")
	private String payement(@ModelAttribute Invoice invoice, Booking b, @RequestParam Integer bookingId,
			Double payableAmmount, Double payment, Model m) {
//		Vehicles vehicle = vs.vehicleById(id);

		vs.newInvoice(invoice);
		Double due = payableAmmount - payment;
		b.setDue(due);
		vs.updateBookingById(bookingId, b);
		m.addAttribute("newBooking", b);
		m.addAttribute("newInvoice", invoice);
		m.addAttribute("fare", payableAmmount);

		return "payment_info";
	}

	@GetMapping("/deleteVehicle")
	private String deleteVehicleById(@Param("id") Integer id, Model m) {
		Vehicles v = vs.vehicleById(id);
		vs.deleteVehicles(v);
		allVehicle(m);
		return "all_vehicles";
	}

	@RequestMapping("/search")
	public String Findbyname(@RequestParam String clientName, Model m) {
		m.addAttribute("booked", vs.getBookingByName(clientName));
		System.out.println("ok");
		return "booked_transport";

	}
//	@RequestMapping("/search")
//	public String Findbyname(@RequestParam String vNo,Model m) {
//		m.addAttribute("vl",vr.getVehicleByVno(vNo));
//		System.out.println("ok");
//		return "all_vehicles";
//		
//	}

	@RequestMapping("/transportBooking")
	public String checkAvailableTransport(Model m) {
		List<Vehicles> list = vs.getAvailableTransports();
		m.addAttribute("vl", list);
		return "available_transports";
	}
	
	@RequestMapping("/transport")
	public String transportType(@ModelAttribute TransportType tt, Model m) {
		
		List<TransportType> transportType = vs.getTransportType();
		m.addAttribute("transportType", transportType);
		m.addAttribute("lttid", vs.getLastTransportTypeId()+1);
		return "transport";
	}

}
