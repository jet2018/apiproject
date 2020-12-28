 <?php
error_reporting(E_STRICT);
date_default_timezone_set('America/Toronto');
 
class MailClient{


function __construct() {
require_once('mailer/class.phpmailer.php');
global $mail;
$mail = new PHPMailer();
$mail->IsSMTP();  
$mail->Host       = "mail.clicmonkey.xyz";  
$mail->SMTPDebug  = 1;                      
$mail->Host       = "mail.clicmonkey.xyz";  
$mail->Port       = 25;                     
$mail->Username   = "support@clicmonkey.xyz"; 
$mail->Password   = "Kampala123";  

$mail->SetFrom('no-reply@emmabot.com', 'Trading Bot');


    }
	
 

function sendEmail($body,$address,$subject){
 global $mail;
$ad = explode("@",$address);
$name =$ad[0];
  
$mail->Subject    = $subject;
$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!";  
$mail->MsgHTML($body);
$mail->AddAddress($address, $name);

if($mail->Send()) {
  return TRUE;
} else {
return FALSE;
}

}
  

}

?>