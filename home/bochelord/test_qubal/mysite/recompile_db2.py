import MySQLdb as mdb
import	os, sys, subprocess
import datetime
import fileinput

# Archivo sql donde se encuentran los datos de la base de datos guardados.
#sql_script_file = 'Dump07-08-2013.sql'
database_name = 'qubaldb'

# Conectamos con la base de datos en local, como root, sin pass y en la base de datos local_qubaldb
con = mdb.connect('localhost', 'root', 'Sunr1s3', 'qubaldb');

# arrancamos el cursor de la base de datos
cur = con.cursor()

now = datetime.datetime.now()
filename = "backup_" + now.strftime("%d-%m-%Y_%H-%M") + ".sql"

# guardamos el archivo con todo el tocho de lineas del script que hemos generado
# FILE = open(filename,"w")
# FILE.writelines(data)
# FILE.close()
print "Archivo creado para guardar los datos: " + filename + ".\n\n\n"

subprocess.call('mysqldump -c -e --add-locks -n -t -p -u root ' + database_name + ' > '+ filename, shell=True)

cur.execute("drop schema `" + database_name + "`;")
print "qubaldb borrada"

cur.execute("CREATE SCHEMA `" + database_name + "`;")
print "qubaldb creada"

# Con subprocess.call podemos ejecutar comandos en la consola de comandos.
subprocess.call('python manage.py sql qubalapp', shell=True)

subprocess.call('python manage.py syncdb', shell=True)

# Abrimos el archivo (que esta en la variable)
#sql_file = open(sql_script_file)
#print "Archivo: "+ str(sql_script_file)

# Conectacmos con la base de datos, otra vez, para preparar el archivo a insertar.
#con = mdb.connect('localhost', 'root', '', database_name);

#full_sql = sql_file.read()
#sql_commands = full_sql.split(';')

#cur.execute("USE `"+ database_name + "`")

FILE = open(filename,"r")

data = "USE `"+ database_name + "`;"
for line in FILE.readlines():
    data += str(line)

FILE.close()

FILE = open(filename,"w")
FILE.writelines(data)
FILE.close()

print "Los datos de la base de datos estan guardados en: " + str(filename)
# read_generated_script = raw_input("Quieres leer el SQL Script generado? (s/n) ")

# if read_generated_script == 's':
    #subprocess.call('mysql -p -u "root" ' + database_name + '<' + filename, shell=True)

# for sql_command in sql_commands:
#    cur.execute(sql_command)
#    print sql_command
