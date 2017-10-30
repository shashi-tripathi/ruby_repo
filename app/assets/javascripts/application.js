// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require search
//= require personal-detail-validator

$(document).ready(function(){ 

    $("#myTab a").click(function(){
      $(this).tab('show');
    });
    $("#yourSelect").change(function(){
      $("#myTab li a").eq($(this).val()).tab('show');
    }); 
    $('#datepicker').datepicker({
					autoclose:1
				});
	 $('#datepicker1').datepicker({
        autoclose:1
    });
   $('#datepicker2').datepicker({
        autoclose:1
   });
  $('#datepicker3').datepicker({
        autoclose:1
  });

  
  $("ul.sidebar-nav li a").click(function(){

  // alert('I am clicked');
   $("ul.sidebar-nav li a").removeClass('selected');
   $(this).addClass('selected');
  });



});


