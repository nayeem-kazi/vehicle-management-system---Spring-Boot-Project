<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard</title>
<meta content="" name="description">
<meta content="" name="keywords">

<%-- favicons --%>
<link href="assets/img/favicon.ico" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<%-- Google Fonts --%>
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<%--Bootstrap link --%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">


<%-- Main CSS --%>
<link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

	<%-- Header --%>
	<header id="header" class="header fixed-top d-flex align-items-center">
		<%-- Logo --%>
		<div class="d-flex align-items-center justify-content-between">
			<a href="/home" class="logo d-flex align-items-center"> <img
				src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">Transport Management</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>

		<%-- Search Bar --%>
		<div class="search-bar">
			<form class="search-form d-flex align-items-center" method="POST"
				action="#">
				<input type="text" name="query" placeholder="Search"
					title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>


		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a
					class="nav-link nav-icon search-bar-toggle " href="#"> <i
						class="bi bi-search"></i>
				</a></li>






				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <%-- Profile Image --%> <img
						src="assets/img/profile.jpg" alt="Profile" class="rounded-circle">
						<span class="d-none d-md-block dropdown-toggle ps-2">Md.
							Nayeem Kazi</span>
				</a>

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>Admin</h6> <span>Web Designer</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/profile"> <i class="bi bi-person"></i> <span>My
									Profile</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/profile"> <i class="bi bi-gear"></i> <span>Account
									Settings</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/"> <i class="bi bi-box-arrow-right"></i> <span>Sign
									Out</span>
						</a></li>

					</ul> <%-- End Profile Drop Down --%></li>
				<%-- End Profile Navbar --%>

			</ul>
		</nav>


	</header>
	<%-- End Header --%>

	<%-- Sidebar --%>
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">
			<%-- Dashboard Nav --%>
			<li class="nav-item"><a class="nav-link " href="home"> <i
					class="bi bi-grid"></i> <span>Dashboard</span>
			</a></li>


			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-truck"></i><span>Vehicles</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/newVehicle"> <i class="bi bi-circle"></i><span>New
								Vehicles</span>
					</a></li>
					<li><a href="/allVehicle"> <i
							class="bi bi-circle"></i><span>All Vehicles</span>
					</a></li>
				</ul></li>
			<%-- Employees --%>

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-people"></i><span>Employees</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/newEmployee"> <i class="bi bi-circle"></i><span>New
								Employee</span>
					</a></li>
					<li><a href="forms-layouts.html"> <i class="bi bi-circle"></i><span>All
								Employees</span>
					</a></li>
				</ul></li>

			<%-- Profile --%>
			<li class="nav-item"><a class="nav-link collapsed"
				href="/profile"> <i class="bi bi-person"></i> <span>Profile</span>
			</a></li>


			<%-- FAQ --%>

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>F.A.Q</span>
			</a></li>

			<%-- Contacts --%>

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-contact.html"> <i class="bi bi-envelope"></i> <span>Contact</span>
			</a></li>

		</ul>

	</aside>
	<%-- End Side Bar --%>

	<main id="main" class="main">

		<%-- Page Title Start--%>

		<div class="pagetitle">
			<h1>Vehicles</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/home">Home</a></li>
					<li class="breadcrumb-item">Vehicles</li>
					<li class="breadcrumb-item active">New Vehicles</li>
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
							Add New Vehicles</div>
						<form action="/newVehicles" method="POST">

							<div class="mb-3 row">
								<label for="vNo" class="col-sm-2 col-form-label">Vehicle
									No</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="vNo" name="vNo">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="model" class="col-sm-2 col-form-label">Vehicle
									Model</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="model" name="model">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="type" class="col-sm-2 col-form-label">Vehicle
									Type</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="type" name="type">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="description" class="col-sm-2 col-form-label">Description</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="description"
										name="description">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="capasity" class="col-sm-2 col-form-label">Capasity</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="capasity"
										name="capasity">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="vPhoto" class="col-sm-2 col-form-label">Vehicle
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


	<%-- Footer --%>
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>Transport Management
					System</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
			Designed by <a href="https://github.com/nayeem-kazi/">Nayeem Kazi</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<%--Bootstrap Js link --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>