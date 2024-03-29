﻿
<cfoutput>

<!--- Body Main --->
<section id="body-main">
	<div class="container">
		<div class="row">
			<!--- Content --->
			<div class="span9 mrg20T">

				<!--- ContentBoxEvent --->
				#cb.event( "cbui_preIndexDisplay" )#

				<!--- Are we filtering by category? --->
				<cfif len( rc.category )>
					<div class="alert alert-info padB mrg20T">
						<a class="pull-right btn btn-primary btn-sm" href="#cb.linkBlog()#" title="Remove filter and view all entries">Remove Filter</a>

						Category Filtering: '#encodeForHTML( rc.category )#'
					</div>
				</cfif>

				<!--- Are we searching --->
				<cfif len( rc.q )>
					<p class="buttonBar">
						<a class="btn btn-primary" href="#cb.linkBlog()#" title="Clear search and view all entries">Clear Search</a>
					</p>
					<div class="infoBar">
						Searching by: '#encodeForHTML( rc.q )#'
					</div>
					<br/>
				</cfif>

				<!--- Entries displayed here --->

				#cb.quickEntries()#

				<!--- Pagination --->
				<cfif prc.entriesCount>
					<div class="contentBar">
						#cb.quickPaging()#
					</div>
				</cfif>

				<!--- ContentBoxEvent --->
				#cb.event( "cbui_postIndexDisplay" )#
			</div>

			<!--- SideBar --->
			<cfif args.sidebar>
			<div class="span3 mrg20T" id="blog-sidenav">
				#cb.quickView( view='_blogsidebar', args=args )#
			</div>
			</cfif>

		</div>
	</div>
</section>
</cfoutput>

<script type="text/javascript">
$('.contentBar').find('.row').css('margin-bottom','10px')
$('.contentBar').find('.col-xs-12').first().css("float","left");
$('.contentBar').find('.col-xs-12').last().css("float","right");

</script>