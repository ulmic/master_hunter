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
      $pet_type_string_input.find('input').prop('disabled', false)
      $pet_type_string_input.slideDown()
    else
      $pet_type_string_input.find('input').prop('disabled', true)
      $pet_type_string_input.slideUp()


  # Show map

  $ ->
    e.preventDefault()
    $info_span = $('span.post')
    city = $info_span.data('city')
    address = $info_span.data('address')
    url = "http://geocode-maps.yandex.ru/1.x/?geocode=#{city}+#{address}&format=json"
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
