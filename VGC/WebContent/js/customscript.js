/*
 * 
 *    for loading login pages for admin, faculty and student
 */

$("#admin-login").click(function(){
	 
	$(".my-login-page").load('admin-login-page.jsp',function(){
		
	}).hide().fadeIn(1000);
});

$("#faculty-login").click(function(){
	 
	$(".my-login-page").load('faculty-login-page.jsp',function(){
		
	}).hide().fadeIn(1000);
});

$("#student-login").click(function(){
	 
	$(".my-login-page").load('student-login-page.jsp',function(){
		
	}).hide().fadeIn(1000);
});

$("a.test").click(function(e){
	e.preventDefault();
	$(".my-login-page").load($(this).attr("href"));
		
	});


$("a.student-register").click(function(e){
	e.preventDefault();
	$(".my-login-page").load($(this).attr("href"));
});
	



$("a.electricalfirstyear").click(function(e){
	e.preventDefault();
	$(".table-content").load($(this).attr("href"));
});


$(document).on("click","#admin-login-button",function(e){
	
	e.preventDefault();
	
	var email = $('#email').val();
	var password = $("#password").val();
	
	/*alert(email +"  "+password);*/
	
	$.ajax({
        url: 'AdminLogin',
        type: 'POST',
        data: { "email": email,"password" : password} ,
       
        success: function (response) {
        	
        	var value = JSON.stringify(response);
        	
        	
        	var patt = new RegExp("success");
            var res = patt.test(value);
            var pathname = window.location;
        
            if(res)
            	{
            	/*alert('success');*/
            	window.location.href = pathname+"Admin.jsp";
            	}
            else{
            	$('#error').show();
            }
        },
        error: function () {
            alert("error");
        }
    }); 
});
	
	
	$(document).on("click","#Faculty-login-button",function(e){
		
		e.preventDefault();
		
		var email = $('#email').val();
		var password = $("#password").val();
		
		/*alert(email +"  "+password);*/
		
		$.ajax({
	        url: 'FacultyLogin',
	        type: 'POST',
	        data: { "email": email,"password" : password} ,
	       
	        success: function (response) {
	        	
	        	var value = JSON.stringify(response);
	        	
	        	
	        	var patt = new RegExp("success");
	            var res = patt.test(value);
	            var pathname = window.location;
	        
	            if(res)
	            	{
	            	alert('success');
	            	window.location.href = pathname+"Admin.jsp";
	            	}
	            else{
	            	$('#error').show();
	            }
	        },
	        error: function () {
	            alert("error");
	        }
	    }); 
		
	
	
	
	
	});

$(document).on("click","#student-login-button",function(e){
		
		e.preventDefault();
		
		var email = $('#email').val();
		var password = $("#password").val();
		
		/*alert(email +"  "+password);*/
		
		$.ajax({
	        url: 'StudentLogin',
	        type: 'POST',
	        data: { "email": email,"password" : password} ,
	       
	        success: function (response) {
	        	
	        	var value = JSON.stringify(response);
	        	
	        	
	        	var patt = new RegExp("success");
	            var res = patt.test(value);
	            var pathname = window.location;
	        
	            if(res)
	            	{
	            	alert('success');
	            	window.location.href = pathname+"Admin.jsp";
	            	}
	            else{
	            	$('#error').show();
	            }
	        },
	        error: function () {
	            alert("error");
	        }
	    }); 
		
	
	
	
	
	});



	
	



