<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
  <h2>Employee Sign Up</h2>
  <form action="/addemployee" class="was-validated" method="post">
  <div class="form-group">
      <label for="employeeId">employeeId:</label>
      <input type="number" class="form-control" id="employeeId" placeholder="Enter employeeId" name="employeeId" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="employeeName">employeeName:</label>
      <input type="text" class="form-control" id="employeeName" placeholder="Enter employeeName" name="employeeName" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="dateOfJoining">Date Of Joining:</label>
      <input type="date" class="form-control" id="dateOfJoining" placeholder="Enter dateOfJoining" name="dateOfJoining" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
     <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
       <div class="form-check-inline">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" id="role" name="role" value="admin" onclick="myFunction()" >Admin       
      </label>
    </div>
       <div class="form-check-inline">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" id="role" name="role" value="user" onclick="enable()" >User       
      </label>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>   
    <div class="form-group">
      <label for="projectId">projectId:</label>
      <input type="text" class="form-control" id="projectId" placeholder="Enter projectId" name="projectId" >
      <!-- <div class="valid-feedback">Valid.</div> -->
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
      <a href="https://www.mindtree.com/terms-use">
        <input class="form-check-input" type="checkbox" name="remember" required > I agree on terms & conditions.        
        <a>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div>
      </a></a>
      </label>
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<script>
function myFunction() {
  document.getElementById("projectId").disabled = true;
  document.getElementById("projectId").value = '';
}
function enable() {
	document.getElementById("projectId").disabled = false;
	
}
</script>

</body>
</html>