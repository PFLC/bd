clear
echo '     |\_/|        ****************************    (\_/) '
echo '    / @ @ \       *   Programa que restaura  *   (='.'=) '
echo '   ( > º < )      *       BASE DE DATOS      *   (")_(") '
echo '    `>>x<<´       *        DEMO de MYSQL     *           '
echo '    /  O  \       ****************************           '
echo
echo
echo ' Copiar este archivo remoto en: '
echo ' $ scp -i llavesita510.pem restaurademo.sh ubuntu@52.91.45.209:/home/ubuntu/ '
pause
echo '--- Por el momento no poner APT UPGRADE --- Para salir CTRL + C ---- '
sudo apt update
cd
echo '--- Creando LAMP directamente poner password prepa123 ---- '
sudo tasksel install lamp-server
git clone https://github.com/datacharmer/test_db
mysql -t < employees.sql -p prepa123
time mysql -t < test_employees_sha.sql
mysql -u root -p prepa123
echo '---- Terminado todo por Default ----'
