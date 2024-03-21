<?php
    if($_SERVER['REQUEST_METHOD'] == 'GET' && $_SERVER['REQUEST_URI'] === '/password') {

        $password = generate_random_string();

        header('Content-Type: application/json');
        echo json_encode($password);
    }

    function generate_random_string($length = 12) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?_-#&@';
        $random_string = '';
    
        for ($i = 0; $i < $length; $i++) {
            $random_string .= $characters[rand(0, strlen($characters) - 1)];
        }
    
        return $random_string;
    }
    

  
?>