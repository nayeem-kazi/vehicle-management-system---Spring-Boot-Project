<%-- Header --%>
<%@ include file="header.jsp"%>

<main id="main" class="main">
	<%-- Page Title Start--%>
	<form action="/uploadImage" enctype="multipart/form-data" >
		<input type="file" name="image" id="image">
		<button>SAVE</button>
	</form>
</main>

<%-- footer --%>
<%@ include file="footer.jsp"%>