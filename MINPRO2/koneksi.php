<?php

$hostname = "localhost";
$username = "root";
$password = "";
$dbname = "portfolio_db";

$conn = mysqli_connect($hostname, $username, $password, $dbname, 3306);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}