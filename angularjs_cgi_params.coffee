angular.module('$cgiParams').service "$cgiParams", ->
  get: (name) ->
    query = window.location.search.substring(1)
    vars = query.split('&')
    i = 0
    while i < vars.length
      pair = vars[i].split('=')
      if pair[0] == name
        return decodeURIComponent(pair[1])
      i++
    false

