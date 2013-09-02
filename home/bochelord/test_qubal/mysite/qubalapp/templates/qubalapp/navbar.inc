<div class="container navbar-margin">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner show-g">
      <div class="container">
        <a class="brand" href="{{ SUNRISE_URL }}"><img style="width:64px; height: 72px;" src="{{ STATIC_URL }}qubalapp/main_engine/img/qubal_logo.png" /><span class="logo_text">QUBAL</span></a>
          <ul class="nav">

            <li>

              {% load imagekit %}
              {% load staticfiles %}
              {% load session_keep_alive %}
              {% session_keep_alive %}

              <div class="navbar-student-image">
              {% if student.image %}
                {% generateimage 'qubalapp:thumbnail50x50' source=student.image as student_image %}
            
                <img src='{{ student_image.url }}' class='img-circle'/>
              {% else %}

                <img src='{{ STATIC_URL }}qubalapp/main_engine/img/default_avatar_grey_50.jpg' class='img-circle'/>

              {% endif %}

              </div>
            </li>
            <li>
              <div class="navbar-student-name">
                <span>{{ student.name }}</span>
              </div>
            </li>
            <li>
              <div class="navbar-student-lvl"> 
                <span>{{ current_level }}</span>
              </div>
            </li>

          {% if active_url == 'index.html' %}
            <li class="active text">
              <a href="{{ SUNRISE_URL }}" class="pagination-centered"><i class="icon-dashboard"></i><br>Dashboard</a>
            </li>
          {% else %}
            <li class="text">
              <a href="{{ SUNRISE_URL }}" class="pagination-centered"><i class="icon-dashboard"></i><br>Dashboard</a>
            </li>
          {% endif %}
              
          {% if active_url == 'profile.html' %}
            <li class="active text">
              <a href="{{ SUNRISE_URL }}profile/{{ student.user_id }}" class="pagination-centered">
                <i class="icon-user"></i><br>Profile
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="{{ SUNRISE_URL }}profile/{{ student.user_id }}" class="pagination-centered">
                <i class="icon-user"></i><br>Profile
              </a>
            </li>
          {% endif %}

          {% if active_url == 'teams.html' %}
            <li class="active text">
              <a href="{{ SUNRISE_URL }}teams/" class="pagination-centered">
                <i class="icon-group"></i><br>Teams
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="{{ SUNRISE_URL }}teams/" class="pagination-centered">
                <i class="icon-group"></i><br>Teams
              </a>
            </li>
          {% endif %}

          {% if active_url == 'course_listing.html' %}
            <li class="active text">
              <a href="{{ SUNRISE_URL }}course_listing/" class="pagination-centered">
                <i class="icon-tasks"></i><br>Courses
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="{{ SUNRISE_URL }}course_listing/" class="pagination-centered">
                <i class="icon-tasks"></i><br>Courses
              </a>
            </li>
          {% endif %}       

          {% if active_url == 'quest_listing.html' %}
            <li class="active text">
              <a href="{{ SUNRISE_URL }}quest_listing/" class="pagination-centered">
                <i class="icon-shield"></i><br>Quests
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="{{ SUNRISE_URL }}quest_listing/" class="pagination-centered">
                <i class="icon-shield"></i><br>Quests
              </a>
            </li>
          {% endif %}         
          </ul>

          <div class="row">

              <!-- AQUI VA EL FORMULARIO en vez de en otra pagina diferente...-->
            <div class="span2menu">
              <form action="{{ SUNRISE_URL }}search/" method="get">
                
                <input type="text" name="q"  placeholder="search..."/>
                 
                <button class="btn btn-success btn-mini" type="submit">
                  <i class="icon-search icon-white"></i>
                </button>
              
              </form>
            </div>

            <div class="span2menu pull-right admin-box">
                 
              <a class="btn btn-mini btn-warning" href="{{ SUNRISE_URL }}admin"><i class="icon-cog"></i> ADMIN</a>
              <a class="btn btn-mini btn-inverse" href="/spex_/"><i class="icon-lemon"></i> SPEX</a>
              <span class="version"><br>QUBAL {{ QUBAL_VERSION }}</span><br>
              
              <a href='{{ SUNRISE_URL }}logout/'><i class="icon-signout"></i> logout</a>
                
            </div>

          </div> <!-- row pull-right line 60-->

      </div> <!-- div container line 4 -->


    </div> <!-- div navbar-inner line 3 -->

  </div> <!-- div navbar navbar-inverse line 2 -->

</div> <!-- div container line 1 -->

<div><span class="pull-right debug-absolute">{{ debug_placeholder|safe }}</span><div>