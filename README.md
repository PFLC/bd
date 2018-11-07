# MANEJO BASE DE DATOS (5TO SEMESTRE)
<a href="http://cooltext.com" target="_top"><img src="https://cooltext.com/images/ct_pixel.gif" width="80" height="15" alt="Cool Text: Logo and Graphics Generator" border="0" /></a>

<a href="https://cooltext.com"><img src="https://images.cooltext.com/5191263.gif" width="358" height="103" alt="Grupo 510" />
<body>

# Sitio de código colaborativo del grupo 510, primer paso es ver donde estamos localizados en el volumen del servidor
## # Listo empezamos en el servidor Linux, un poco mas enviaremos un archivo ahi.

``` 
root@ip-172-31-34-57:/home/ubuntu# cd
/home/ubuntu    ...contesta favor de recordarlo.

 
root@ip-172-31-34-57:/home/ubuntu#  mysql -u root -p    (o tambien "grupo510" para los avanzados)
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13591
Server version: 5.7.24-0ubuntu0.18.04.1 (Ubuntu)
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> GRANT ALL PRIVILEGES ON *.* TO 'grupo510'@'%' IDENTIFIED BY 'prepa123' WITH GRANT OPTION;
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.03 sec)

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

mysql> DESC autostbl ;
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

# En Mockaroo.com deberá preparar de manera analitica la estructura de la tabla,
## Sea parecida en los TIPOS DE DATOS (Texto, Integer,etc.) Y los nombre de los campos
## "NO USAR SIMBOLOS COMO Ñ, ETC. NI ESPACIOS EN LOS CAMPOS, usar giones o en camelCase" (solo los campos). Ejemplo:
### GUARDARLO CON LA EXTENSIÓN *.SQL A NOTEPAD Y DE SER POSIBLE VERIFICAR
ElArchivoAsubir.sql

# SUBIR ARCHIVOS
## Bash, el comando SCP (Secure CoPy) complementa el SSH para enviar archivo por el canal cifrado y seguro.
## Abre otro tabulador DENTRO DE WINDOWS 7,8,10
_Es copiar un archivo al internet de manera segura con comandos, ¡ Super !_
(Notará es similar a SSH, pero agregando un archivo a la izquierda y a la derecha una ruta al volumen o disco duro del servidor),
``` 
scp -i llavesita510.pem     ElArchivoAsubir.sql    ubuntu@xx.xx.xx.xx:/home/ubuntu


```
## Restauración o insertar información de relleno a su BD
## Dentro de Linux Server
```
ssh -i llavesita510.pem ubuntu@xx.xx.xx.xx
$ cd
$ ls
     ... Ocupamos localizar el ElArchivoAsubir.sql que llego anteriormente via SCP
     ...  debe esta en $ cd /home/ubuntu
     ... Ahora si listo para restaurar (o insertar masivamente)
$ mysql -u grupo510 -p < ElArchivoAsubir.sql
... aparecerá un mensaje del archivo que se esta copiando y todos los errores en los datos o estructura.

... Si requiere modificar algo en el servidor usar "nano" Editor
... $ nano ElArchivoAsubir.sql    (para guardar el CONTROL+o y salir CONTROL+x)

$ mysql -u grupo510 -p
> SHOW DATABASES;
> USE  nombreDeLaBaseDeDatos;
> SHOW TABLES;
> DESC ___NOMBRE DE LA TABLA___
    ... Y aparecera la estructura de la tabla
> Select *  from tabla;
    .. Y aqui las consultas que ya sabe hacer, ¡ Muy Bien  y claro logró superar los errores, es normal aprendiendo mucho !
``` 
# Cualquier duda estoy a sus ordenes.

# Adios Classroom.google.com ya se cerrará el curso.


