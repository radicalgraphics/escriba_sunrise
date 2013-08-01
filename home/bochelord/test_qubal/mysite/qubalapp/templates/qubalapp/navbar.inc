<div class="container navbar-margin">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner show-g">
      <div class="container">
        <a class="brand" href="/test"><img src="{{ STATIC_URL }}qubalapp/main_engine/img/qubal_logo.png" width="64" height="64"/><span class="logo_text">QUBAL</span></a>
          <ul class="nav">

            <li>
              {% load imagekit %}
              {% load staticfiles %}
              
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
              <a href="/test" class="pagination-centered"><i class="icon-dashboard"></i><br>Dashboard</a>
            </li>
          {% else %}
            <li class="text">
              <a href="/test" class="pagination-centered"><i class="icon-dashboard"></i><br>Dashboard</a>
            </li>
          {% endif %}
              
          {% if active_url == 'profile.html' %}
            <li class="active text">
              <a href="/test/profile/{{ student.user_id }}" class="pagination-centered">
                <i class="icon-user"></i><br>Profile
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="/test/profile/{{ student.user_id }}" class="pagination-centered">
                <i class="icon-user"></i><br>Profile
              </a>
            </li>
          {% endif %}

          {% if active_url == 'teams.html' %}
            <li class="active text">
              <a href="/test/teams/" class="pagination-centered">
                <i class="icon-group"></i><br>Teams
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="/test/teams/" class="pagination-centered">
                <i class="icon-group"></i><br>Teams
              </a>
            </li>
          {% endif %}

          {% if active_url == 'course_listing.html' %}
            <li class="active text">
              <a href="/test/course_listing/" class="pagination-centered">
                <i class="icon-tasks"></i><br>Courses
              </a>
            </li>
          {% else %}
            <li class="text">
              <a href="/test/course_listing/" class="pagination-centered">
                <i class="icon-tasks"></i><br>Courses
              </a>
            </li>
          {% endif %}              
          </ul>

          <div class="row">

              <!-- AQUI VA EL FORMULARIO en vez de en otra pagina diferente...-->
            <div class="span2menu">
              <form action="/test/search/" method="get">
                
                <input type="text" name="q"  placeholder="search..."/>
                 
                <button class="btn btn-success btn-mini" type="submit">
                  <i class="icon-search icon-white"></i>
                </button>
              
              </form>
            </div>


          </div> <!-- row pull-right line 60-->
      </div> <!-- div container line 4 -->

    </div> <!-- div navbar-inner line 3 -->
            <div class="span2menu pull-right">
                 
              <a class="btn btn-mini btn-warning" href="/test/admin"><i class="icon-cog"></i> ADMIN</a>
              <span class="version"><br>QUBAL {{ QUBAL_VERSION }}</span><br><a href='/test/logout/'>logout</a>
                
            </div>
  </div> <!-- div navbar navbar-inverse line 2 -->

</div> <!-- div container line 1 -->

