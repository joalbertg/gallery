$ ->
	$overlay = $('<div id="overlay"></div>')
	$image = $('<img>')
	$caption = $('<p></p>')

	$overlay.append($image)
	$overlay.append($caption)
	$('body').append($overlay)

	$('#gallery a').click (event) ->
		event.preventDefault()
		url = $(@).attr 'href'
		$image.attr('src', url)
		caption = $(@).children('img').attr('alt')
		$caption.text(caption)
		$overlay.show()
		#console.log url

	$overlay.click ->
		$overlay.hide()