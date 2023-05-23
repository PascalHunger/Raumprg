<?php
  $con = mysqli_connect('localhost','root');
  $db = mysqli_select_db($con,'raume');
  if ($db == false) {
      $sql= file_get_contents('raume.sql');
      $con->multi_query($sql);
      echo "Datenbank erstellt <br>";
      echo "<a href='search.html'>Zur Suche</a>";
  }else{
    header("Location: search.html");
  }

 ?>
