
function PopUpMsg(){

var name=document.getElementById("name").value;
var cvc=document.getElementById("cvc").value;  

var len=cvc.toString().length;
  
if (name==null || name==""){

  alert("Name canot be blank");  
  return false;  
}

else if(len!=3){  
  alert("Invalid CVN"); 
   
  return false;  
  }
  else{
    alert("!! Payment Successfull !!");
    return true;
  } 

       
    }