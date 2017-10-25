<cfoutput>
	<div class="color-bar-1"></div>
  <div class="color-bar-2 color-bg"></div>
	<div class="container main-container sub-container">

		<div class="header"><!-- Begin Header -->
			<div id="head">

			<!-- Logo
			================================================== -->
			<div style="margin-left:4%;">
			<div class="span5 logo">
				<cfif cb.themeSetting( 'headerLogo' ) is "">
					<h5>#cb.siteTagLine()#</h5>
				<cfelse>
					<a href="#cb.linkHome()#" class="navbar-brand brand-img" title="#cb.siteTagLine()#" data-toggle="tooltip"><img src="#cb.themeSetting( 'headerLogo' )#" alt="#cb.siteName()#"></a>
					<h5>#cb.siteTagLine()#</h5>
				</cfif>
			</div>

			<!-- Main Navigation
			================================================== -->
			<div class="span7 navigation">
					<div class="navbar hidden-phone">
						<ul class="nav ">
						<cfif ( !prc.cbSettings.cb_site_disable_blog )>
							<cfif cb.isBlogView()><li class="active"><cfelse><li></cfif>
								<a href="#cb.linkBlog()#">Blog</a>
							</li>
						</cfif>
					</ul>
					<ul class="nav">

						<cfset menuData = cb.rootMenu( type="data", levels="2" )>
						<!--- Iterate and build pages --->
						<cfloop array="#menuData#" index="menuItem">
							<cfif structKeyExists( menuItem, "subPageMenu" )>
								<li class="dropdown">
									<a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title# <b class="caret"></b></a>
									#buildSubMenu( menuData=menuItem.subPageMenu, parentLink=menuItem.link, parentTitle=menuItem.title )#
								</li>
							<cfelse>

								<cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
									<li class="active">
								<cfelse>
									<li>
								</cfif>
									<a href="#menuItem.link#">#menuItem.title#</a>
								</li>
							</cfif>
						</cfloop>
					</ul>

					</div>

					<!-- Mobile Nav
					================================================== -->
					<form action="##" id="mobile-nav" class="visible-phone">
							<div class="mobile-nav-select">
							<select onchange="window.open(this.options[this.selectedIndex].value,'_top')">
									<option value="">Navigate...</option>
									<cfif ( !prc.cbSettings.cb_site_disable_blog )>
										<option>
											<a href="#cb.linkBlog()#">Blog</a>
										</option>
									</cfif>
									<cfloop array="#menuData#" index="menuItem">

										<cfif structKeyExists( menuItem, "subPageMenu" )>
											<option>
												<a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title# <b class="caret"></b></a>
												#buildSubMenu( menuData=menuItem.subPageMenu, parentLink=menuItem.link, parentTitle=menuItem.title )#
											</option>
										<cfelse>
											<option>
												<a href="#menuItem.link#">#menuItem.title#</a>
											</option>
										</cfif>
									</cfloop>
							</select>
							</div>
							</form>

		</div></div></div><!-- End Header -->


<cfscript>
any function buildSubMenu( required menuData, required parentLink, required parentTitle ){
	var menu = '<ul class="dropdown-menu">';

	// Parent
	menu &= '<li><a href="#parentLink#"><i class="fa fa-chevron-down"></i> <strong>#parentTitle#</strong></a></li><li role="separator" class="divider"></li>';

	for( var menuItem in arguments.menuData ){
		if( !structKeyExists( menuItem, "subPageMenu" ) ){
			menu &= '<li><a href="#menuItem.link#">#menuItem.title#</a></li>';
		} else {
			menu &= '<li class="dropdown-submenu"><a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title#</a>';
			menu &= buildSubMenu( menuItem.subPageMenu, menuItem.link, menuItem.parentTitle );
			menu &= '</li>';
		}
	}
	menu &= '</ul>';

	return menu;
}
</cfscript>
</cfoutput>
