<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
      </head>
      <body>

      <?php
require_once('config.php');
$sql = "SELECT t.id, start_time, end_time, week_day,8-COUNT(s.id) AS remaining FROM time_slot t LEFT  JOIN student s ON t.id= s.practical_slot GROUP BY s.practical_slot order by t.id";
$result = $conn->query($sql);




?>



<form action="registration.php" method="POST" onclick="return validateForm()">
    <div class="container">
      <h1>Register here for Practical Slot</h1>
      <hr>
     
      <label for="name"><b>NAME:</b></label>
      <input type="text" placeholder="Enter name" name="name" id="name" >
      <hr>

      <label for="fname"><b>FIRST NAME:</b></label>
      <input type="firstname" placeholder="Enter first name" name="fname" id="fname" >
      <hr>

      <label for="student_id"><b>SID:</b></label>
      <input type="SID"  name="student_id" id="student_id" >
      <hr>

      <label for="email"><b>EMAIL:</b></label>
      <input type="EMAIL"  name="email" id="email" >
      <hr>
  
      

      <div class="selection">
        <label for="email"><b>Select the Practical Slot :</b></label>
      <select name="practical_slot" id="practical_slot" multiple required>
        <?php if ($result->num_rows > 0) { while($row = $result->fetch_assoc()) { ?>
            <option value="<?php echo $row['id'] ?>"><?php echo $row['week_day'] ?> <?php echo $row['start_time'] ?>-<?php echo $row['end_time'] ." ".$row['remaining']." seats remaining" ?></option>

         <?php  } } ?>
     
      </select>
      <hr>
      </div>

    </br>
      <button type="submit"  name="create"class="registerbtn">Register</button>
      <button type="submit" class="clearbtn">Clear</button>
      <br>

    </div>
    
    
  

  </form>
<script>
  function validateForm() {
  var x = document.getElementById("name").value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
  var fn = document.getElementById("fname").value;
  if (fn == "") {
    alert("First Name must be filled out");
    return false;
  }
  var si = document.getElementById("student_id").value;
  if (isNaN(si) || !isNumber(si)) {
    alert("SID should be in number");
    return false;
  }
  
  var em = document.getElementById("email").value;
  if (!filter_var( em(FILTER_VALIDATE_EMAIL))) {
    alert("Email must be filled out");
    return false;
  }
}
</script>



</body>
</html>