import MySQLdb as mdb
import	os, sys, subprocess
import datetime

# Archivo sql donde se encuentran los datos de la base de datos guardados.
sql_script_file = 'Data_Dump_04-08-2013_local_to_sunrise_Toro_Release.sql'

# Conectamos con la base de datos en local, como root, sin pass y en la base de datos local_qubaldb
con = mdb.connect('localhost', 'root', 'Sunr1s3', 'qubaldb');

# arrancamos el cursos de la base de datos
cur = con.cursor()
# y ejecutamos
cur.execute("SHOW TABLES")
data = ""

# estas lineas parece que hacen falta para que el script sql funcione a la hora de insertar en la db
data += "CREATE DATABASE  IF NOT EXISTS `qubaldb`;\n"

data += "USE `qubaldb`;\n\n"

data += "/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\n"
data += "/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\n"
data += "/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\n"
data += "/*!40101 SET NAMES utf8 */;\n"
data += "/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;\n"
data += "/*!40103 SET TIME_ZONE='+00:00' */;\n"
data += "/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;\n"
data += "/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;\n"
data += "/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;\n"
data += "/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;\n\n"

tables = []
for table in cur.fetchall():
    tables.append(table[0])

for table in tables:
    
    if (table != 'auth_user_user_permissions') and (table != 'auth_user_groups') and (table != 'auth_group_permissions') and (table != 'auth_group') and (table != 'auth_permission') and (table != 'django_admin_log') and (table != 'django_content_type') and (table != 'django_session') and (table != 'django_site'):
        data += "LOCK TABLES `" + str(table) + "` WRITE;\n"
        data += "/*!40000 ALTER TABLE `" +str(table)+"` DISABLE KEYS */;\n"
        # print str(data)
    
        cur.execute("SELECT * FROM `" + str(table) + "`;")
        for row in cur.fetchall():
            data += "INSERT INTO `" + str(table) + "` VALUES("
            first = True
            for field in row:
                if not first:
                    data += ', '
                data += '"' + str(field) + '"'
                first = False

            data += ");\n"
   
        data += "/*!40000 ALTER TABLE `" +str(table)+"` ENABLE KEYS */;\n"
        data += "UNLOCK TABLES;\n\n" 
        # print str(data)

now = datetime.datetime.now()
filename = "backup_" + now.strftime("%d-%m-%Y_%H-%M") + ".sql"

# guardamos el archivo con todo el tocho de lineas del script que hemos generado
# FILE = open(filename,"w")
# FILE.writelines(data)
# FILE.close()
# print filename + " - Archivo guardado con los datos de local_qubaldb."


cur.execute("drop schema `qubaldb`;")
print "qubaldb borrada"
cur.execute("CREATE SCHEMA `qubaldb`;")
print "qubaldb creada"

# Con subprocess.call podemos ejecutar comandos en la consola de comandos.
subprocess.call('sudo python manage.py sql qubalapp', shell=True)

subprocess.call('sudo python manage.py syncdb', shell=True)

# Abrimos el archivo (que esta en la variable)
sql_file = open(sql_script_file)
print "Archivo: "+ str(sql_script_file)

# Conectacmos con la base de datos, otra vez, para preparar el archivo a insertar.
con = mdb.connect('localhost', 'root', 'Sunr1s3', 'qubaldb');

full_sql = sql_file.read()
sql_commands = full_sql.split(';')

cur.execute("USE qubaldb")

for sql_command in sql_commands:
    cur.execute(sql_command)
    print sql_command
