<?php

$link = mysqli_connect("192.168.147.82", "arnut", "123456");

if (mysqli_connect_errno()) {
  printf("Connect faild: %s\n", mysqli_connect_error());
  exit();
}
printf("Server version %s\n", mysqli_get_server_info($link));
mysqli_close($link);

echo '\nCurrent PHP version: ' . phpversion();