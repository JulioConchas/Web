<?php
	
	//Conchas Jimenez Julio Cesar
	//conchasjimenez@gmail.com

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if ($id = $_GET['id']) {
        $conn = mysqli_connect('localhost', 'root', '', 'webservice');
        //var_dump($conn);
        $sql = "
                    SELECT * FROM user WHERE id='$id'
               ";
        if (mysqli_connect_errno()) {
            echo json_encode(array(
                'status' => 'failure',
                'message' => 'Could Not connect to database',
            ));
        }
        $data = mysqli_query($conn, $sql);
        if ($data) {
            while ($row = mysqli_fetch_array($data)) {
                echo json_encode($row);
            }
        }
    }
}
?>
