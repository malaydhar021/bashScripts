******\*/***************************************
*****(*.*)**************************************
*******|*******@@@@@@@@@@@@@@@@*****************
******/*\***************************************
************************************************

---------login to a server using sspass --------

1.install sshpass 

apt-get install sshpass 

2.go to local folder ..

cd /usr/local/bin 

3. create file 

----------------------------------
script content -------------------
----------------------------------

sshpass -p 'password' ssh -o StrictHostKeyChecking=no username@webaddress/ip


___________________________________

for sftp 

sshpass -p 'password' sftp -o StrictHostKeyChecking=no username@webaddress/ip



------------------------------------
---------****************-----------
------------------------------------




..........Malay Dhar(MD)............





