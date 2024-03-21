<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Példa</title>
    <script>
    async function api() {
        const response = await fetch("../api/password.php");
        const data = await response.json();
        document.getElementById('ujjelszo').innerText = data.password;
    }
    </script>
</head>
<body>
    <input type="button" value="Jelszó generálása" name="Jelszo" id="jelszo" onclick="api()">
    <p id="ujjelszo"></p>
</body>
</html>