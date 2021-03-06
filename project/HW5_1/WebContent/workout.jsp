<!DOCTYPE html>
<!-- This page allows the user to begin building their workout by selecting the
areas that they want to work on -->
<html>
<head>
  <title>WorkOut Buddy</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- adding bootstrap and the css page here -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="main1.css" />
  <script language="JavaScript">
  //function to check how many boxed where selected-
  function handleChange(checkbox) {
	    if(checkbox.checked == true){
	    	var value = parseInt(document.getElementById("numselected").innerHTML);
	    	value++;
	    	document.getElementById("numselected").innerHTML = value.toString();
	    }else{
	    	var value = parseInt(document.getElementById("numselected").innerHTML);
	    	value--;
	    	document.getElementById("numselected").innerHTML = value.toString();
	   }
	}
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
      <li ><a href="index.html">Home</a></li>
      <li><a href="login.jsp">Login</a></li>
      <li class="active"><a>Start a Workout</a></li>
    </ul>
  </div>
</nav>

<!--image background and table added to figure out what body part you are working out -->

<div class="image" >
      <img src="images/exercise.jpg" alt="" width= 100% height = 100% />
      <form action="workout.php"  method="post">
        <header>
      <h1>Select areas to focus on <%= request.getParameter("username") %></h1>
    </header>
      <div class="text-center">
      <table align="center" border="1" cellspacing="2" cellpadding="20">
      <tr>
        <td class="select" align="left">
        <img id= "pics" src="images/Ab_Feature.jpg" style="width:350px;height:200px;" />
        <br>
        <input name= "core" type="checkbox" value="Core" onclick='handleChange(this);'>
        <label for="Core">Core Strengthening</label>
        </td>
        <td class="select" align="left">
        <img id= "pics" src="images/flexibility.jpg" style="width:350px;height:200px;" /><br>
        <input name= "flexibility" type="checkbox" value="Flexibility" onclick='handleChange(this);'>
        <label for="Flexibility">Flexibility</label>
        </td>
        <td class="select" align="left">
        <img id= "pics" src="images/back.jpg" style="width:350px;height:200px;" /><br>
        <input name= "back" type="checkbox" value="Back" onclick='handleChange(this);'>
        <label for="Back">Back</label>
        </td>
      </tr>
      <tr>
        <td class="select" align="center">
        <img id= "pics" src="images/cardio.jpg" style="width:350px;height:200px;" />
        <br>
        <input name= "cardio" type="checkbox" value="Cardio" onclick='handleChange(this);'>
        <label for="Cardio">Cardio</label></td>
        <td class="select" align="left">
        <img id= "pics" src="images/arms.jpg" style="width:350px;height:200px;" /><br>
        <input name= "arm" type="checkbox" value="Arms" onclick='handleChange(this);'>
        <label for="Arms">Arms</label></td>
        <td class="select" align="left">
        <img id= "pics" src="images/legs.jpg" style="width:350px;height:200px;" /><br>
        <input name= "leg" type="checkbox" value="Legs" onclick='handleChange(this);'>
        <label for="Legs">Legs</label>
        </td>
      </tr>
      </table>
      <h2 id="WorkoutFont">Number of areas selected:</h2><p id="numselected">0</p>
    <button class="btn btn-info" type="submit" align="center">Create my Workout</button></div>
      </form>
</div>


<!-- footer added using bootstrap -->

</br>
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
                          <li><a href="login.jsp">Login</a></li>
                          <li><a href="workout.html">Workout</a></li>
                      </ul>
                  </div>
              </div>
          </div>
 </footer>
</body>
</html>
