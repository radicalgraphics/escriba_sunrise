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
Compare for changes in settings.py ---- escriba - escriba-sunrise - OK / OK / OK - OK
Compare for changes in urls.py --------    "            "         - OK / OK / OK ' OK'


qubalapp
========
Compare urls.py --------	"       "	        - OK / OK / OK - OK
Compare admin.py -------	"	"				- OK / OK / OK - OK

											   LOCAL			SERVER
											================================
Compare - views.py               note ->	(/landing/)		(/test/landing/)    - OK / OK / OK - OK(settings.SUNRISE_URL)

Copy -> models.py 								- OK
copy -> qubal_forms.py 							- OK / Ok (settings.SUNRISE_URL)
Copy -> qubal_check_image.py 					- OK / OK
Copy -> qubal_images.py 						- OK
Copy -> qubal_init.py 							- OK
Copy -> qubal_prerender.py 						- OK - (settings.SUNRISE_URL in context)
Copy -> qubal_reward.py 						- OK
Copy -> qubal_rules.py 							- OK
Copy -> qubal_xp.py 							- OK
Copy -> tests.py 								- OK / OK


qubalapp/templates
==================

compare -> navbar.inc				(/)			(/test)                         - OK / OK / OK(settings.SUNRISE_URL)
 
compare -> index.html 															- OK / Ok / OK
compare -> index_teacher.html 													- OK / Ok / OK

Compare -> landing.html															- OK / Ok / OK - (SUNRISE_URL)

compare -> teams.html 															- OK / Ok / Ok - (SUNRISE_URL)
compare -> course_listing.html 													- OK / OK / OK - (SUNRISE_URL)
compare -> notifications.inc 													- OK / Ok / OK - 
compare -> profile.html 														- OK / Ok / OK - (SUNRISE_URL)
compare -> search_results.html 													- OK / Ok / OK - (SUNRISE_URL)
compare -> file_field.html 														- OK / OK / OK - 
compare -> quest.html 															- OK / Ok / OK - (SUNRISE_URL)
compare -> quest_listing.html 													- OK / Ok / OK - (SUNRISE_URL)
compare -> register_character.html 												- OK / Ok / OK - 
compare -> course_listing_teacher.html 											- -
compare -> deliverable_field.html 												- - 
compare -> oracle_landing.html 													- -
compare -> task.html 															- - (SUNRISE_URL)
compare -> teams_teacher.html 													- - (SUNRISE_URL)


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