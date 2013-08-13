When trying to release a new version of Qubal:

- Update the server on /home/pathtowhereisqubalapppythonfiles : Only copy the relevant files from the qubalapp folder (everything except static, media and settings stuff...)

- Update the static server on the public html path /var/www/qubal_public/pathtothere : Copy all the static that it will be needed there..

- Update the DB if needed: 
- Drop (Delete/Erase) the current one on the server. 
- Generate a new one locally with MySQL format. 
- Once you have MYSQL file ready, go to phpmyadmin on the server (.../phpmyadmin)and import (aka copy&paste) the file. Everything should be then up an running (fingers crossed).

fix for the id null:
====================
ALTER TABLE auth_user MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT;


=========================================================================
Reprosteps ==============================================================
=========================================================================

=================
home/bochelord...
=================

mysite
======
Compare for changes in settings.py ---- escriba - escriba-sunrise - OK
Compare for changes in urls.py --------    "            "         - OK


qubalapp
========
Compare urls.py --------	"       "	        - OK
Compare admin.py -------	"	"		- Yes

Copy -> models.py
Copy -> qubal_check_image.py
Copy -> qubal_images.py
Copy -> qubal_init.py
Copy -> qubal_prerender.py
Copy -> qubal_rules.py
Copy -> qubal_xp.py
Copy -> tests.py

						   LOCAL		SERVER
						================================
Compare - views.py               note ->	(/landing/)		(/test/landing/)

qubalapp/templates
==================

compare -> navbar.inc				(/)			(/test)

copy -> index.html
copy -> index_teacher.html

Compare -> landing.html				

copy -> teams.html
copy -> course_listing.html
copy -> notifications.inc
copy -> profile.html
copy -> search_results.html

===========================
var/www/qubal_public/static
===========================

copy -> default_images (folder (if needed))
copy -> main_engine (folder)

=======================================================
=======================================================

- Go to qubal.ue/phpmyadmin
- export current database (qubaldb)

(use the script "recompile_db.py" (edit it to include the .sql file) - ERROR)

sudo service apache2 restart