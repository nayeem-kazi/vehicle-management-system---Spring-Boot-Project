<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Transports</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Transports</li>
				<li class="breadcrumb-item active">New Transport</li>
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
						${updateTitle}${newTitle}</div>
					<form action="/newVehicles" method="POST">

						<div class="mb-3 row">
							<label for="vId" class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="vId" name="vId"
									readonly="readonly" value="${ltid} ${vcl.getvId()}">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="vBrand" class="col-sm-2 col-form-label">Brand
							</label>
							<div class="col-sm-10">
								<select class="form-control" id="vBrand" name="vBrand">
									<option>${vcl.getvBrand()}</option>
									<c:forEach var="brandlist" items="${brandlist}">
										<option>${brandlist.brand}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="type" class="col-sm-2 col-form-label"> Type</label>
							<div class="col-sm-10">
								<select class="form-control" id="type" name="type">
									<option>${vcl.getType()}</option>
									<c:forEach var="typelist" items="${typelist}">
										<option>${typelist.type}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="model" class="col-sm-2 col-form-label"> Model</label>
							<div class="col-sm-10">
								<select class="form-control" id="model" name="model">
									<option>${vcl.getModel()}</option>
									<c:forEach var="modellist" items="${modellist}">
										<option>${modellist.model}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="vNo" class="col-sm-2 col-form-label">Transport
								No</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="vNo" name="vNo"
									placeholder="DHAKA DHA 11-1111" value="${vcl.getvNo()}">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="vPhoto" class="col-sm-2 col-form-label">
								Photo</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" id="vPhoto"
									name="vPhoto">
							</div>
						</div>
						<div class="mb-3">
							<button class="btn btn-outline-primary float-end">Submit</button>
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