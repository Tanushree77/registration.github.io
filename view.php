<?php
require_once('config.php');

if(isset($_POST['check_slot'])){

$practical_slot = $_POST['practical_slot'];

$sql ="select name,fname, student_id, email,practical_slot from student where practical_slot='".$practical_slot."'";
$sql2 ="select * from time_slot where id='".$practical_slot."'";

$result =$conn->query($sql);

$row_slot = mysqli_fetch_assoc($conn->query($sql2) );
if ($result->num_rows > 0){
    echo "<html><style>
    *{margin:0px}
    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    
    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    
    tr:nth-child(even) {
      background-color: #dddddd;
    }
    </style>
    
    <h2>Details of {$row_slot['week_day']} {$row_slot['start_time']}-{$row_slot['end_time']} slot:</h2>";
    echo '<h6> Total students enrolled: ' . $result->num_rows.'</h6>';
    echo '</br>';
    echo '<table>';
    echo '<tr><td>Name</td><td>User Name</td><td>Student Id</td><td>Email</td></tr>';
    foreach ($result as $row) {
        echo "<tr><td>{$row['fname']}</td><td>{$row['name']}</td><td>{$row['student_id']}</td><td>{$row['email']}</td>";
    }
    echo '</table>
    <a style ="margin-top: 20px" type="button" href="teacher.php">Go Back </a>
    </html>';

}else{
  echo "No students in this slot";
  echo '<a href="teacher.php">Go Back </a>';
  

}
}

?>