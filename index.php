<?php
include 'database.php';
$Users = [123456789, 987654321];
if (!empty($_POST["user"])) {

    $PointValEuro = 0.001;

    //periode one
    // Start date
    $period1_val1 = date('Y-m-d', strtotime('01-01-2021'));
    //echo $period1_val1;
    // End date
    $period1_val2 = date('Y-m-d', strtotime('30-04-2021'));

    //periode two
    // Start date
    $period2_val1 = date('Y-m-d', strtotime('01-05-2021'));
    // End date
    $period2_val2 = date('Y-m-d', strtotime('31-08-2021'));

    //periode three
    // Start date
    $period3_val1 = date('Y-m-d', strtotime('01-10-2021'));
    // End date
    $period3_val2 = date('Y-m-d', strtotime('31-12-2021'));
    $user = $_POST["user"];
    $query = $pdo->prepare(
        ' SELECT * FROM orders,ordersdetails
         WHERE orders.id_order = ordersdetails.id_order
         and UserId=?
         AND (OrderDate BETWEEN ? AND ?
         OR  OrderDate BETWEEN ? AND ?
         OR  OrderDate BETWEEN ? AND ?)'
    );
    $query->execute([$user, $period1_val1, $period1_val2, $period2_val1, $period2_val2, $period3_val1, $period3_val2]);
    $orders = $query->fetchAll(); // donne un tableau associatif
}

include 'index.phtml';
