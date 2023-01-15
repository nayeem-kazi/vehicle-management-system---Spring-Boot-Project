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
				<li class="breadcrumb-item">Bill Payment</li>
				<li class="breadcrumb-item active">Bill Info</li>
			</ol>
		</nav>
	</div>
	<%-- End Page Title --%>

	<section class="section dashboard">
		<div class="row" id="demo">

			<%-- Text Template --%>
			<section>
				<div class="container container-fluid p-3 mt-2 mb-3 shadow">
					<div class="d-flex justify-content-center pb-2 fs-2 fw-bolder">
						<span class="text-danger"> Bill Information </span>

					</div>
					<div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Invoice No</th>
									<td>${newInvoice.getInvoiceId()}</td>
								</tr>
								<tr>
									<th scope="row">Payable Amount</th>
									<td>${fare}</td>
								</tr>
								<tr>
									<th scope="row">Payment</th>
									<td>${newInvoice.getPayment()}</td>
								</tr>
								<tr>
									<th scope="row">Due</th>
									<td>${newBooking.getDue()}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="mb-3">
						<button class="btn btn-outline-primary float-end"
							onclick="print()">Print</button>					
						<br>
					</div>


				</div>
			</section>

			<%-- End Text Template --%>

		</div>
	</section>

</main>

<script type="text/javascript">
<%--
	function print()
	{
		var billInfo = document.getElementById("demo");
		var a = window.open("", "","");
		a.document.write('<html>');
        a.document.write('<body > <h1>Div contents are <br>');
        a.document.write(billInfo);
        a.document.write('</body></html>');
        a.document.close();
        consol.log(a);
        print(a);
	}
	--%>
</script>
<%-- footer --%>




<%@ include file="footer.jsp"%>