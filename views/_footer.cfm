<cfoutput>


<!-- Footer Area
        ================================================== -->
	<div class="footer-container"><!-- Begin Footer -->
    	<div class="container">
        	<div class="row footer-row">
                <div class="span3 footer-col">
                    <h5>About Us</h5>
						<cfif cb.themeSetting( "headerLogo") NEQ ''>
								<img src="#cb.themeSetting( 'headerLogo' )#" alt="#cb.siteName()#"><br />
						</cfif>
                </div>
                <div class="span3 footer-col">
                    <h5>Latest Posts</h5>
                     <ul class="post-list">
						 #cb.widget( 'RecentEntries' )#
                    </ul>
                </div>
				<div class="span3 footer-col">
                    <h5>Address</h5>
    				<address>
    					<cfif cb.themeSetting( 'footerEmail' ) NEQ ''>
    							<strong>Email:</strong> #cb.themeSetting( 'footerEmail' )#<br />
    					</cfif>
    					<cfif cb.themeSetting( 'footerPhone' ) NEQ ''>
    							<strong>Phone:</strong> #cb.themeSetting( 'footerPhone' )#<br />
    					</cfif>
    					<cfif cb.themeSetting( 'footerAddress' ) NEQ ''>
    							<strong>Address:</strong> #cb.themeSetting( 'footerAddress' )#
    					</cfif>
    				</address>
                </div>
                <div class="span3 footer-col">
                    <h5>Social Media</h5>
			        <ul class="social-icons">
						<cfif cb.themeSetting( "facebookURL") NEQ ''>
                            <li><a href="#cb.themeSetting( "facebookURL")#" class="social-icon facebook"></a></li>
						</cfif>
						<cfif cb.themeSetting( "twitterURL") NEQ ''>
                            <li><a href="#cb.themeSetting( "twitterURL")#" class="social-icon twitter"></a></li>
						</cfif>
						<cfif cb.themeSetting( "flickrURL") NEQ ''>
                            <li><a href="#cb.themeSetting( "flickrURL")#" class="social-icon dribble"></a></li>
						</cfif>
						<cfif cb.themeSetting( "forrstURL") NEQ ''>
                            <li><a href="#cb.themeSetting( "forrstURL")#" class="social-icon forrst"></a></li>
						</cfif>
                    </ul>
                </div>
            </div>

            <div class="row"><!-- Begin Sub Footer -->
                <div class="span12 footer-col footer-sub">
                    <div class="row no-margin">
                        <div class="span6">
							<span class="text-muted">Copyright &copy; #cb.siteName()#.  All rights reserved.</span>
                        </div>
                        <div class="span6">
                            <span class="right">
                                <cfset menuData = cb.rootMenu( type="data", levels="2" )>
                                <!--- Iterate and build pages --->
                                <cfloop array="#menuData#" index="menuItem">
                                    <cfif NOT structKeyExists( menuItem, "subPageMenu" )>
                                        <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                                            <a href="#menuItem.link#" class="active">
                                        <cfelse>
                                            <a href="#menuItem.link#">
                                        </cfif>
                                            #menuItem.title#</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                                    </cfif>
                                </cfloop>
                                <a href="/blog">Blog</a>
                                <!--- <a href="/contact">Contact</a> --->
                            </span>
                        </div>
                    </div>
                </div>
            </div><!-- End Sub Footer -->

        </div>
    </div><!-- End Footer -->
</cfoutput>
