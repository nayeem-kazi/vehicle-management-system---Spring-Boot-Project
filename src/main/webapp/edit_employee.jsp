<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">

	<%-- Page Title Start--%>

	<div class="pagetitle">
		<h1>Employee</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item">Employee</li>
				<li class="breadcrumb-item">All Employee</li>
				<li class="breadcrumb-item active">Edit Employee</li>
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
						Edit Employee</div>
					<form action="/newEmployee" method="POST">
						<div class="mb-3 row">
							<label for="eId" class="col-sm-2 col-form-label">Employee
								ID</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control" id="eId"
									name="eId" value=${el.geteId()}>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eFirstName" class="col-sm-2 col-form-label">First
								Name</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eFirstName"
									name="eFirstName" value=${el.geteFirstName()}>
							</div>
							<label for="eLasttName" class="col-sm-2 col-form-label">Last
								Name</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eLasttName"
									name="eLasttName" value=${el.geteLasttName()}>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eEmail"
									name="eEmail" value=${el.geteEmail()}>
							</div>
							<label for="eMobile" class="col-sm-2 col-form-label">Mobile</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eMobile"
									name="eMobile" value=${el.geteMobile()}>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eAddress" class="col-sm-2 col-form-label">Address</label>
							<div class="col-sm-10">
								<textarea rows="" cols="" class="form-control" id="eAddress"
									name="eAddress" value=${el.geteAddress()}></textarea>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eDOB" class="col-sm-2 col-form-label">Date Of
								Birth</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="eDOB" name="eDOB"
									value=${el.geteDOB()}>
							</div>
							<label for="ePhoto" class="col-sm-2 col-form-label">Photo</label>
							<div class="col-sm-4">
								<input type="file" class="form-control" id="ePhoto"
									name="ePhoto" value=${el.getePhoto()}>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eDesignation" class="col-sm-2 col-form-label">Designation</label>
							<div class="col-sm-4">
								<select class="form-control" id="eDesignation"
									name="eDesignation">
									<c:forEach var="designation" items="${dg}">
										<option>${designation}</option>
									</c:forEach>
								</select>
							</div>
							<label for="eType" class="col-sm-2 col-form-label">Employee
								Type</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eType" name="eType"
									value=${el.geteType()}>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="eJoiningDate" class="col-sm-2 col-form-label">Joining
								Date</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="eJoiningDate"
									name="eJoiningDate" value=${el.geteJoiningDate()}>
							</div>
							<label for="eBasicSelary" class="col-sm-2 col-form-label">Basic
								Salary</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="eBasicSelary"
									name="eBasicSelary" value=${el.geteBasicSelary()}>
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