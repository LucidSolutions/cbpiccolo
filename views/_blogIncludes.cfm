<cfoutput>
<title>#cb.getContentTitle()#</title>

<!--- ********************************************************************************* --->
<!--- 					META TAGS														--->
<!--- ********************************************************************************* --->
<meta charset="utf-8" />
<meta name="generator" 	 	content="ContentBox powered by ColdBox" />
<meta name="robots" 	 	content="index,follow" />
<meta name="viewport" 		content="width=device-width, initial-scale=1">
<meta name="description" 	content="#cb.getContentDescription()#" />
<meta name="keywords" 	 	content="#cb.getContentKeywords()#" />

#cb.getOpenGraphMeta()#

<!--- Base HREF for SES enabled URLs --->
<base href="#cb.siteBaseURL()#" />

<!--- ********************************************************************************* --->
<!--- 					RSS DISCOVERY													--->
<!--- ********************************************************************************* --->
<cfif cb.themeSetting( "rssDiscovery", true )>
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<cfif cb.isEntryView()>
		<link rel="alternate" type="application/rss+xml" title="Entry's Recent Comments" href="#cb.linkRSS( comments=true, entry=cb.getCurrentEntry() )#" />
	</cfif>
</cfif>

<!--- ********************************************************************************* --->
<!--- 					CSS 															--->
<!--- ********************************************************************************* --->

<!--- Swatch and Skin --->
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/bootstrap.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/bootstrap-responsive.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/custom-styles.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/flexslider.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/prettyPhoto.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/style-ie.css?v=1" />

<cfif len( cb.themeSetting( 'cssStyleOverrides' ) )>
<style>
	#cb.themeSetting( 'cssStyleOverrides' )#
</style>	
</cfif>

<!--- ********************************************************************************* --->
<!--- 					JAVASCRIPT														--->
<!--- ********************************************************************************* --->
<!-- injector:js -->
<script src="#cb.themeRoot()#/includes/js/jquery.min.js"></script>
<script src="#cb.themeRoot()#/includes/js/bootstrap.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.custom.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.easing.1.3.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.flexslider.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.prettyPhoto.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.quicksand.js"></script>
<!-- endinjector -->
</cfoutput>
