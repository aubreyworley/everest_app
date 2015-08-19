$(document).ready(function () {

  $("#signup-form").validate({
    rules: {
    "user[email]": {required: true, email: true},
    "user[password]": {required: true, minlength: 6},
    "user[password_confirmation]": {required: true, equalTo: "#user-password"}
  },

    messages: {
    "user[email]": "Please enter a valid email address.",
    "user[password]": {
      required: "Please enter a password.",
      minlength: "Your password must be 6 characters or longer."
      }
    }
  });

  $("#login-form").validate({
    rules: {
    "user[email]": {required: true, email: true},
    "user[password]": {required: true}
  },

    messages: {
    "user[email]": "Please enter a valid email address.",
    "user[password]": "Please enter your password."
    }
  });

});
