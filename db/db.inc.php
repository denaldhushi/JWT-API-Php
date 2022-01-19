<?php
class Connection {

	public function query($query, $params = array()) {
		$pdo = new PDO('mysql:host=localhost;dbname=blizzyapi;charset=utf8', 'root', 'password');
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$statement = $pdo->prepare($query);
		foreach ($params as $key => $value) {
			$p = $value;
		}
		if (isset($p) && !is_array($p)) {
			$p = $params;
		}
		$statement->execute($p);
		if (explode(' ', $query)[0] == 'SELECT' || explode(' ', $query)[0] == 'select') {
			$data = $statement->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}

		return $pdo->lastInsertId();
	}
}