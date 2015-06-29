
class window.Game
  @exec: (result) ->
    rock = $("img#rock")
    scissors = $("img#scissors")
    paper = $("img#paper")
    result.split('\n').forEach((battle) ->
      $('#target tbody').append('<tr></tr>')
      battle.split(',').forEach((elem) ->
        elem = parseInt(elem)
        $('#target tbody > tr:last').append('<td></td>')
        image = rock
        if elem is 0
          image = rock
        else if elem is 1
          image = scissors
        else if elem is 2
          image = paper
        $('#target tbody > tr:last > td:last').append(image.clone().css('display', 'inline'))
      )
    )

