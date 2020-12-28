<?php

class crime extends Controller {

    public function __construct() {
        parent::__construct();
        }


function reportcrime() {
$data = $_POST;
$this->model->ReportCrime($data);
}

 

}