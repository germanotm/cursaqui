jQuery ->
  for link in $(".navbar-fixed-top .nav a")
    do (link) ->
      if (window.location.pathname == link.pathname)
      	$(link).parent().toggleClass("active")