
<%@ include file="header.jsp"%>
<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Vehicles</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Transports</li>
				<li class="breadcrumb-item active">Payment History</li>
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
						Payment History</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>Invoice ID</th>
									<th>Booking ID</th>
									<th>Date</th>
									<th>Amount</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="payment" items="${payment}">
									<tr>
										<td>${payment.invoiceId}</td>
										<td>${payment.bookingId}</td>
										<td>${payment.today}</td>										
										<td>${payment.payment}</td>										
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