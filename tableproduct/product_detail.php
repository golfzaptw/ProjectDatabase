<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product Detail</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<table width="600" border="0" align="center" class="square">
		<tr>
			<td colspan="3" bgcolor="#CCCCCC"><b>Product</b></td>
		</tr>
  
<?php
// connect db
include ("connect.inc");
$p_id = $_GET ['p_id']; // ���ҧ����� p_id �����Ѻ���

$sql = "select * from product where p_id=$p_id"; // �Ѻ��ҵ���� p_id �������
$result = mysqli_query ( $conn, $sql );
$row = mysqli_fetch_array ( $result );
// �ʴ���������´
echo "<tr>";
echo "<td width='85' valign='top'><b>Title</b></td>";
echo "<td width='279'>" . $row ["p_name"] . "</td>";
echo "<td width='70' rowspan='4'><img src='img/" . $row ["p_pic"] . " ' width='100'></td>";
echo "</tr>";
echo "<tr>";
echo "<td valign='top'><b>Detail</b></td>";
echo "<td>" . $row ["p_detail"] . "</td>";
echo "</tr>";
echo "<tr>";
echo "<td valign='top'><b>Price</b></td>";
echo "<td>" . number_format ( $row ["p_price"], 2 ) . "</td>";
echo "</tr>";
echo "<tr>";
echo "<td colspan='2' align='center'>";
echo "<a href='cart.php?p_id=$row[p_id]&act=add'> ����ŧ�С����Թ��� </a></td>";
echo "</tr>";
?>
</table>

	<p>
	
	
	<center>
		<a href="product.php">��Ѻ�˹����¡���Թ���</a>
	</center>
</body>
</html>