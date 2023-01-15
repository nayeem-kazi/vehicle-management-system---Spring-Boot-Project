<%@ include file="header.jsp"%>
<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Vehicles</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item active">contacts</li>
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
					<u class="text-danger">Contacts</u></div>
					<div>
						<table class="table table-striped table-hover">
							<thead>

								<tr>
									<th>Name</th>
									<th>Designation</th>
									<th>Mobile</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="empl" items="${el}">
									<tr>
										<td>${empl.eFirstName}${empl.eLasttName}</td>
										<td>${empl.eDesignation}</td>
										<td><a href="tel:${empl.eMobile}">${empl.eMobile}</a></td>
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