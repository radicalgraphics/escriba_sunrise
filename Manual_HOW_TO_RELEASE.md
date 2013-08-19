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
Compare for changes in settings.py ---- escriba - escriba-sunrise - OK / OK
Compare for changes in urls.py --------    "            "         - OK / OK


qubalapp
========
Compare urls.py --------	"       "	        - OK / OK
Compare admin.py -------	"	"				- OK / OK

Copy -> models.py
copy -> qubal_forms.py
Copy -> qubal_check_image.py
Copy -> qubal_images.py
Copy -> qubal_init.py
Copy -> qubal_prerender.py
Copy -> qubal_rules.py
Copy -> qubal_xp.py
Copy -> tests.py 								- OK / OK

						   LOCAL		SERVER
						================================
Compare - views.py               note ->	(/landing/)		(/test/landing/)    - OK / OK

qubalapp/templates
==================

compare -> navbar.inc				(/)			(/test)                         - OK / OK
 
compare -> index.html 															- OK / Ok
compare -> index_teacher.html 													- OK / Ok

Compare -> landing.html															- OK / Ok

compare -> teams.html 															- OK / Ok
compare -> course_listing.html 													- OK / OK
compare -> notifications.inc 													- OK / Ok
compare -> profile.html 														- OK / Ok
compare -> search_results.html 													- OK / Ok
compare -> file_field.html 														- OK / OK
compare -> quest.html 															- OK / Ok
compare -> quest_listing.html 													- OK / Ok
compare -> register_character.html 												- OK / Ok
compare -> course_listing_teacher.html 											- 
compare -> deliverable_field.html 												- 
compare -> oracle_landing.html 													- 
compare -> task.html 															-
compare -> teams_teacher.html 													- 


===========================
var/www/qubal_public/static
===========================

copy -> default_images (folder (if needed))
copy -> css 																	**** Font Awesome FIXX Check fontawesome.css and bootstrap-flatly.css put the path from http://qubal.eu
copy -> js
copy -> img (i.e. logo.png)
copy -> main_engine (folder)

=======================================================
=======================================================

- Go to qubal.ue/phpmyadmin
- export current database (qubaldb)

(use the script "recompile_db.py" (edit it to include the .sql file) - ERROR)

sudo service apache2 restart