<%@ include file="head.jsp" %>
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
				action="/search">
				<input type="text" name="clientName" placeholder="Search By Client Name"
					title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<%--
		<div class="fw-bold">
			DATE : <span class="text-danger">${today}</span>
		</div>
		<div class="fw-bold">
			&nbsp; TIME : <span class="text-danger">${time}</span>
		</div>
		<div class="fw-bold">
			&nbsp; ${welcome} <span class="text-danger">${user}</span>
		</div>  --%>
	</header>
	<%-- End Header --%>
	
	<%-- Side Bar --%>
	<%@ include file="sidebar.jsp"%>