
class window.Game
  @exec: (result) ->
    result.split('\n').forEach((battle) ->
      data = battle.split('|')
      status = data[0].split(',')
      result = data[1]

      turn = new Turn(parseInt(status[0]), parseInt(status[1]), parseInt(result))
      turn.render_turn()
    )
