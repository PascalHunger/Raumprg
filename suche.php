<?php
  $raum=$_POST["room"];
  $con = mysqli_connect('localhost','root');
  mysqli_select_db($con,'raume');
  $result = mysqli_query($con,'SELECT * FROM `raume` WHERE Raum_nr="'.$raum.'"');
  $row= mysqli_fetch_row($result);
  $typ= $row[1];
  $name = $row[0];
  switch ($typ) {
    case '1':
      header("Location: sites/1.php?name=".$name);
      exit();
      break;
    case '2':
      header("Location: sites/2.php?name=".$name);
      exit();
      break;
    case '3':
      header("Location: sites/3.php?name=".$name);
      exit();
      break;
    case '4':
      header("Location: sites/4.php?name=".$name);
      exit();
      break;
    case '5':
      header("Location: sites/5.php?name=".$name);
      exit();
      break;
    default:
      echo "<strong>Error 404</strong> Raum Name ist nicht richtig oder der Raum ist noch nicht vorhanden.";
      break;
  }
?>
