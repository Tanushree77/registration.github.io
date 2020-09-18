<?php
require_once('config.php');

if(isset($_POST['create'])){
$name =$_POST['name'];
$fname = $_POST['fname'];
$student_id = $_POST['student_id'];
$email =$_POST['email'];
$practical_slot = $_POST['practical_slot'];

// check if registered
$check_sql =  "SELECT * FROM student WHERE name = '".$name. "'";

$check_result = $conn->query($check_sql);

  if($check_result->num_rows > 0){
    echo '<script type="text/javascript"> ';
    echo 'var input = confirm("You are already registered. Are you sure to change your time slot.", "");';
    echo 'if(input) window.location = "updateSlot.php?name='.$name . '&slot='. $practical_slot.'"';
    echo '</script>';
}else{
  
 

$sql ="INSERT INTO student (name,fname, student_id, email,practical_slot) VALUES ('".$name."','".$fname."','".$student_id."','".$email."','".$practical_slot."')";
  $result =$conn->query($sql);

if ($result){
  echo 'registration successfully...';
  echo '<a href="form.php">Go to Home</a>';

}else{
  echo "There were errors";
  echo '<a href="form.php">Go to Home</a>';

}
}

}


?>

