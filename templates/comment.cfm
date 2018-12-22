<cfoutput>
<div id="comment_#comment.getCommentID()#">
	<!--- Anchor --->
	<li>
	<a name="comment_#comment.getCommentID()#"></a>

    <a class="pull-left" href="javascript:void(0)">#cb.quickAvatar(author=comment.getAuthorEmail(),size=45)#</a>
<br/>
		<span class="comment-name">#comment.getAuthor()#</span>
		<span class="comment-date">#comment.getDisplayCreatedDate()#</span>
		<div class="comment-content">#comment.getContent()#</div>
	</li>
</div>

</cfoutput>
