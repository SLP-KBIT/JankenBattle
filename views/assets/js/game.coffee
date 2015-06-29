
class window.Game
  @ROCK: 100
  @SCISSORS: 200
  @PAPER: 300

  @exec: (result) ->
    rock = $("<img class='rock'>")
    scissors = $("<img class='scissors'>")
    paper = $("<img class='paper'>")
    result.split('\n').forEach((battle) ->
      data = battle.split('|')
      status = data[0]
      result = data[1]

      $('#target tbody').append('<tr></tr>')
      status.split(',').forEach((elem) ->
        elem = parseInt(elem)
        $('#target tbody > tr:last').append('<td></td>')
        image = rock
        if elem is Game.ROCK
          image = rock
        else if elem is Game.SCISSORS
          image = scissors
        else if elem is Game.PAPER
          image = paper
        $('#target tbody > tr:last > td:last').append(image.clone())
      )
    )

