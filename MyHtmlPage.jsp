<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MyHtmlPage</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    var num = document.forms["myForm"]["contact"].value;
    var z = document.forms["myForm"]["password"].value;
    var e = document.forms["myForm"]["email"].value;

    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
    else if(!((x>'A' && x<'Z')||(x>'a' && x<'z'))){
      alert("symbols not allowed");
      return false;
    }
    if(z.length<8){
      alert("Minimum password length is 8");
      return false;
    }

    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.email.value))
    {
      return true;
    }
    else{
      alert("You have entered an invalid email address!")
      return false;
    }
}
    </script>

  </head>

  <body style="background-image:url('/Library/Desktop Pictures/rolling waves.jpg')">

    <br><center><h2>Register here</h2></center>

    <marquee direction="right"><a href="https://www.google.co.in">www.xyz.com</a></marquee><hr>

    <form name="myForm" action="next.jsp" onsubmit="return validateForm()" method="POST">
      <table>
    <tr>
      <td><label>Enter your Name:</label></td>
      <td><input type="text" name="name" placeholder="Enter name here" required></td>
    </tr>
    <tr>
      <td><label>Enter your password:</label></td>
      <td><input type="password" name="password" placeholder="Password here" required></td>
    </tr>
    <tr>
      <td><label>Enter your address:</label></td>
      <td><input type="text" name="address" placeholder="Address here" required></td>
    </tr>
    <tr>
      <td><label>Enter your contact no:</label></td>
      <td><input type="text" name="contact" pattern="[7-9]{1}[0-9]{9}"  placeholder="Contact number here" required></td>
    </tr>
    <tr>
      <td><label>Enter your EmailID:</label></td>
      <td><input type="email" name="email" placeholder="Email here" required></td>
    </tr>
    <tr>
      <td><label>Gender:</label></td>
      <td><input type="radio" name="gender">Male
      <input type="radio" name="gender">Female</td>
    </tr>
    <tr>
    <td><center><input type="submit" value="Submit"></center></td>
  </tr>
      </table>
    </form>

  </body>
</html>
