<?php

//echo "SAlut";
//echo $_SERVER['REQUEST_METHOD'];
//echo $_GET['entity'];

parse_str(file_get_contents("php://input"),$post_vars);

// Details
if (preg_match('#groups/1$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
		header("Status: 200 OK", false, 200);
		require 'group1.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PUT" && isset($post_vars["name"])) {
		header("Status: 200 OK", false, 200);
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PATCH") {
		header("Status: 200 OK", false, 200);
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "DELETE") {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}
elseif (preg_match('#tag_sessions/1$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
        	header("Status: 200 OK", false, 200);
        	require 'tag_session1.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PUT" && isset($post_vars["fk_tag"]) && isset($post_vars["fk_session"]) && isset($post_vars["start"]) && isset($post_vars["end"])) {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "PATCH") {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "DELETE") {
                header("Status: 200 OK", false, 200);
        }
        else {
                header("Status: 400 BAD REQUEST", false, 400);
        }
}
elseif (preg_match('#sessions/1$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
        	header("Status: 200 OK", false, 200);
        	require 'session1.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PUT" && isset($post_vars["name"]) && isset($post_vars["author"]) && isset($post_vars["fk_group"]) && isset($post_vars["video_link"])) {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "PATCH") {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "DELETE") {
                header("Status: 200 OK", false, 200);
        }
        else {
                header("Status: 400 BAD REQUEST", false, 400);
        }
}
elseif (preg_match('#tags/1$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
        	header("Status: 200 OK", false, 200);
        	require 'tag1.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PUT" && isset($post_vars["name"]) && isset($post_vars["fk_tag_set"])) {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "PATCH") {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "DELETE") {
                header("Status: 200 OK", false, 200);
        }
        else {
                header("Status: 400 BAD REQUEST", false, 400);
        }
}
elseif (preg_match('#tag_sets/1$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
		header("Status: 200 OK", false, 200);
		require 'tag_set1.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "PUT" && isset($post_vars["name"])) {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "PATCH") {
                header("Status: 200 OK", false, 200);
        }
        elseif ($_SERVER['REQUEST_METHOD'] == "DELETE") {
                header("Status: 200 OK", false, 200);
        }
        else {
                header("Status: 400 BAD REQUEST", false, 400);
        }
}


// Lists
elseif (preg_match('#groups$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
	        header("Status: 200 OK", false, 200);
	        require 'jgroups.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["name"])) {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}
elseif (preg_match('#tag_sessions$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
	        header("Status: 200 OK", false, 200);
	        require 'jtag_sessions.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["fk_tag"]) && isset($_POST["fk_session"]) && isset($_POST["start"]) && isset($_POST["end"])) {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}
elseif (preg_match('#sessions$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
	        header("Status: 200 OK", false, 200);
	        require 'jsessions.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["name"]) && isset($_POST["author"]) && isset($_POST["fk_group"]) && isset($_POST["video_link"])) {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}
elseif (preg_match('#tags$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
	        header("Status: 200 OK", false, 200);
	        require 'jtags.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["name"]) && isset($_POST["fk_tag_set"])) {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}
elseif (preg_match('#tag_sets$#isU', $_SERVER['REDIRECT_URL'], $match)) {
	if ($_SERVER['REQUEST_METHOD'] == "GET") {
		header("Status: 200 OK", false, 200);
		require 'jtag_sets.json';
	}
	elseif ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["name"])) {
		header("Status: 200 OK", false, 200);
	}
	else {
		header("Status: 400 BAD REQUEST", false, 400);
	}
}

else {
	header("Status:400 BAD REQUEST", false, 400);
	http_response_code(400);
	die();
}
