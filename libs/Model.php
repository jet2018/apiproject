<?php
class Model {

    function __construct() {
        $this->db = new Database();
 		$this->mailer =  new MailClient();
    }

    function MakeSeed() {
        list($usec, $sec) = explode(' ', microtime());
        return (float) $sec + ((float) $usec * 100000);
    }
	
function FormatResponse($code,$message){
$response["response"] = $code;
$response["message"] = $message;
return $response;
}
 
function SendClientEmail($body,$address,$subject){
$rs =  $this->mailer->sendEmail($body,$address,$subject);
if($rs==TRUE){
$response['status']=1;	
return $response;
}else{
$response['status']=0;
return $response;
}

}

 
}