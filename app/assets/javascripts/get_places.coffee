@getPlaces = -> 
failure = ->
    alert 'problem getting location'
    $('.get_location').each (index) -> 
        $(this).on 'click', (event) ->
            if navigator.geolocation
                navigator.geolocation.getCurrentPosition ((position) ->
                $.ajax
                    type: 'PUT'
                    url: '/incidents/get_location' + '?latitude=' + position.coords.latitude + '&longitude=' + position.coords.longitud),
                     failure,
                     enableHighAccuracy: true
                     timeout: 5000
            event.preventDefault()
$(document).on('turbolinks:load', @getPlaces)