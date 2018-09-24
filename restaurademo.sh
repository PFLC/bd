clear
echo '     |\_/|        ****************************    (\_/) '
echo '    / @ @ \       *   Programa que restaura  *   (='.'=) '
echo '   ( > º < )      *       BASE DE DATOS      *   (")_(") '
echo '    `>>x<<´       *        DEMO de MYSQL     *           '
echo '    /  O  \       ****************************           '
echo ' '
echo ' '
echo ' Copiar este archivo remoto en: '
echo ' $ scp -i llavesita510.pem restaurademo.sh ubuntu@52.91.45.209:/home/ubuntu/ '
pause
echo '--- Por el momento no poner APT UPGRADE --- Para salir CTRL + C ---- '
sudo apt update
cd
echo '--- Creando LAMP directamente poner password prepa123 ---- '
sudo apt install tasksel
sudo tasksel
clear

echo ' $ sudo mysql_secure_installation       '
echo ' -----     '
echo ' Cambiaremos el Password de Mysql     '
echo ' prepa123      '
echo '      '
echo ' Remove anonymous users?  YES    '
echo ' Disallow root login remotely?  YES     '
echo ' Remove test database and access to it? YES'
echo ' Reload privilege tables now? YES '
echo '-----------------------'
pause
sudo mysql_secure_installation

git clone https://github.com/datacharmer/test_db
cd test_db
echo '---- Restaurando -----'
mysql -t < employees.sql -u root -p 
time mysql -t < test_employees_sha.sql
mysql -u root -p 
echo '---- Terminado todo por Default ----'
