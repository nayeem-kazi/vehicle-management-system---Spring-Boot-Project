<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Settings</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Settings</li>
				<li class="breadcrumb-item active">Locations</li>
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
						Add New Transport Type</div>
					<form action="/newLocation" method="POST">

						<div class="mb-3 row">
							<label for="tbId" class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="tbId" name="tbId"
									readonly="readonly" value="${lttid}">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="type" class="col-sm-2 col-form-label">Type
								 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="type"
									name="type" value="">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="details" class="col-sm-2 col-form-label">Details
								 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="details"
									name="details" value="">
							</div>
						</div>
						
						<div class="mb-3 row">
							<label for="baseFair" class="col-sm-2 col-form-label">Base Fare
								 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="baseFair"
									name="baseFair" value="">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="perKmFair" class="col-sm-2 col-form-label">Per KM Fare
								 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="perKmFair"
									name="perKmFair" value="">
							</div>
						</div>
						<div class="mb-3">
							<button class="btn btn-outline-primary float-end">Submit</button>
							<br>
						</div>
					</form>
				</div>


				<div class="container container-fluid p-3 mt-2 mb-3 shadow">
					<div class="d-flex justify-content-center pb-2 fs-2 fw-bolder">
						Available Transport Type</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>id</th>
									<th>Type</th>
									<th>Details</th>
									<th>Base Fare</th>
									<th>Per km Fare</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="transportType" items="${transportType}">
									<tr>
										<td>${transportType.tbId}</td>
										<td>${transportType.type}</td>										
										<td>${transportType.details}</td>										
										<td>${transportType.baseFair}</td>										
										<td>${transportType.perKmFair}</td>										
										<td>
											<form>
												<div class="btn-group" role="group">
													<button class="btn btn-outline-primary"
														formaction="#" value="${transportType.tbId}" name="id">
														<i class="bi bi-pencil"></i>
													</button>
													<button class="btn btn-outline-danger"
														formaction="#"
														value="${transportType.tbId}" name="id">
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
<%-- footer --%>
<%@ include file="footer.jsp"%>