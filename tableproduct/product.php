<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product List</title>

</head>

<body>
	<table width="600" border="1" align="center" bordercolor="#666666">
		<tr>
			<td width="91" align="center" bgcolor="#CCCCCC"><strong>�Ҿ</strong></td>
			<td width="200" align="center" bgcolor="#CCCCCC"><strong>����˹ѧ���</strong></td>
			<td width="44" align="center" bgcolor="#CCCCCC"><strong>�Ҥ�</strong></td>
			<td width="100" align="center" bgcolor="#CCCCCC"><strong>��������´�Թ���</strong></td>
		</tr>
  
  
  <?php
		// connect db
		include ("connect.inc");
		$sql = "select * from product order by p_id"; // ���¡���������ʴ�������
		$result = mysqli_query ( $conn, $sql );
		while ( $row = mysqli_fetch_array ( $result ) ) {
			echo "<tr>";
			echo "<td align='center'><img src='img/" . $row ["p_pic"] . " ' width='80'></td>";
			echo "<td align='left'>" . $row ["p_name"] . "</td>";
			echo "<td align='center'>" . number_format ( $row ["p_price"], 2 ) . "</td>";
			echo "<td align='center'><a href='product_detail.php?p_id=$row[p_id]'>��ԡ</a></td>";
			echo "</tr>";
		}
		?>
</table>
</body>