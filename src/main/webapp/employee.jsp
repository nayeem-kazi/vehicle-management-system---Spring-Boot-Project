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
						Add New Location</div>
					<form action="/newLocation" method="POST">

						<div class="mb-3 row">
							<label for="lId" class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lId" name="lId"
									readonly="readonly" value="${lid} ${locationId.lId}">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="district" class="col-sm-2 col-form-label">Location
								Name </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="district"
									name="district" value="${locationId.district}">
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
						Available Locations</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>id</th>
									<th>Location</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="location" items="${location}">
									<tr>
										<td>${location.lId}</td>
										<td>${location.district}</td>										
										<td>
											<form>
												<div class="btn-group" role="group">
													<button class="btn btn-outline-primary"
														formaction="/locationById" value="${location.lId}" name="id">
														<i class="bi bi-pencil"></i>
													</button>
													<button class="btn btn-outline-danger"
														formaction="/deletelocation"
														value="${location.lId}" name="id">
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