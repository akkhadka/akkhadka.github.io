(function () {
    "use strict";
    window.onload=function (){
        const frm = document.getElementById("frmSignup");
        frm.onsubmit = validate;
    }
function validate(e){
    const password = document.getElementById("password");
    const confirmPassword = document.getElementById("confirmPassword");
    if(password.value!==confirmPassword.value){
       alert("password and confirmpassword do not match");
       e.preventDefault();
    }
}
})()