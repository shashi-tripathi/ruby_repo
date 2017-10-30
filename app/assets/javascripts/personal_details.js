$(document).ready(function(){ 
 $("#studentForm").on("ajax:success" ,function(event, data, status, xhr){
 $("#message").html("<h4>Personal Details Updatd successfully</h4>");
 //alert('hello');

 } );
 });