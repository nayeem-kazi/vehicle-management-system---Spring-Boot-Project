<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Transport</h1>
		<nav>
			<ol class="breadcrumb">				
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Booking Transport</li>
				<li class="breadcrumb-item">Available Transport</li>
				<li class="breadcrumb-item">Details</li>
				<li class="breadcrumb-item active">Hire</li>
			</ol>
		</nav>
	</div>
	<%-- End Page Title --%>

	<section class="section dashboard">
		<div class="row">

			<%-- Text Template --%>
			<section>
				<form>
					<div class="container container-fluid p-3 mt-2 mb-3 shadow">
						<div class="d-flex justify-content-center pb-2 fs-2 fw-bolder">
							<span class="text-danger"> ${vcl.model} </span>
						</div>
						<div>
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">Transport No</th>
										<td>${vcl.vNo}</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mb-3">
							<div class="mb-3 row">
								<label for="pickupLocation" class="col-sm-2 col-form-label">Pick-up
									Location : </label>
								<div class="col-sm-4">
									<select class="form-control" id="pickupLocation"
										name="pickupLocation">
										<c:forEach var="locations" items="${locations}">
											<option>${locations.district}</option>
										</c:forEach>
										<option>${fromDst}</option>
									</select>
								</div>
								<label for="destination" class="col-sm-2 col-form-label">Destination
									: </label>
								<div class="col-sm-4">
									<select class="form-control" id="destination"
										name="destination">
										<c:forEach var="locations" items="${locations}">
											<option>${locations.district}</option>
										</c:forEach>
										<option>${toDst}</option>
									</select>
								</div>
							</div>
							<div class="mb-3 row">
								<label for="ret" class="col-sm-2 col-form-label">Return
									Trip :</label>
								<div class="col-sm-4">
									<select class="form-control" id="ret" name="ret">
										<c:forEach var="rtr" items="${rtr}">
											<option>${rtr}</option>
										</c:forEach>
										<option>${ret}</option>
									</select>
								</div>
								<label for="rentFor" class="col-sm-2 col-form-label">Rent
									for : </label>
								<div class="col-sm-4">
									<input type="date" class="form-control" id="rentFor"
										name="rentFor" value=${rentFor}>
								</div>
							</div>
							<div class="mb-3 row">
								<div class="col-sm-12">
									<button formaction="/getFare" value=${vcl.vId } name="id"
										class="btn btn-outline-primary float-end">Load</button>
								</div>
							</div>
							<hr>
							<%-- Get Fair --%>
							<div class="mb-3 row">
								<label for="" class="col-sm-2 col-form-label">Total
									Distance :</label>
								<div class="col-sm-10">
									<input type="text" readonly="readonly"
										class="form-control text-danger" id="" name=""
										value="${distance}  ">
								</div>

							</div>
							<div class="mb-3 row">
								<label for="fare" class="col-sm-2 col-form-label">Fare :</label>
								<div class="col-sm-10">
									<input type="text" readonly="readonly"
										class="form-control text-danger" id="fare" name="fare"
										value="${fare}">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="clientName" class="col-sm-2 col-form-label">Client
									Name :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control text-danger"
										id="clientName" name="clientName">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="mobileNo" class="col-sm-2 col-form-label">Mobile
									No :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control text-danger"
										id="mobileNo" name="mobileNo">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="address" class="col-sm-2 col-form-label">Address
									:</label>
								<div class="col-sm-10">
									<textarea rows="" cols="" class="form-control text-danger"
										id="address" name="address"></textarea>
								</div>
							</div>
						</div>

						<div class="mb-3">

							<button class="btn btn-outline-primary float-end"
								formaction="/makeConfirm" value=${vcl.vId } name="id">
								Confirm</button>

							<br>
						</div>
					</div>
				</form>
			</section>
			<%-- End Text Template --%>

		</div>
	</section>

</main>
<%-- footer --%>
<%@ include file="footer.jsp"%>