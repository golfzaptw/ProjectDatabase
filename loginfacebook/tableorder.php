<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<?php
  $hostname = 'localhost';
  $username = 'root';
  $password = '';
  $dbname = 'admin';

  try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    $sql = $dbh->prepare("SELECT * FROM order_head");

    if($sql->execute()) {
       $sql->setFetchMode(PDO::FETCH_ASSOC);
    }
  }
  catch(Exception $error) {
      echo '<p>', $error->getMessage(), '</p>';
  }

?>
<div class="container">         
  <table class="table table-hover">
  <?php while($row = $sql->fetch()) { ?>
      <tr>
        <td><?php echo $row['o_name']; ?></td>
        <td><?php echo $row['o_addr']; ?></td>
        <td><?php echo $row['o_phone']; ?></td>
      </tr>
      <?php } ?>
    <thead>
      <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Phone</th>
      </tr>
    </thead>
  </table>
</div>


   </div>
</body>
</html>
