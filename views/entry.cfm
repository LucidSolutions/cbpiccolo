
<cfoutput>

<!--- Body Main --->
<section id="body-main">
	<div class="container">
		<div class="row">
			<div class="<cfif args.sidebar>span9<cfelse>span12</cfif> mrg40T">
				<!--- ContentBoxEvent --->
				#cb.event("cbui_preEntryDisplay")#

				<div class="" id="post_#prc.entry.getContentID()#">

						<h3 class="title-bg">#prc.entry.getTitle()#</h3>
						<div class="post-content">
						<cfif prc.entry.getFeaturedImageURL() NEQ ''>
								<img src="#prc.entry.getFeaturedImageURL()#" alt="Post Thumb">
						</cfif>

						<!--- content --->
						<div class="post-body">
							#prc.entry.renderContent()#
						</div>
						<div class="post-summary-footer">
								<ul class="post-data">
										<li><i class="icon-calendar"></i> #prc.entry.getDisplayPublishedDate()#</li>
										<li><i class="icon-user"></i> <a href="javascript:void(0);">Admin</a></li>
										<li><i class="icon-comment"></i> <a href="#cb.linkEntry( prc.entry )###comments">#prc.entry.getNumberOfApprovedComments()# Comments</a></li>
										<cfif cb.quickCategoryLinks(prc.entry) NEQ ''>
												<li><i class="icon-tags"></i> #cb.quickCategoryLinks(prc.entry)#</li>
										</cfif>

								</ul>
						</div>

					</div>

					<cfif !args.print>
					<!--- Comments Bar --->
					#html.anchor(name="comments")#
					<br/>
					<section class="comments">
						<h4 class="title-bg mrg20B"><a name="comments"></a>#prc.entry.getNumberOfApprovedComments()# Comments so far</h4>
						<ul>
							#cb.quickComments()#
						</ul>
				</section>


					<div id="commentFormShell">
							<div class="span6">
								#cb.quickCommentForm( prc.entry )#
							</div>
					</div>
					</cfif>

				</div>

				<!--- ContentBoxEvent --->
				#cb.event("cbui_postEntryDisplay")#

			</div>

			<cfif args.sidebar>
				<div class="span3 mrg40T" id="blog-sidenav">
					#cb.quickView(view='_blogsidebar', args=args)#
				</div>
			</cfif>
		</div>
	</div>
</section>


</cfoutput>
