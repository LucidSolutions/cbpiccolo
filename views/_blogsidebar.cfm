<cfoutput>
<!--- ContentBoxEvent --->
#cb.event( "cbui_BeforeSideBar" )#

<cfif cb.themeSetting( "showCategoriesBlogSide", true )>
	<cfif cb.themeSetting( "showSiteSearch", true )>
	<!--- Search Bar --->
	<div id="body-search" class="mrg20T">
		<div class="input-append">
			<form id="searchForm" name="searchForm" method="post" action="#cb.linkContentSearch()#">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search" name="q" id="q" value="#cb.getSearchTerm()#">
					<span class="input-group-btn">
						<button type="submit" class="btn"><i class="icon-search"></i></button>
					</span>
				</div>
			</form>
		</div>
	</div>
	</cfif>
<div class="panel panel-default">
		<h5 class="title-bg">Categories</h5>
	<!---
	Display Categories using ContentBox collection template rendering
	the default convention for the template is "category.cfm" you can change it via the quickCategories() 'template' argument.
	--->
	<cfset li_1 = UCase(#cb.quickCategories()#)/>
	<ul>
		#li_1#
	</ul>
</div>
</cfif>

<cfif cb.themeSetting( "showRecentEntriesBlogSide", true )>
<div class="panel panel-default">
		<h5 class="title-bg">Recent Entries</h5>
		<cfset li_2 = UCase(#cb.widget( 'RecentEntries' )#)/>
	#li_2#
</div>
</cfif>

<cfif cb.themeSetting( "showSiteUpdatesBlogSide", true )>
<!--- RSS Buttons --->
<div class="panel panel-default">
	<div class="panel-heading">
		<h5 class="title-bg">Site Updates</h5>
	</div>
	<cfset li_4 = UCase('RSS Feed')/>
	<ul>
		<li><a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!"></a> <a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!">#li_4#</a></li>
	</ul>
</div>
</cfif>



<cfif cb.themeSetting( "showArchivesBlogSide", true )>
<div class="panel panel-default">
		<h5 class="title-bg">Archives</h5>
		<cfset li_3 = UCase(#cb.widget( 'Archives' )#)/>
	#li_3#
</div>
</cfif>
<!---#cb.widget("Meta",{titleLevel="4"})#--->

<!--- ContentBoxEvent --->
#cb.event( "cbui_afterSideBar" )#
</cfoutput>
