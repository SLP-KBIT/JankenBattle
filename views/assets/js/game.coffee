
class window.Game
  @exec: (result) ->
    result.split('\n').forEach((battle) ->
      $('#target tbody > tr:last').after('<tr></tr>')
      battle.split(',').forEach((elem) ->
        $('#target tbody > tr:last').append('<td>' + elem + '</td>')
      )
    )

