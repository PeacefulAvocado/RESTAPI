<?php
    // adatbázis kapcsolása
    // Adatbázis kapcsolódási adatok
    $servername = "localhost";
    $username = "root"; // Alapértelmezett felhasználónév XAMPP esetén
    $password = ""; // Alapértelmezett jelszó XAMPP esetén
    $database = "books"; // Az ön adatbázisának neve

    // Kapcsolódás az adatbázishoz
    $conn = new mysqli($servername, $username, $password, $database);
 
    //GET
        //összes
    $filePath = explode('/', $_SERVER['REQUEST_URI']);
    if ($_SERVER['REQUEST_METHOD'] == "GET" && $filePath[count($filePath) - 1] == "books.php")
    {
        $sql = "SELECT * FROM books";
        $result = $conn->query($sql);
        $books = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $books[] = $row;
            }
        }
        header('Content-Type: application/json');
        echo json_encode($books);
    }
    else  if ($_SERVER['REQUEST_METHOD'] == "GET" && $filePath[count($filePath) - 2] == "author")
    {
        
    }
     // Kapcsolat bezárása
     $conn->close();
?>