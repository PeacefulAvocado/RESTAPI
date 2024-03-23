<?php
    // adatbázis kapcsolása
    // Adatbázis kapcsolódási adatok
    $servername = "localhost";
    $username = "root"; // Alapértelmezett felhasználónév XAMPP esetén
    $password = ""; // Alapértelmezett jelszó XAMPP esetén
    $database = "books"; // Az ön adatbázisának neve

    // Kapcsolódás az adatbázishoz
    $conn = new mysqli($servername, $username, $password, $database);
 
    $filePath = explode('/', $_SERVER['REQUEST_URI']);
    //GET
    if ($_SERVER['REQUEST_METHOD'] == "GET" && $filePath[count($filePath) - 2] == "author")
    {
        $sql = "SELECT * FROM books where author like '%".$filePath[count($filePath) - 1]."%'";
        $result = $conn->query($sql);
        $books = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $books[] = $row;
            }
        }
        header('Content-Type: application/json');
        http_response_code();
        echo json_encode($books);
    }
    else  if ($_SERVER['REQUEST_METHOD'] == "GET" && $filePath[count($filePath) - 2] == "title")
    {
        $sql = "SELECT * FROM books where title like '%".$filePath[count($filePath) - 1]."%'";
        $result = $conn->query($sql);
        $books = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $books[] = $row;
            }
        }
        header('Content-Type: application/json');
        http_response_code();
        echo json_encode($books);
    }

    else if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $title = $filePath[count($filePath) - 3];
        $author = $filePath[count($filePath) - 2];
        $availability = $filePath[count($filePath) - 1];

        $sql = "INSERT INTO `books` (`title`, `author`, `availability`) VALUES
        ('$title', '$author', '$availability') ";
        try {
            $conn->query($sql);
            http_response_code(201);
        } catch (Exception $e) {
            http_response_code(400);
        }
        
    }

     // Kapcsolat bezárása
     $conn->close();
?>