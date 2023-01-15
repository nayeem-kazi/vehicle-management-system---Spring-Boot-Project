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
				<li class="breadcrumb-item active">Details</li>
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
						<span class="text-danger"> ${vcl.getModel()} </span>
					</div>
					<div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Transport No</th>
									<td>${vcl.getvNo()}</td>
								</tr>
								<tr>
									<th scope="row">Brand</th>
									<td>${vcl.getvBrand()}</td>
								</tr>
								<tr>
									<th scope="row">Type</th>
									<td>${vcl.getType()}</td>
								</tr>
								<tr>
									<th scope="row">Details</th>
									<td>${vcl.getDescription()}</td>
								</tr>
								<tr>
									<th scope="row">Capacity</th>
									<td>${vcl.getCapasity()}</td>
								</tr>
								<tr>
									<th scope="row">Base Fare</th>
									<td>${vcl.getCapasity()}</td>
								</tr>
								<tr>
									<th scope="row">Per KM Fare</th>
									<td>${vcl.getCapasity()}</td>
								</tr>
							</tbody>
						</table>
						
					</div>
					<form>
						<div class="mb-3">
							<button class="btn btn-outline-primary float-end"
								formaction="/getHire" value=${vcl.vId } name="id">HIRE
								THIS</button>
							<br>
						</div>
					</form>
				</div>

			</section>
			<%-- End Text Template --%>

		</div>
	</section>

</main>
<%-- footer --%>
<%@ include file="footer.jsp"%>