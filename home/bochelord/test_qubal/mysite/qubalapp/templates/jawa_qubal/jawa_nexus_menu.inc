		<link rel="stylesheet" type="text/css" href="{{ STATIC_URL }}jawa_qubal/css/nexus-menu-widget.css" />
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class='qubal_icon_master_menu mediumbig-icon' ></i></a>
					<nav class="gn-menu-wrapper" {{ classtype_color|safe }}>
						<div class="gn-scroller">
							<ul class="gn-menu">
								<!-- <li class="gn-search-item">
									<input placeholder="Search" type="search" class="gn-search">
									<a class="gn-icon gn-icon-search"><span>Search</span></a>
								</li> -->
								<li>
									<a href="{{ SUNRISE_URL }}jawa_/" class="nexus-menu-icon nexus-menu" ><i class='qubal_icon_master_qubal_menu medbig-icon nexus-menu-icon-space'></i>LOBBY</a>
								</li>
								<li><a href="{{ SUNRISE_URL }}jawa_/powers/" class="nexus-menu-icon nexus-menu" ><i class='qubal_icon_master_powers medbig-icon nexus-menu-icon-space'></i>POWERS</a></li>
								<li><a href="{{ SUNRISE_URL }}jawa_/quests/" class="nexus-menu-icon nexus-menu" ><i class='qubal_icon_master_quest_menu medbig-icon nexus-menu-icon-space'></i>QUESTS</a></li>
								<li>
									<a href="{{ SUNRISE_URL }}jawa_/factions/" class="nexus-menu-icon nexus-menu" ><i class='qubal_icon_master_factions_menu medbig-icon nexus-menu-icon-space'></i>FACTIONS</a>
									<!-- <ul class="gn-submenu">
										<li><p><a class="nexus-menu-icon nexus-menu" ><img style="width:44px; height: 50px;" src="{{ STATIC_URL }}qubalapp/main_engine/img/qubal_logo.png" /></a></p></li>
										<li><a class="gn-icon gn-icon-pictures">Images</a></li>
										<li><a class="gn-icon gn-icon-videos">Videos</a></li>
									</ul> -->
								</li>
								<li>
									<br><div class="nexus-menu-icon nexus-menu nexus-menu-icon-space nexus-menu-version-text" ><img  style="width:44px; height: 50px;" src="{{ STATIC_URL }}qubalapp/main_engine/img/qubal_logo.png" rel='tooltip-right' title='QUBAL {{ QUBAL_VERSION }} (c) 2013 Studiesoft. Made with ♥ in Amsterdam by Radical Graphics Studios '/>&nbsp;&nbsp;&nbsp;&nbsp;{{ QUBAL_VERSION }}</div>
								</li>
								<!-- <li>
									<a class="gn-icon gn-icon-archive">Archives</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-article">Articles</a></li>
										<li><a class="gn-icon gn-icon-pictures">Images</a></li>
										<li><a class="gn-icon gn-icon-videos">Videos</a></li>
									</ul>
								</li> -->
							</ul>
						</div><!-- /gn-scroller -->	
					</nav>
				</li>
				<!-- <li><i class='icon-quest medium-icon'></i>&nbsp;QUBAL JAWA</li> -->

				<li class='pull-right'><a href='{{ SUNRISE_URL }}'><i class='icon-beer'></i>&nbsp;original taste</a></li>
				<li class='pull-right'><a href='{{ SUNRISE_URL }}spex_/'><i class='icon-lemon'></i>&nbsp;spex flavor</a></li>
				<!-- <li><a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/HeaderEffects/"><span>Previous Demo</span></a></li> -->
				<!-- <li class='gn-search-item'><input type="search" class="gn-search"><i class="gn-icon gn-icon-search"><span>Search</span></i></li> -->
			</ul>