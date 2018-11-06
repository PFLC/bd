# Curso de Base de datos
<a href="http://cooltext.com" target="_top"><img src="https://cooltext.com/images/ct_pixel.gif" width="80" height="15" alt="Cool Text: Logo and Graphics Generator" border="0" /></a>

<a href="https://cooltext.com"><img src="https://images.cooltext.com/5191263.gif" width="358" height="103" alt="Grupo 510" />
<body>

# Sitio de código colaborativo del grupo 510
``` 
oot@ip-172-31-34-57:/home/ubuntu#  mysql -u root -p 
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13591
Server version: 5.7.24-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> GRANT ALL PRIVILEGES ON *.* TO 'grupo510'@'%' IDENTIFIED BY 'prepa123' WITH GRANT OPTION;
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.03 sec)

....Aqui viene lo interesante....

mysql> create database AutosJaguarDB;
Query OK, 1 row affected (0.00 sec)

mysql> use AutosJaguarDB;
Database changed

mysql> CREATE TABLE autostbl (
       serieID varchar(35) NOT NULL PRIMARY KEY, 
       marca varchar(20) NOT NULL, 
       modelo varchar(20) NOT NULL, 
       anual varchar(20) NOT NULL);
       
mysql> show tables ;
+-------------------------+
| Tables_in_AutosJaguarDB |
+-------------------------+
| autostbl                |
+-------------------------+
1 row in set (0.00 sec)
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| serieID | varchar(35) | NO   | PRI | NULL    |       |
| marca   | varchar(20) | NO   |     | NULL    |       |
| modelo  | varchar(20) | NO   |     | NULL    |       |
| anual   | int(11)     | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)



``` 


# EXPORTAR ARCHIVO *.SQL A NOTEPAD Y DE SER POSIBLE VERIFICAR "NO USAR SIMBOLOS COMO Ñ, ETC. NI ESPACIOS EN LOS CAMPOS, usar giones o en camelCase" (solo los campos). Ejemplo:
ElArchivoAsubir.sql


## Bash, el comando SCP (Secure CoPy) complementa el SSH para enviar archivo por el canal cifrado y seguro.
## Abre otro tabulador DENTRO DE WINDOWS 7,8,10
_Es copiar un archivo al internet de manera segura_
``` 
scp -i llavesita510.pem ElArchivoAsubir.sql  ubuntu@xx.xx.xx.xx:/home/ubuntu
(Notará es similar a SSH, pero agregando un archivo a la izquierda y a la derecha una ruta al volumen o disco duro del servidor)

```

## Generar restauración o insertar información de relleno a su BD
## Dentro de Linux Server
```
ssh -i llavesita510.pem ubuntu@xx.xx.xx.xx
$  cd
$ ls
     ... Ocupamos localizar el ElArchivoAsubir.sql en su disco duro PC
$ mysql -u grupo510 -p < ElArchivoAsubir.sql
... aparecerá un mensaje del archivo que se esta copiando

$ mysql -u grupo510 -p
> SHOW DATABASES;
> USE  nombreDeLaBaseDeDatos;
> SHOW TABLE;
> DESC 

``` 
