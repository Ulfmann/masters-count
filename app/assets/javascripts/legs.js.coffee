jQuery ->
  $('form').on 'click', '.score-field', (event) ->
    currentScore = parseInt($(this).data('score'))

    totalCurrentScore = $('#current-score').text()

    totalScore = parseInt(totalCurrentScore) + parseInt(currentScore)

    $('#current-score').html(totalScore)


  $('form').on 'click', '.nextthrow', (event) ->
    id = $('#leg-score').data('id')
    score = $('#current-score').text()

    $.ajax "/legs/#{id}",
      type: "PUT",
      dataType: "JSON",
      data:
        score: score
      success: (data) ->
        $('#leg-score').html(data)
        $('#current-score').text(0)

    event.preventDefault()
