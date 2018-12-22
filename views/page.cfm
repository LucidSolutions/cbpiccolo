<cfoutput>
<!--- View Arguments --->
<cfparam name="args.print" 		default="false">
<cfparam name="args.sidebar" 	default="true">


<!--- ContentBoxEvent --->
#cb.event( "cbui_prePageDisplay" )#

<!--- Body Main --->
<div id="body-main">
	<div class="container">
		<!--- Title --->


		<!--- Determine span length due to sidebar or homepage --->
		<cfif cb.isHomePage() OR !args.sidebar>
			<cfset variables.span = 12>
		<cfelse>
			<cfset variables.span = 9>
		</cfif>
		<div class="span#variables.span# mrg20T mrg0L">

			<h2>#prc.page.getTitle()#</h2>
			<!--- Render Content --->
			#prc.page.renderContent()#
			<!--- Comments Bar --->
			<cfif cb.isCommentsEnabled( prc.page )>
			<section id="comments">
				#html.anchor( name="comments" )#
				<div class="post-comments">
					<div class="infoBar">
						<p>
							<button class="button2" onclick="toggleCommentForm()"> <i class="icon-comments"></i> Add Comment (#prc.page.getNumberOfApprovedComments()#)</button>
						</p>
					</div>
					<br/>
				</div>

				<!--- Separator --->
				<div class="separator"></div>

				<!--- Comment Form: I can build it or I can quick it? --->
				<div id="commentFormShell">
					<div class="row">
						<div class="col-sm-12">
							#cb.quickCommentForm( prc.page )#
						</div>
					</div>
				</div>

				<!--- clear --->
				<hr>

				<!--- Display Comments --->
				<div id="comments">
					#cb.quickComments()#
				</div>
			</section>
			</cfif>
    	</div>

    	<!--- Sidebar --->
    	 <cfif args.sidebar and !cb.isHomePage()>
			<div class="span3 sidenav mrg40T">
				#cb.quickView( view='_pagesidebar' )#
			</div>
    	</cfif>
	</div>
</div>

<!--- ContentBoxEvent --->
#cb.event("cbui_postPageDisplay")#

</cfoutput>
