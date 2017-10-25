<cfoutput>

<!--- Body Main --->
<section id="body-main">
	<div class="container">
		<div class="row mrgT">
			<!--- Content --->
			<div class="span9 mrg40T">

				<!--- ContentBoxEvent --->
				#cb.event( "cbui_preArchivesDisplay" )#

				<!--- Title --->
				<h1>Blog Archives - #prc.entriesCount# Record(s)</h1>

				<!--- Archives --->
				<cfif rc.year NEQ 0>
					<div class="alert alert-info padB mrg20T">
						<a class="pull-right btn btn-primary btn-sm" href="#cb.linkBlog()#" title="Remove filter and view all entries">Remove Filter</a>

						Year: '#rc.year#'
						<cfif rc.month NEQ 0>- Month: '#rc.month#'</cfif>
						<cfif rc.day NEQ 0>- Day: '#rc.day#'</cfif>
					</div>
					<br/>
				</cfif>

				#cb.quickEntries()#

				<!--- Paging via ContentBox via quick HTML, again I could have done it manually, but why? --->
				<cfif prc.entriesCount>
					<div class="contentBar">
						#cb.quickPaging()#
					</div>
				</cfif>

				<!--- ContentBoxEvent --->
				#cb.event( "cbui_postArchivesDisplay" )#
			</div>

		<!--- SideBar: That's right, I can render any layout views by using quickView() or coldbox render methods --->
			<cfif args.sidebar>
			<div class="span3 mrg40T" id="blog-sidenav">
				#cb.quickView( view='_blogsidebar', args=args )#
			</div>
			</cfif>

</div>
	</div>
</section>
</cfoutput>
