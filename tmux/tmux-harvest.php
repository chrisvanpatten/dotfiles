<?php
$home = $_SERVER["HOME"];

$credentials = dirname( __FILE__ ) . '/.harvest.json';
$credentials = file_get_contents( $credentials );
$credentials = json_decode( $credentials, true );

$company     = $credentials['company'];
$credentials = "{$credentials['email']}:{$credentials['password']}";

$url = "https://$company.harvestapp.com/daily/";

$headers = array(
  "Content-type: application/json",
  "Accept: application/json",
  "Authorization: Basic " . base64_encode($credentials)
);

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_TIMEOUT, 60);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

$resp = curl_exec($ch);
$data = json_decode($resp, true);

if (curl_errno($ch)) {
  print "Error: " . curl_error($ch);
} else {
  curl_close($ch);
  $today = $data["day_entries"];
  $timer_running = false;

  if ( empty($today) ) {
    echo "No timer running";
    return;
  }

  foreach($data["day_entries"] as $entry) {
    $project = $entry["project"];

    if ( array_key_exists("timer_started_at", $entry) ) {
      $timer_running = true;

      $decimal = $entry["hours"];
	  $hours   = floor( $decimal );
      $minutes = round( 60 * ( $decimal - $hours ) );
      $time    = str_pad( $hours, 2, "0", STR_PAD_LEFT ) . ":" . str_pad( $minutes, 2, "0", STR_PAD_LEFT );

      echo "$project - $time";
    } 
  }

  if ( $timer_running == false ) {
    echo "No timer running";
  }
}
