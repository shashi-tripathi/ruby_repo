

$(document).ready(function(){ 
 $("#search_country").change(function(){
    var cid=$("#search_country").val();
     $.ajax({
          type: "get",
          url: "/searches/country/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#search_state").change(function(){
    var cid=$("#search_state").val();
     $.ajax({
          type: "get",
          url: "/searches/state/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#search_city").change(function(){
    var cid=$("#search_city").val();
     $.ajax({
          type: "get",
          url: "/searches/zip/"+cid,
          success:function(data) {
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });


$("#search_country").change(function(){
    var cid=$("#search_country").val();
     $.ajax({
          type: "get",
          url: "/searches/country/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#search_state").change(function(){
    var cid=$("#search_state").val();
     $.ajax({
          type: "get",
          url: "/searches/state/"+cid,
          success:function(data) {
    
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });

$("#search_city").change(function(){
    var cid=$("#search_city").val();
     $.ajax({
          type: "get",
          url: "/searches/zip/"+cid,
          success:function(data) {
         },
        error:function(xhr, status, error){
           alert("Error!!!!:"+xhr.responseText);
        }  
        });
 });



});

