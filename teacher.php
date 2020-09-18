<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="teacher.css">
    </head>
      <body>

      <?php
       require_once('config.php');
       $sql = "SELECT t.id, start_time, end_time, week_day,8-COUNT(s.id) AS remaining FROM time_slot t LEFT  JOIN student s ON t.id= s.practical_slot GROUP BY s.practical_slot order by t.id";
       $result = $conn->query($sql);




      ?>



<form action="view.php" method="post" onsubmit="return checkSelection()">


      <div class="selection">
        <label for="email"><b>Select the Practical Slot :</b></label>
      <select name="practical_slot" id="practical_slot" multiple>
        <?php if ($result->num_rows > 0) { while($row = $result->fetch_assoc()) { ?>
            <option value="<?php echo $row['id'] ?>"><?php echo $row['week_day'] ?> <?php echo $row['start_time'] ?>-<?php echo $row['end_time'] ." ".$row['remaining']." seats remaining" ?></option>

         <?php  } } ?>
     
      </select>
      <hr>
      </div>

      </br>
      <button type="submit" name="check_slot"class="loginbtn">Show Result</button>
     
  

    </div>
    
    
  </form>

  <script>
      function checkSelection(){

        var slot=document.getElementById('practical_slot');
        if(slot.selectedIndex===-1){
            alert('You must select a slot.');
            return false;
        }
        else{
            return true;
        }
      }
  </script>
</body>
</html>