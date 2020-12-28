<?php

class Session {

    public static function init() {
        @session_start();
    }

    public static function set($key, $value) {
        $_SESSION[$key] = $value;
    }

    public static function get($key) {
        return $_SESSION[$key];
    }

    public static function destroy() {
        session_destroy();
    }

    public static function checksession() {

        //If you are logged in
        if (!isset($_SESSION['loggedin'])) {
            header("Location:" . URL . 'login');
        }
    }

}

?>
