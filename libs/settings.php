<?php
date_default_timezone_set("Africa/Kigali");

/*
 * Database Credentials
 */
ini_set('memory_limit', '-1'); 
define('DB_TYPE', 'mysql');
define('DB_HOST'  , 'localhost',     true);
define('DB_USER'  , 'root',     true);
define('DB_PASS'  , 'root',     true);
define('DB_NAME'    , '2014_forex',     true);

/*
 * Encryption Algo
 */

define('ENC', 'sha256');

/*
 * System Hash Keys
 */
define('HASH_PASS_KEY', '4[nM#X#e2IGA&ZNA.-ud-@2R2}W|P0xU[KrrrT6ulN%Sw2dg~7,@;)2<~Z^EZciP');
define('HASH_GEN_KEY', '4[nM#X#ezAg,L.2CS.-ud-@2R2}W|P0xU[KrrrT6ulN%Sw2dg~7,@;)2<~Z^EZciP');


?>
