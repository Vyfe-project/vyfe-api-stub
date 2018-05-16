<?php

$entities = array("groups", "sessions", "tags", "session_tag");

// Details
if (preg_match('#groups.json/1#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status:200 OK", false, 200);

        require 'group1.json';
}
elseif (preg_match('#sessions.json/1#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'session1.json';
}
elseif (preg_match('#tags.json/1#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'tag1.json';
}
elseif (preg_match('#tag_sessions.json/1#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'tag_session1.json';
}

// Lists
elseif (preg_match('#groups#isU', $_SERVER['REDIRECT_URL'], $match)) {
	header("Status: 200 OK", false, 200);

	require 'groups.json';
}
elseif (preg_match('#sessions#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'sessions.json';
}
elseif (preg_match('#tags#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'tags.json';
}
elseif (preg_match('#tag_sessions#isU', $_SERVER['REDIRECT_URL'], $match)) {
        header("Status: 200 OK", false, 200);

        require 'tag_sessions.json';
}

else {
	header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found", true, 404);
	http_response_code(404);
	die();
}
