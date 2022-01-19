<?php
/*
http://localhost/api/authenticate POST
{
	"username": "admin",
	"password": "12345678"
}
*/
if (!isset($data->username) || !isset($data->password)) {
	header('Content-Type: application/json; charset=utf-8');
	echo json_encode(array(
		'response' => 'wrong_request'
	));
	exit;
}
$username = $data->username;
$password = $data->password;
$doLogin = doLogin($username, $password);
if (!$doLogin) {
	header('Content-Type: application/json; charset=utf-8');
	echo json_encode(array(
		'response' => 'invalid_auth'
	));
	exit;
}
$headers = array(
	'alg' => 'HS256',
	'typ' => 'JWT'
);
$payload = array(
	'username' => $username,
	'exp'=> (time() + 604800)
);
$api_result = array(
	'token' => generate_jwt($headers, $payload),
	'user' => $doLogin
);