<%@ include file="header.jsp"%>
<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Vehicles</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Employee</li>
				<li class="breadcrumb-item active">Manage Employee</li>
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
						All Employee</div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>id</th>
									<th>Name</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Address</th>
									<th>DOB</th>
									<th>Joining Date</th>

									<th>Photo</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="empl" items="${el}">
									<tr>
										<td>${empl.eId}</td>
										<td>${empl.eFirstName}${empl.eLasttName}</td>
										<td>${empl.eEmail}</td>
										<td>${empl.eMobile}</td>
										<td>${empl.eAddress}</td>
										<td>${empl.eDOB}</td>
										<td>${empl.eJoiningDate}</td>

										<td><img alt="profile" src=${empl.ePhoto } height="50px"
											width="50px"></td>
										<td>
											<form>
												<div class="btn-group" role="group">
													<button class="btn btn-outline-primary"
														formaction="/employee" value=${empl.eId } name="id">
															<i class="bi bi-pencil"></i>
														</button>
													<button class="btn btn-outline-danger"
														formaction="/deleteEmployee" value=${empl.eId } name="id">
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