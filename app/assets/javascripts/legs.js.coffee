jQuery ->
  $('form').on 'click', '.score-field', (event) ->
    id = $('#leg-score').data('id')
    score = $(this).data('score')

    $.ajax "/legs/#{id}",
      type: "PUT",
      dataType: "JSON",
      data:
        score: score
      success: (data) ->
        $('#leg-score').html(data)

    event.preventDefault()
