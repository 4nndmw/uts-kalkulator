<?php

require './controller/nimController.php';

if (isset($_POST['submit'])) {
    $number = (int)$_POST['number'];
    $generator = new nimSaya();
    $result = $generator->generate($number);
    echo "<pre>$result</pre>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2202310054</title>
</head>

<body>

    <form method="post" action="">
        <label for="number">Nim : </label>
        <input type="number" name="number" id="number">
        <button type="submit" name="submit" id="submit">submit</button>
    </form>

</body>

</html>