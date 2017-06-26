<?php
	//Conchas Jimenez Julio Cesar
	//conchasjimenez@gmail.com

if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    parse_str(file_get_contents("php://input"), $_PUT);
    if ($id = $_PUT['id']) {
        $name = $_PUT['name'];
        $id = NULL;
        $email = $_PUT['email'];
        $address = $_PUT['address'];
        $conn = mysqli_connect('localhost', 'root', '', 'webservice');
        //var_dump($conn);
        $sql = "
                    UPDATE webservice SET name='$name' , address='$address' , email='$email' WHERE id='$id'
               ";
        if (mysqli_connect_errno()) {
            echo json_encode(array(
                'status' => 'failure',
                'message' => 'Could Not connect to database',
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
