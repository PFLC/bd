echo      |\_/|        ****************************    (\_/)
echo     / @ @ \       *   Programa que restaura  *   (='.'=)
echo    ( > º < )      *       BASE DE DATOS      *   (")_(")
echo     `>>x<<´       *        DEMO de MYSQL     *
echo     /  O  \       ****************************
pause
sudo apt update
cd
sudo tasksel install lamp-server
git clone https://github.com/datacharmer/test_db
mysql -t < employees.sql -p prepa123
time mysql -t < test_employees_sha.sql
mysql -u root -p prepa123
echo ---- Terminado todo por Default ----
