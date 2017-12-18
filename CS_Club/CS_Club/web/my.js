/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateEmail() {
  var email = document.register.email.value;
  var email2 = document.register.email2.value;
  if (email !== email2) {
    document.getElementById("email2").setCustomValidity("Email is incorrect");
  } else {
    document.getElementById("email2").setCustomValidity("");
  }
}

function validatePassword() {
  var password = document.register.password.value;
  var password2 = document.register.password2.value;
  if (password !== password2) {
    document.getElementById("password2").setCustomValidity("Passwords do not match");
  } else {
    document.getElementById("password2").setCustomValidity("");
  }
}

