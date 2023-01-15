
<%@ include file="header.jsp"%>
<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Transports</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Transports</li>
				<li class="breadcrumb-item active">Manage Transport</li>
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
						All Transport</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>id</th>
									<th>Transport No</th>
									<th>Type</th>
									<th>Model</th>
									<%--
									<th>Capacity</th>
									 --%>
									<th>Status</th>
									<%--
									<th>Photo</th>
									 --%>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vehicle" items="${vl}">
									<tr>
										<td>${vehicle.vId}</td>
										<td>${vehicle.vNo}</td>
										<td>${vehicle.type}</td>
										<td>${vehicle.model}</td>
										<%--
										<td>${vehicle.capasity}</td>
										 --%>
										 <td>${vehicle.sts}</td>
										<%--
										<td><img alt="vehicle"
											src=${vehicle.vPhoto
												} height="50px"
											width="50px"></td>
											--%>
										<td>
											<form>
												<div class="btn-group" role="group">
													<button class="btn btn-outline-primary"
														formaction="/vehicle" value="${vehicle.vId}" name="id">
														<i class="bi bi-pencil"></i>
													</button>
													<button class="btn btn-outline-danger"
														formaction="/deleteVehicle"
														value="${vehicle.vId}" name="id">
														<i class="bi bi-trash"></i>
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