<?php
	//Conchas Jimenez Julio Cesar
	//conchasjimenez@gmail.com

if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    parse_str(file_get_contents("php://input"), $_DELETE);
    if ($id = $_DELETE['id']) {
        $conn = mysqli_connect('localhost', 'root', '', 'webservice');
        //var_dump($conn);
        $sql = "
                    DELETE FROM webservice WHERE id='$id'
               ";
        if (mysqli_connect_errno()) {
            echo json_encode(array(
                'status' => 'failure',
                'message'=>'Could Not connect to database',
            ));
        }
        $data = mysqli_query($conn, $sql);
        if ($data) {
            echo json_encode(array(
                'status' => 'successful',
            ));
        } else {
            echo json_encode(array(
                'status' => 'failure',
            ));
        }
    }
}
?>
