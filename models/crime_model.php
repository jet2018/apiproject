<?php

class crime_model extends Model {

public function __construct() {
parent::__construct();
}

function ReportCrime($dataPost){
try{
$latitude= $dataPost['latitude'];
$longitude= $dataPost['longitude'];
$category= $dataPost['category'];
$details= $dataPost['details'];
$us_id= $dataPost['us_id'];
$date= date("Y-m-d H:i:s");
$pid=1; $sta=0;
 
	
$postInfo = array(
            'CrimeType' =>$category,
            'Date' => $date,
            'latitude' => $latitude,
			'longitude' => $longitude,
			'User_id' =>$us_id,
            'Police_id' => $pid,
            'viewstatus' => $sta,

 	     );
		 
$id = $this->db->InsertData("crime", $postInfo);
 
   
$ResponseData['success']=1;
$ResponseData['message']="Reporting succesful";
echo json_encode($ResponseData);

 }catch(PDOException $e){
$error=$e->getMessage();
			
$ResponseData['success']=0;
$ResponseData['message']="Reporting failed";
echo json_encode($ResponseData);

        }
 
}

 
function MissingPersons() {
return $this->db->SelectData("SELECT * FROM persons WHERE Status='pending' order by perid desc");
}
function MissingProperty() {
return $this->db->SelectData("SELECT * FROM foundproperty order by id desc");
}

}
