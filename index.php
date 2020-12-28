<?php

require 'config/config.php';


function __autoload($class){
    
    require LIBS. $class.".php";
}

new Bootstrap();