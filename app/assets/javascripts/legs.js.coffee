jQuery ->
  $('form').on 'click', '.score-field', (event) ->
    alert $(this).data 'score'
    event.preventDefault()
