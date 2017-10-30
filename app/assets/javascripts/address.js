

$(document).ready(function(){ 
 $("#address_country").change(function(){
    var cid=$("#address_country").val();
     $.ajax({
          type: "get",
          url: "/addresses/country/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#address_state").change(function(){
   var cid=$("#address_state").val();
     $.ajax({
          type: "get",
          url: "/addresses/state/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#address_city").change(function(){
// $("#address_zip").val('');
 //alert($("#address_zip").val(''));
    var cid=$("#address_city").val();
 //   alert(cid=='');
    if(cid == ''){
      $("#address_zip").val('');
    }
     $.ajax({
          type: "get",
          url: "/addresses/zip/"+cid,
          success:function(data) {
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#address_city").click(function(){
    if($("#address_city").val() == 'Select City'){
      $("#address_zip").val('');
    }
   
 });



});

