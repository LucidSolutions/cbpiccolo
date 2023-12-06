<cfoutput>
<!--- post --->
<div class="" id="post_#entry.getContentID()#">

	<article>
			<h3 class="title-bg"><a href="#cb.linkEntry( entry )#">#entry.getTitle()#</a></h3>
			<div class="post-summary">
					<cfif entry.getFeaturedImageURL() NEQ ''>
							<a href="#cb.linkEntry( entry )#"><img src="#entry.getFeaturedImageURL()#" alt="Post Thumb"></a>
					</cfif>

					<p>#entry.renderContent()#</p>
					<div class="post-summary-footer">
							<a class="btn btn-small btn-inverse" href="#cb.linkEntry( entry )#">Read more</a>
							<ul class="post-data">
									<li><i class="icon-calendar"></i> #entry.getDisplayPublishedDate()#</li>
									<li><i class="icon-user"></i> <a href="javascript:void(0);">Admin</a></li>
									<li><i class="icon-comment"></i> <a href="#cb.linkEntry( entry )###comments">#entry.getNumberOfApprovedComments()# Comments</a></li>
									<cfif cb.quickCategoryLinks(entry) NEQ ''>
											<li><i class="icon-tags"></i> #cb.quickCategoryLinks(entry)#</li>
									</cfif>

							</ul>
					</div>
			</div>
	</article>

</div>
</cfoutput>
