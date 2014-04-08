# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# was getting uncaught reference error for skel in the init file...needed to move it to the top instead of the bottom
# but now, skel.min can't find the right css files and the font gets screwed up.  needs some work.  

#= require ./skel.min
#= require ./html5shiv
#= require ./init
#= require ./jquery.dropotron.min
#= require ./skel-panels.min

