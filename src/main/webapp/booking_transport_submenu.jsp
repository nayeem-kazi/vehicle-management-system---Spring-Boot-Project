<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">
	<%-- Page Title Start--%>
	<div class="pagetitle">
		<h1>Transports</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/home">Home</a></li>
				<li class="breadcrumb-item active">Transports</li>
			</ol>
		</nav>
	</div>

	<section>
		<div class="container">
			<div class="">
				<div class="row">
					<div class="col d-flex justify-content-center">
						<form action="/transportBooking">
							<button class="btn btn-primary p-5 m-5 fs-2 fw-bold">Available Transport</button>
						</form>
					</div>
					<div class="col d-flex justify-content-center">
						<form action="/bookedTransport">
							<button class="btn btn-primary p-5 m-5 fs-2 fw-bold">Booked Transport</button>
						</form>
					</div>
					<div class="col d-flex justify-content-center">
						<form action="/payementHistory">
							<button class="btn btn-primary p-5 m-5 fs-2 fw-bold">Payment History</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

<%-- footer --%>
<%@ include file="footer.jsp"%>