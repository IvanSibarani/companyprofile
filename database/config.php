<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "laravel_admin_cms_inhutani";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
