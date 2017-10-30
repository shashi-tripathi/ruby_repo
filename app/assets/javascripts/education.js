

$(document).ready(function(){ 
 $("#education_country").change(function(){
    var cid=$("#education_country").val();
     $.ajax({
          type: "get",
          url: "/educations/country/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#education_state").change(function(){
   var cid=$("#education_state").val();
     $.ajax({
          type: "get",
          url: "/educations/state/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#education_city").change(function(){
// $("#address_zip").val('');
 //alert($("#address_zip").val(''));
    var cid=$("#education_city").val();
    if(cid == ''){
      $("#education_zip").val('');
    }
     $.ajax({
          type: "get",
          url: "/educations/zip/"+cid,
          success:function(data) {
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });


});

