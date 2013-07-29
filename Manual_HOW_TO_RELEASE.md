When trying to release a new version of Qubal:

- Update the server on /home/pathtowhereisqubalapppythonfiles : Only copy the relevant files from the qubalapp folder (everything except static, media and settings stuff...)

- Update the static server on the public html path /var/www/qubal_public/pathtothere : Copy all the static that it will be needed there..

- Update the DB if needed: 
- Drop (Delete/Erase) the current one on the server. 
- Generate a new one locally with SQLITE3 format.
-- Open it up with SQLITE Browser and Export it as SQL (the file has to be called SQLITE3_qubaldb.sql).
- Now Run the script sqlite_ to_mysql.py (folder escriba/databse) and it will generate a file called MYSQL_qubaldb.sql. That file needs still to be treated by replacing the " character for the ` character. Do it on your favorite editor. 
- Once you have MYSQL_qubaldb.sql ready, go to phpmyadmin on the server (.../phpmyadmin)and import the file. Everything should be then up an running (fingers crossed).

fix for the id null:
====================
ALTER TABLE auth_user MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;