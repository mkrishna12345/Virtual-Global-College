<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/my-login.css">
	
</head>
<body>
   

         
         
          <section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Faculty Login</h4>
							<form method="POST">
							 
								<div class="form-group">
									<label for="email">E-Mail Address</label>

									<input id="email" type="email" class="form-control" name="email" value="" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">Password
										
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								

								<div class="form-group no-margin">
									<button type="submit" id="Faculty-login-button" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
								<div class="margin-top 20 text-center" >
									Don't have an account? <a href="faculty-register.jsp" class="test" >Create One</a>
								</div>
								 
								
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- <script>
	
	
	$("#faculty-register").click(function(){
		$(".my-login-page").load('faculty-register.jsp',function(){
			
		}).hide().fadeIn(1000);
		
	});

	
	
	</script>
 -->
 	 <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script src="js/scrolling-nav.js"></script>
    <script src="js/my-login.js"></script>
    <script src="js/customscript.js"></script>
  
   

</body>
</html>         
         
         
         
         
         
         
         
      
	
	
