$ ->
  filter_township = ->
    county = $('#yfcase_county_id :selected').text()
    escaped_county = county.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(township).filter("optgroup[label='#{escaped_county}']").html()
    if options
      $('#yfcase_township_id').html(options)
      $('#yfcase_township_id').parent().show()
    else
      $('#yfcase_township_id').empty()
      $('#yfcase_township_id').html('<option value=""></option>')
      $('#yfcase_township_id').parent().hide()

  $('#yfcase_township_id').parent().hide()
  township = $('#yfcase_township_id').html()

  if $('#yfcase_county_id').val() != ''
    filter_township()
  $('#yfcase_county_id').change ->
    filter_township()

