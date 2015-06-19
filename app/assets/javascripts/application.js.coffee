#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require moment
#= require bootstrap-datetimepicker
#= require pickers
#= require moment/ru
#= require_tree .

$ ->

  init_datetimepickers = ->
    $("input.datetime_picker").datetimepicker()
    $("input.date_picker").datetimepicker()
    return

  init_datetimepickers()
