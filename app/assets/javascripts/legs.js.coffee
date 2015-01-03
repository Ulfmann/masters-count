jQuery ->
  $('form').on 'click', '.score-field', (event) ->
    currentScore = parseInt($(this).data('score'))
    console.log "Geklickte Score ist #{score}"

    totalCurrentScore = $('#current-score').text()
    console.log "Punkte vorher: #{scoreBisJetzt}"

    totalScore = parseInt(scoreBisJetzt) + parseInt(score)
    console.log "Punkte nachher: #{totalScore}"

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
