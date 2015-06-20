$ ->
  $('#postTypeCheckbox').change ->
    if $(this).prop('checked') == true
      $('.post_nickname').slideDown()
      $('.post_sex').slideDown()
    else
      $('.post_nickname').slideUp()
      $('.post_sex').slideUp()

  $pet_type_string_input = $('#pet_type_string_input')
  $pet_type_string_input.hide()
  $('select#post_pet_type').change ->
    if $(this).val() == 'another'
      $pet_type_string_input.slideDown()
    else
      $pet_type_string_input.slideUp()


  # Show map

  $ ->
    e.preventDefault()
    url = "http://geocode-maps.yandex.ru/1.x/?geocode=#{$('#places_place_state').val()}+#{$('#places_place_city').val()}+#{$('#places_place_address').val()}&format=json"
    $.ajax {
      url: url
      dataType: 'json'
      success: (response) ->
        fill_coordinates_input response
        return
      error: ->
        alert 'error'
        return
    }
    return
