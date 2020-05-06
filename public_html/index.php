<h1>Hello from APMP-Docker!</h1>
<h4>Attempting MySQL connection from php...</h4>
<?php
$host = 'mysql';
$user = 'root';
$pass = 'root';
$conn = new mysqli($host, $user, $pass);

echo "Testing mysql connection...<br><br>";
if ($conn->connect_error) {
    echo "Failed connecting to mysql:<br>";
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySQL successfully!<br>";
    echo "Mysql Test passed!";
}
 
?>