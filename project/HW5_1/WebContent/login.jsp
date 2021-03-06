<!DOCTYPE html>
<!-- This is the login page for returning users to view their past workouts -->
<html>
<head>
    <title>WorkOut Buddy</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="main1.css"/>
    <link rel="icon" href="../../favicon.ico">
    <script>
        // function to add back function
        function goBack() {
            window.history.go(-1);
        }
    </script>
</head>
<body>
<!-- navigation bar added used bootstrap -->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">Fitness Buddy</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="" onclick="goBack();">Back</a></li>
            <li><a href="index.html">Home</a></li>
            <li class="active"><a href="index.jsp">Login</a></li>
            <li><a href="workout.jsp">Start a Workout</a></li>
        </ul>
    </div>
</nav>
<!--login username and password is set here using bootstrap -->

<div class="container">
    <form action="mailService"  method="post" class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label class="sr-only">Username</label>
        <input class="form-control" id= "username" name= "username" placeholder="Username" required autofocus></br>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" type="email" name="inputEmail" id="inputEmail" class="form-control"
               placeholder="Email address" required autofocus></br>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button id="signin" class="btn btn-info" type="submit">Sign in</button>
    
    </form>
</div> <!-- /container -->

<!-- footer added using bootstrap -->
<footer class="footer-bs">
    <div class="row">
        <div class="col-md-3 footer-brand animated fadeInLeft">
            <h2>Fitness Buddy</h2>
            <p>Track your workouts here</p>
        </div>
        <div class="col-md-4 footer-nav animated fadeInUp">

            <div class="col-md-6">
                <ul class="list">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="index.jsp">Login</a></li>
                    <li><a href="workout.jsp">Workout</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
