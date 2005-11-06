# The filters added to this controller will be run for all controllers in the application.
# Likewise will all the methods added be available for all controllers.
class ApplicationController < ActionController::Base
	#declare some globals
	$Appname="Curriculum"
	$Footer="The Communityhigh.org team is not responsible for the &quot;this is so awsome, I wish I would have done it myself&quot; feeling resulting from using this site.</p>"
	$css="@import url(http://chigh.org/c/f/core.css);\n@import url(http://chigh.org/c/f/header.css);\n@import url(http://chigh.org/c/f/navigation.css);\n@import url(http://chigh.org/c/f/type.css);\n@import url(http://chigh.org/c/f/2column-leftfocus.css);\n@import url(http://chigh.org/c/f/footer.css);\n@import url(http://chigh.org/c/f/forms.css);\nh3 a:link {color:#000;  border:none;}\nh3 a:visited {color:#000;  border:none;}\nh3 a:hover {color:#fff;}\nh3 a:visited:hover {color:#fff;}"
	$siteurl="/"
	$version="0.0.1"
	$fullpath="/var/www/project/curric2" #change this per install
	def easteregg
		render_text "Rail up the troops, sire!"
	end
end
