<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<h2>Employee Sign In</h2>
<form action="/employee" class="was-validated" method="post">
  <div class="form-group">
      <label for="employeeId">employeeId:</label>
      <input type="number" class="form-control" id="employeeId" placeholder="Enter employeeId" name="employeeId" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>   
    <div class="form-group form-check">
      <label class="form-check-label">
      <a href="https://www.mindtree.com/terms-use" style="color:grey;">
        <input class="form-check-input" type="checkbox" name="remember" required > I agree on terms & conditions.        
        <a>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div>
      </a></a>
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>