<?php
require_once 'vendor/autoload.php';
$db = new Connection();
//header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, HEAD, OPTIONS');
if (isset($_REQUEST['operation']) && !empty($_REQUEST['operation'])) {
	$operations = array(
		'authenticate' => 'auth/authenticate.php'
	);
	//check for token
	if ($_REQUEST['operation'] != 'authenticate') {
		$bearer_token = get_bearer_token();
		$is_jwt_valid = is_jwt_valid($bearer_token);
		if (!$is_jwt_valid) {
			echo json_encode(array(
				'response' => 'Invalid Token'
			));
			exit;		
		}
	}
	if (file_exists($operations[$_REQUEST['operation']])) {
		$data = json_decode(
			file_get_contents('php://input', true)
		);
		require $operations[$_REQUEST['operation']];
		echo json_encode(array(
			'response' => $api_result
		));
	} else {
		http_response_code(400);
	}
}