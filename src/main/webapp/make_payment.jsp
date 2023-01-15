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
				<li class="breadcrumb-item">Hire</li>
				<li class="breadcrumb-item active">Bill Payment</li>
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
							<span class="text-danger"> Bill Payment ${vcl.model} </span>
						</div>
						<div class="mb-3">
							<div class="mb-3 row">
								<label for="invoiceId" class="col-sm-2 col-form-label">Invoice
									No : </label>
								<div class="col-sm-4">
									<input type="text" readonly="readonly"
										class="form-control text-danger" id="invoiceId"
										name="invoiceId" value="${invoiceId}">
								</div>
								<label for="today" class="col-sm-2 col-form-label">Date
									: </label>
								<div class="col-sm-4">
									<input type="date" readonly="readonly"
										class="form-control text-danger" id="today" name="today"
										value="${today}">
								</div>
							</div>

							<div class="mb-3 row">
								<label for="bookingId" class="col-sm-2 col-form-label">Booking
									ID :</label>
								<div class="col-sm-10">
									<input type="text" readonly="readonly"
										class="form-control text-danger" id="bookingId"
										name="bookingId" value="${newBooking.bookingId}">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="payableAmmount" class="col-sm-2 col-form-label">Payable
									Amount (BDT) :</label>
								<div class="col-sm-10">
									<input type="text" readonly="readonly"
										class="form-control text-danger" id="payableAmmount"
										name="payableAmmount" value="${newBooking.fare}">
								</div>
							</div>

							<div class="mb-3 row">
								<label for="payment" class="col-sm-2 col-form-label">Pay
									Amount (BDT) :</label>
								<div class="col-sm-10">
									<input type="number" class="form-control text-danger"
										id="payment" name="payment" value="${newBooking.fare / 4}"
										data-bs-toggle="tooltip" data-bs-placement="top"
										title="You have to pay at least one third of the payable amount at first installment.">
								</div>
							</div>
						</div>
						<div class="mb-3">
							<button class="btn btn-outline-primary float-end"
								formaction="/payment">Payment</button>

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