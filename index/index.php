<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Példa</title>
    <script>
        const response = await fetch("../api/password.php")
        .then(data => {document.getElementById('jelszo').value = data})
    </script>
</head>
<body>
    <input type="button" name="Jelszo" id="jelszo" onclick="api()">
</body>
</html>