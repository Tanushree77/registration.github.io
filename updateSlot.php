<?php
require_once('config.php');
$name = $_GET['name'];
$slot = $_GET['slot'];
$sql = "UPDATE student SET practical_slot='".$slot."' WHERE name= '".$name."'";

if ($conn->query($sql) === TRUE) {
  echo "Practical slot updated successfully";
} else {
  echo "Error updating record: " . $conn->error;
}