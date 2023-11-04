<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator</title>
    <link href="/dist/output.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.7/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">

    <?php
    $hasil = 0; // Inisialisasi hasil
    $bil1 = isset($_POST['bil1']) ? htmlspecialchars($_POST['bil1']) : ''; // Periksa apakah bil1 sudah ada
    $bil2 = isset($_POST['bil2']) ? htmlspecialchars($_POST['bil2']) : ''; // Periksa apakah bil2 sudah ada

    if (isset($_POST['hitung'])) {
        $bil1 = htmlspecialchars($_POST['bil1']);
        $bil2 = htmlspecialchars($_POST['bil2']);
        $operasi = $_POST['operasi'];
        switch ($operasi) {
            case 'tambah':
                $hasil = $bil1 + $bil2;
                break;
            case 'kurang':
                $hasil = $bil1 - $bil2;
                break;
            case 'kali':
                $hasil = $bil1 * $bil2;
                break;
            case 'bagi':
                $hasil = $bil1 / $bil2;
                break;
            case 'modulus':
                $hasil = $bil1 % $bil2;
                break;
        }
    }
    ?>

    <div class="kalkulator bg-white w-1/3 mx-auto p-4 rounded-lg shadow-md mt-10">
        <h2 class="text-2xl font-bold text-center mb-4">KALKULATOR</h2>
        <form method="post" action="" class="mb-4">
            <input type="text" name="bil1" class="w-full p-2 rounded-lg border" autocomplete="off" placeholder="Masukkan Bilangan Pertama" value="<?php echo $bil1; ?>">
            <input type="text" name="bil2" class="w-full p-2 rounded-lg border mt-2" autocomplete="off" placeholder="Masukkan Bilangan Kedua" value="<?php echo $bil2; ?>">
            <select class="w-full p-2 rounded-lg border mt-2" name="operasi">
                <option value="tambah">+</option>
                <option value="kurang">-</option>
                <option value="kali">x</option>
                <option value="modulus">%</option>
                <option value="bagi">:</option>
            </select>
            <div class="flex mt-4">
                <input type="submit" name="hitung" value="Hitung" class="w-1/2 bg-blue-500 text-white rounded-md p-2 cursor-pointer">
                <input type="reset" name="reset" value="Clear" class="w-1/2 bg-gray-400 text-white rounded-md p-2 cursor-pointer ml-2">
            </div>
        </form>

        <input type="text" value="<?php echo $hasil; ?>" class="w-full p-2 rounded-lg border">
    </div>

    <div class="output text-center mt-4">
        <?php

        if ($hasil % 2 == 0) {
            echo "<span class='text-lg font-bold'>Tinggi piramida: $hasil Genap</span>";
        } else {
            echo "<span class='text-lg font-bold'>Tinggi piramida: $hasil Ganjil</span>";
            echo "<p class='mt-2'>Nama : Ananda Maulana Wahyudi</p>";
            echo "<p>Nim : 2202310054</p>";
        }

        for ($i = 1; $i <= $bil1; $i++) {
            for ($j = $i; $j < $i +  $bil2; $j++) {
                echo "&nbsp;";
            }
            for ($k = 1; $k <= (2 * $i - 1); $k++) {
                echo "*";
            }
            echo "<br>";
        }
        ?>
    </div>

</body>

</html>