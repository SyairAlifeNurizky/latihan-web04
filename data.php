<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "aboutdb"; // Ganti dengan nama database kamu

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT kategori, jumlah FROM customer_data"; // Ganti sesuai nama tabel & kolom
$result = $conn->query($sql);

$data = [
    'labels' => [],
    'data' => []
];

while($row = $result->fetch_assoc()) {
    $data['labels'][] = $row['kategori'];
    $data['data'][] = (int)$row['jumlah'];
}

$conn->close();

echo json_encode($data);
?>
