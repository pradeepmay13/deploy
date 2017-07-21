<?php header('Access-Control-Allow-Origin: *');
  $dsn = "mysql:host=localhost;dbname=oops;charset=utf8";
    $opt = array(
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    );
    $pdo = new PDO($dsn,'root','', $opt);

    $sql = "SELECT * FROM tbl_users WHERE email_id=?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array('dsfds@gmail.com'));
    $user = $stmt->fetchAll();
	$jsondata=json_encode($user);
	header('Content-type: application/json');
    print_r($jsondata);
?>