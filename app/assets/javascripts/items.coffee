# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('th.sortable').click ->
    o = if $(this).hasClass('asc') then 'desc' else 'asc'
    $('th.sortable').removeClass('asc').removeClass 'desc'
    $(this).addClass o
    colIndex = $(this).prevAll().length
    tbod = $(this).closest('table').find('tbody')
    rows = tbod.find('tr')
    rows.sort (a, b) ->
      A = $(a).find('td').eq(colIndex).text()
      B = $(b).find('td').eq(colIndex).text()
      if !isNaN(A)
        A = Number(A)
      if !isNaN(B)
        B = Number(B)
      if o == 'asc' then A > B else B > A
    $.each rows, (index, ele) ->
      tbod.append ele
      return
    return
