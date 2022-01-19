<?php
function doLogin($username, $password) {
	global $db;
	$rs = $db->query('SELECT * FROM blizzy_users WHERE username=? AND active=1', array(
		$username
	));
	if (count($rs) == 1) {
		$dbpassword = $rs[0]['password'];
		if (password_verify($password,$dbpassword)) {
			unset($rs[0]['password']);
			return $rs[0];
		}
	}
	return false;
}