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