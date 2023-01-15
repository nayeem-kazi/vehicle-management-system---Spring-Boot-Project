
<%@ include file="header.jsp"%>
<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Vehicles</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Transports</li>
				<li class="breadcrumb-item active">Booked Transport</li>
			</ol>
		</nav>
	</div>
	<%-- End Page Title --%>

	<section class="section dashboard">
		<div class="row">

			<%-- Text Template --%>
			<section>
				<div class="container container-fluid p-3 mt-2 mb-3 shadow">
					<div class="d-flex justify-content-center pb-2 fs-2 fw-bolder">
						Booked Transport List</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>Booking ID</th>
									<th>Transport ID</th>
									<th>Pickup Location</th>
									<th>Destination</th>
									<th>Pickup Date</th>
									<th>Client Name</th>
									<th>Payment Status</th>
									<th>Status</th>
									<th colspan="2">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="booked" items="${booked}">
									<tr>
										<td>${booked.bookingId}</td>
										<td>${booked.transportId}</td>
										<td>${booked.pickupLocation}</td>
										<td>${booked.destination}</td>
										<td>${booked.rentFor}</td>
										<td>${booked.clientName}</td>
										<td> ${booked.due}</td>
										<td> ${booked.status}</td>

										<td colspan="2">
											<form>
												<div class="btn-group" role="group">
													<button class="btn btn-outline-primary"
														formaction="/duePayment" value="${booked.bookingId}" name="id">
														<i class="bi bi-cash-coin"> Due Payment</i>
													</button>
													<button class="btn btn-outline-success"
														formaction="/release" value="${booked.transportId}" name="id">
														<i class="bi bi-check-circle">Release</i>
													</button>
												</div>
											</form>

										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
				</div>
			</section>
			<%-- End Text Template --%>

		</div>
	</section>

</main>
<%@ include file="footer.jsp"%>