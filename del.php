<?php
  $room=$_POST['raumn'];
  $usrpw=$_POST['masterpw'];
  $mastrpw="Admin";
  $con = mysqli_connect('localhost','root');
  mysqli_select_db($con,'raume');
  if ($usrpw == $mastrpw) {
    $result = mysqli_query($con,"DELETE FROM `raume` WHERE Raum_nr = '".$room."'");
    echo "Raum ".$room." wurde erfolgreich entfernt";
  }else {
    echo "Das Passwort ist falsch";
  };



 ?>
