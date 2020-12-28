<?php

class user_model extends Model {

public function __construct() {
parent::__construct();
}

function LoginRequest($dataPost){

    $phone=$dataPost['phone'];
	$fname=$dataPost['fname'];
	$lname=$dataPost['lname'];
	$email=$dataPost['email'];
	
$sth = $this->db->prepare("SELECT * FROM user WHERE   Contact = :phone");
$sth->execute(array(':phone' => $phone));
$data = $sth->fetch();
$count = $sth->rowCount();

$ResponseData = array();
if ($count > 0) {
$ResponseData['success']=1;
$ResponseData['message']="Login Successful";
$ResponseData['phoneno']=$data['sacco_id'];
$ResponseData['fname']=$data['sacco_id'];
$ResponseData['lname']=$data['sacco_id'];
$ResponseData['email']=$data['email'];
$ResponseData['us_id']=$data['id'];
}
else{
	
$postInfo = array(
            'FName' =>$fname,
            'LName' => $lname,
            'Contact' => $phone,
			'email' => $email, 
 	     );
		 
$id = $this->db->InsertData("user", $postInfo);

$ResponseData['success']=1;
$ResponseData['message']="User registred";
$ResponseData['phoneno']=$phone;
$ResponseData['fname']= $fname;
$ResponseData['lname']= $lname;
$ResponseData['email']=$email;
$ResponseData['us_id']= $id;
}
echo json_encode($ResponseData);

die();
}

 
function MissingPersons() {
return $this->db->SelectData("SELECT * FROM persons WHERE Status='pending' order by perid desc");
}
function MissingProperty() {
return $this->db->SelectData("SELECT * FROM foundproperty order by id desc");
}

function GetTickets() {
return $this->db->SelectData("SELECT * FROM vehicletickets order by date desc");
}
function SearchTicket($car) {
return $this->db->SelectData("SELECT * FROM vehicletickets WHERE CarNo LIKE '".$car."%' order by date desc");
}


}
