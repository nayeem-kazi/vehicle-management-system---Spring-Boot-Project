<%@ include file="header.jsp"%>

<main id="main" class="main">
	<%-- Page Title Start--%>
	<div class="pagetitle">
		<h1>Dashboard</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item active">Dashboard</li>
			</ol>
		</nav>
	</div>
	<%-- End Page Title --%>
	<section class="section dashboard">
		<div class="row">
			<%-- Text Template --%>
			<div class="col-lg-12">
				<div class="row">
					<%-- Transport Card --%>
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card sales-card">
							<div class="card-body">
								<h5 class="card-title">TOTAL TRANSPORT</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${totalTransport}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card revenue-card">
							<div class="card-body">
								<h5 class="card-title">HIRED TRANSPORT</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${HiredTransport }</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xxl-4 col-xl-12">
						<div class="card info-card customers-card">
							<div class="card-body">
								<h5 class="card-title">AVAILABLE TRANSPORT</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${AvailableTransport}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<%-- Employee --%>
				<div class="row">
					<%-- Transport Card --%>
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card sales-card">
							<div class="card-body">
								<h5 class="card-title">TOTAL EMPLOYEE</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${totalEmployee}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card revenue-card">
							<div class="card-body">
								<h5 class="card-title">TOTAL DRIVER</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${totalDriver}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xxl-4 col-xl-12">
						<div class="card info-card customers-card">
							<div class="card-body">
								<h5 class="card-title">TOTAL HELPER</h5>
								<div class="d-flex align-items-center">
									<div class="ps-3">
										<h6>${totalHelper}</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%-- End Text Template --%>
		</div>
	</section>
</main>

<%@ include file="footer.jsp"%>