
	<link rel="stylesheet" type="text/css" href="{{ STATIC_URL }}jawa_qubal/css/profile-widget.css" />


	<div class="container">

		<div class="main-profile-box" {{background_img|safe}}>

			{% load imagekit %}
			
			{% if student.image %}
		        {% generateimage 'qubalapp:thumbnail120x120' source=student.image as image %}
		        <img src='{{ image.url }}' class='main-profile-img img-circle' title='{{ student.name}} {{ student.lastname }} - level {{ current_level }} - {{ student.get_character_class_display }}' rel="tooltip-left"/>
			{% else %}
          		<img src='{{ STATIC_URL }}default_images/default_avatar_grey.jpg' width='100' class='img-circle' title='{{ student.name}} {{ student.lastname }} - level {{ current_level }} - {{ student.get_character_class_display }}' rel="tooltip-left"/>


        	{% endif %}
        		<div class="main-profile-classtype-box">
        			<div class="main-profile-classtype">{{ student.get_character_class_display|upper }}</div>
        		</div>
        		<div class="main-profile-level">{{ current_level }}</div>

        		<div class="main-profile-xps-box" rel='tooltip-left' title="{{ current_xp }}/{{ xp_needed }} XP">
	        		<div class="main-profile-current-xp">{{ current_xp }}</div>
	        		<div class="main-profile-xp-needed" >{{ xp_needed }} XP</div>
	        	</div> <!-- main-profile-xps-box -->

        		<div class="main-profile-powers-box">
        			
        			<div class="main-profile-class-icon">
        				{% if student.character_class == 'explorer' %}
        					<i class='icon-explorer' rel='tooltip-left' title='Explorer'></i>
        				{% elif student.character_class == 'activist' %}
        					<div><i class='icon-activist' rel='tooltip-left' title='Activist'></i></div>
        				{% elif student.character_class == 'unifier' %}
        					<i class='icon-unifier' rel='tooltip-left' title='Unifier'></i>
        				{% elif student.character_class == 'inventor' %}
        					<i class='icon-inventor' rel='tooltip-left' title='Inventor'></i>
                        {% else %}
                            <i class='icon-quest' rel='tooltip-left' title='You have to choose your path, visit The Oracle!'></i>
        				{% endif %}
        			</div> <!-- main-profile-class-icon div-->
        			<div class="main-profile-playername" {{ background_color|safe }}>{{ student.name|upper }}</div>
        			<div class="main-profile-powers">
        				<div class="main-profile-power-mastery" rel='tooltip-bottom' title="Mastery">{{ student.has_powers.mastery }}</div>
        				<div class="main-profile-power-focus" rel='tooltip-bottom' title="Focus">{{ student.has_powers.focus }}</div>
        				<div class="main-profile-power-teamwork" rel='tooltip-bottom' title="Teamwork">{{ student.has_powers.teamwork }}</div>
        				<div class="main-profile-power-communication" rel='tooltip-bottom' title="Communication">{{ student.has_powers.communication }}</div>
        				<div class="main-profile-power-responsability" rel='tooltip-bottom' title="Responsability">{{ student.has_powers.responsability }}</div>
        				<div class="main-profile-power-perseverance" rel='tooltip-bottom' title="Perseverance">{{ student.has_powers.perseverance }}</div>
        			</div>
        			<div class="main-profile-xp-box">
        				<div class="main-profile-xp-box-current">{{ current_xp }}</div>
        				<div class="main-profile-xp-box-needed">{{ xp_needed }}</div>
        				<div class="main-profile-xp-box-xp">XP</div>
        			</div>

        		</div> <!-- main-profile-powers-box div -->
                
                <a href='/{{ SUNRISE_URL }}spex_/spex_oracle_landing/' class='widget-link'><i class="qubal_icon_master_oracle big-icon"  rel='tooltip' title='Oracle'></i></a>
                <a href='/{{ SUNRISE_URL }}logout/' class='widget-link'><i class="icon-off medium-icon" style='float:right;' rel='tooltip' title='logout'></i></a>
		</div> <!-- main-profile-box div-->

	</div> <!-- containder div -->