$ ->
  $('#postTypeCheckbox').change ->
    if $(this).prop('checked') == true
      $('.post_nickname').slideDown()
      $('.post_sex').slideDown()
    else
      $('.post_nickname').slideUp()
      $('.post_sex').slideUp()
