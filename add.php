<?php
  $typ=$_POST['type'];
  $name=$_POST['name'];
  $con = mysqli_connect('localhost','root');
  mysqli_select_db($con,'raume');
  $result = mysqli_query($con,"INSERT INTO `raume`(`Raum_nr`, `rm_typ`) VALUES ('".$name."','".$typ."')");
  if ($result == false) {
    echo "<strong>Error</strong> Raum ist bereits vorhanden <br>";
    echo "<a href='search.html'>Zur&uumlck</a>";
  }else{
    echo "<strong>Raum wurde erfolgreich hinzugefügt</strong> <br>";
    echo "<a href='search.html'>Zur&uumlck</a>";
  };
?>
