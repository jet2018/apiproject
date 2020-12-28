<?php

class user extends Controller {

    public function __construct() {
        parent::__construct();
        }


function login() {
$data = $_POST;
$this->model->LoginRequest($data);
}

function persons() {
$rs = $this->model->MissingPersons();
echo json_encode($rs);
}

function property() {
$rs = $this->model->MissingProperty();
echo json_encode($rs);
}
function points(){
	
}

function tickets($car = null) {
if($car!=null){
$rs = $this->model->SearchTicket($car);
}else{
$rs = $this->model->GetTickets();
}

echo json_encode($rs);
}
 

}