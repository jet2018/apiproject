<?php

class View {

    function __construct() {
        Session::init();
        $this->db = new Database();
    }

    public function renders($name) {
        require 'views/' . $name . '.php';
    }

    public function render($name, $noInclude = false) {
        if ($noInclude == true) {
            require 'views/' . $name . '.php';
        } else {


            require 'views/header.php';
			  require 'views/side.php';
            require 'views/' . $name . '.php';
            require 'views/footer.php';
        }
    }

}

?>
