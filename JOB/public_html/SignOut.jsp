
 <!--Signout.jsp :- the jsp load other jsp here as per ajax -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Portal System</title>
<link rel="icon"
	href="https://media.licdn.com/dms/image/C560BAQF5u5PbEVctsA/company-logo_200_200/0/1659672152895?e=2147483647&v=beta&t=eft03TQpH38N009tAS6gYYjFW41Re7vS4_w53agHpYg"
	sizes="32x32" type="image/png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/css/ui.jqgrid.min.css">
<link rel="stylesheet" href="./css/Job.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f8ecaab97d.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/jquery.jqgrid.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body style="margin: 0 margin: 0;
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;">
	<s:include value="./pages/Header2.jsp" />


	<div class="content">
		  <div class="container mt-3 mb-3" style="background: #95959513; padding: 20px;">

    <div id="content" style="min-height: calc(100vh - 290px);">
        <div class="row">
            <div class="col-lg-7">
                <h1 class="text-success">Successfully Logout</h1>
            </div>
<br>
            <div class="col-lg-4 mt-3  ">
                <div class="bg-white p-3 rounded">
                    <s:textfield label="username" class="form-control mt-3 mb-3"></s:textfield>
                    <s:textfield label="password" class="form-control mt-3 mb-3"></s:textfield><br>
                    <a href="home" class="btn btn-success mt-2 mb-3">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>

		<div id="logoFoot">

			<div class="container">
				<div class="row">
					<div class="col-8"></div>
					<div class="col-4">
						<div style="text-align: right;">
							<img src="./images/JPS.png" style="height: 100px; margin: 0;" />
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<s:include value="./pages/Footer.jsp" />
	<script>
		window.history.pushState(null, null, window.location.href);
		window.onpopstate = function() {
			window.history.go(2);
		};

		
	</script>
</body>
</html>