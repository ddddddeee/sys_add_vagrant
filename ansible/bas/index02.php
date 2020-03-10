<html>
 <head>
<title>server-02</title>
</head>
 </html>    
<?php
 $conn = new mysqli("192.168.147.82", "myuser", "123456", "account");
 // Check connection
 if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
 }

 $sql = "SELECT * FROM Account";
 $result = $conn->query($sql);
 if ($result->num_rows > 0) {
    // output data of each row
    
    while($row = $result->fetch_assoc()) {
        echo "ACC_No: " . $row["ACC_No"]. " - ACC_Name: " . $row["ACC_Name"]. " " . $row["ACC_Surname"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>