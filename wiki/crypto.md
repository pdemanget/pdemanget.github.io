
Asymetric key usage
=================
Sources
-------
https://serverfault.com/questions/9708/what-is-a-pem-file-and-how-does-it-differ-from-other-openssl-generated-key-file
https://stackoverflow.com/questions/2292495/what-is-the-difference-between-a-cer-pvk-and-pfx-file/45886431#45886431
https://stackoverflow.com/questions/991758/how-to-get-pem-file-from-key-and-crt-files

https://stackoverflow.com/questions/29010967/openssl-unable-to-load-public-key

https://www.sslshopper.com/article-most-common-openssl-commands.html
https://stackoverflow.com/questions/21138420/openssl-fails-to-produce-a-pfx-with-a-valid-alias
https://www.shellhacks.com/create-csr-openssl-without-prompt-non-interactive/
https://stackoverflow.com/questions/6482484/how-to-use-key-and-crt-file-in-java-that-generated-by-openssl








File formats
------------
- .pem, .cer, .cert
- .p12, .pfx : contains both certificate en private keys.
- .ssh/id_rsa.pub & .ssh/id_rsa 

.pem == .cer == .cert == "PEM"
    base-64 (string) encoded X509 cert (binary) with a header and footer 

Java only
- .jks or keystore (déprécié? java peut lire du p12 ou pfx standard)
https://docs.oracle.com/cd/E19509-01/820-3503/ggfen/index.html
- depuis java8 on peut stocker clef-certif ou certif uniquement dans la p12, remplaçant les possibilités du jks. 


softwares
---------
CLI:
- openssl
- keytool (jdk)

GUI:
- portecle


### nginx

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout selfsigned.key -out selfsigned.crt

ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;


Convertion of file format with openssl
----------------------------------------
https://www.sslshopper.com/article-most-common-openssl-commands.html

### afficher contenu d'un pem
openssl x509 -in cert.pem -text -noout



Examples
========

creation of a key-pair


Crypt-decrypt
------------
$ openssl genrsa -out key.pem 1024 
$ openssl rsa -in key.pem -text -noout 

2) Save public key in pub.pem file:

$ openssl rsa -in key.pem -pubout -out pub.pem 
$ openssl rsa -in pub.pem -pubin -text -noout 

3) Encrypt some data:

$ echo test test test > file.txt 
$ openssl rsautl -encrypt -inkey pub.pem -pubin -in file.txt -out file.bin 

4) Decrypt encrypted data:

$ openssl rsautl -decrypt -inkey key.pem -in file.bin 

Conversion key+crt->pfx
-----------------------
openssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile more.crt


Generation
-----------
### key only

### self-cert crt+key+pfx
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt
openssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -name alias -password pass:password



openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout applix.key -out applix.crt -subj "/C=FR/O=Enfrasys/CN=applix"
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout wincc.key -out wincc.crt -subj "/C=FR/O=Enfrasys/CN=wincc"
openssl pkcs12 -export -out applix.pfx -inkey applix.key -in applix.crt -name applix -password pass:password
openssl pkcs12 -export -out wincc.pfx -inkey wincc.key -in wincc.crt -name wincc -password pass:password

## use in java
THE keystore, is the old fashionned private way to use keys in java.

-noprompt

keytool -importcert -help




### from SSH
 ssh-keygen -y -f mykey.pem > mykey.pub
 