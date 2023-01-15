<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Transports</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Booking Transport</li>
				<li class="breadcrumb-item active">Available Transport</li>
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
						Available Transports</div>

					<div>
						<div class="container">
							<div class="row">
								<c:forEach var="vehicle" items="${vl}">
									<div class="col-md-4">
										<div class="card m-2 shadow" style="width: 100%;">
											<img src="assets/img/truck.jpg" class="card-img-top"
												height="200px" width="" alt="trnsport photo">
											<div class="card-body">
												<h5 class="card-title">${vehicle.type}
													<br> <span><small class="">${vehicle.model}</small></span>
												</h5>
												<form>
													<div class="btn-group" role="group">
														<button class="btn btn-outline-primary"
															formaction="/transportDetails" value=${vehicle.vId }
															name="id">Details</button>
													</div>
												</form>
											</div>
										</div>
									</div>

								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</section>
			<%-- End Text Template --%>
		</div>
	</section>
</main>
<%-- footer --%>
<%@ include file="footer.jsp"%>