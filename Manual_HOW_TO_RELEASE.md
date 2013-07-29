When trying to release a new version of Qubal:

- Update the server on /home/pathtowhereisqubalapppythonfiles : Only copy the relevant files from the qubalapp folder (everything except static, media and settings stuff...)

- Update the static server on the public html path /var/www/qubal_public/pathtothere : Copy all the static that it will be needed there..

- Update the DB if needed: Drop the current one on the server. Generate a new on locally with SQLITE3 format. Open it up with SQLITE Browser and Export it as SQL. Now Run the script sqlite_ to_mysql.py and it will generate a file calle MYSQL_qubaldb.sql. That file needs still to be treated by replacing the " character for the ` character. Do it on your favorite editor. Once you have MYSQL_qubaldb.sql ready, go to phpmyadmin on the server and import the file. Everything should be then up an running (fingers crossed)




ALTER TABLE auth_user MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;