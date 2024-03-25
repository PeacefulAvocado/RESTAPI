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
        if ($availability == "not_available")
        {
            $availability = "not available";
        }
        $sql = "INSERT INTO `books` (`title`, `author`, `availability`) VALUES
        ('$title', '$author', '$availability') ";
        try {
            $conn->query($sql);
            http_response_code(201);
        } catch (Exception $e) {
            http_response_code(400);
        }
    }
    else if ($_SERVER['REQUEST_METHOD'] == "PUT")
    {
        $title = $filePath[count($filePath) - 3];
        $author = $filePath[count($filePath) - 2];
        $availability = $filePath[count($filePath) - 1];
        $id = $filePath[count($filePath) - 4];
        if ($title == "")
        {
            $title = $conn->query("select title from books where id = $id");
            $title = $title->fetch_assoc()['title'];
        }
        if ($author == "")
        {
            $author = $conn->query("select author from books where id = $id");
            $author = $author->fetch_assoc()['author'];
        }
        if ($availability == "")
        {
            $availability = $conn->query("select availability from books where id = $id");
            $availability = $availability->fetch_assoc()['availability'];
        }
        if ($availability == "not_available")
        {
            $availability = "not available";
        }
        $sql = "update books set title = '$title', author = '$author', availability = '$availability' where id = $id";
        try {
            $conn->query($sql);
            http_response_code(201);
        } catch (Exception $e) {
            http_response_code(400);
        }
    }
    else if ($_SERVER["REQUEST_METHOD"] == "DELETE")
    {
        $id = $filePath[count($filePath) - 1];
        $sql = "delete from books where id = $id";
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