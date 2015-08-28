jQuery ->
  whichDart = 0
  $('form').on 'click', '.score-field', (event) ->
    return false if whichDart == 3
    whichDart += 1
    currentScore = parseInt($(this).data('score'))

    totalCurrentScore = $('#current-score').text()

    totalScore = parseInt(totalCurrentScore) + parseInt(currentScore)

    $('#current-score').html(totalScore)
    if whichDart == 1
      $('#current-score').attr('data-dart1', $(this).data('score'))
    else if whichDart == 2
      $('#current-score').attr('data-dart2', $(this).data('score'))
    else if whichDart == 3
      $('#current-score').attr('data-dart3', $(this).data('score'))
    else
      console.log 'Unknown Dart!'


  $('form').on 'click', '.nextthrow', (event) ->
    id = $('#leg-score').data('id')
    score = $('#current-score').text()
    darts = {
      first_dart: $('#current-score').data('dart1'),
      second_dart: $('#current-score').data('dart2'),
      third_dart: $('#current-score').data('dart3')
    }

    $.ajax "/legs/#{id}",
      type: "PUT",
      dataType: "JSON",
      data:
        score: score,
        darts: darts
      success: (data) ->
        $('#leg-score').html(data)
        $('#current-score').text(0)
        whichDart = 0

    event.preventDefault()
