<cfoutput>
	<!--- ContentBoxEvent --->
	#cb.event( "cbui_prePageDisplay" )#

	<section id="body-main">

		<!--- search Results --->
		<div class="container">
			<h2>Search Results</h2>

			<!--- Search Results --->
			#cb.getSearchResultsContent()#

			<!--- Search paging --->
			<div class="contentBar">
				#cb.quickSearchPaging()#
			</div>
		</div>

	</section>

	<!--- ContentBoxEvent --->
	#cb.event( "cbui_postPageDisplay" )#
</cfoutput>
