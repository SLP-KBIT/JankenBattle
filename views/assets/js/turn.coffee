
class window.Turn
  @PLAYER1 = 1
  @PLAYER2 = -1
  @EVEN = 0

  @ROCK: 100
  @SCISSORS: 200
  @PAPER: 300

  @ROCK_IMG: $("<img class='rock'>")
  @SCISSORS_IMG: $("<img class='scissors'>")
  @PAPER_IMG: $("<img class='paper'>")

  constructor: (p1, p2, result) ->
    @p1 = p1
    @p2 = p2
    @result = result

  winner: ->
    if @_p1_is_winner
      return Turn.PLAYER1
    else
      return Turn.PLAYER2

  _p1_is_winner: ->
    (@p1 is Turn.ROCK && @p2 is Turn.SCISSORS) ||
    (@p1 is Turn.SCISSORS && @p2 is Turn.PAPER) ||
    (@p1 is Turn.PAPER && @p2 is Turn.ROCK)

  render_turn_img: ->
    @_render_img(@p1)
    @_render_img(@p2)

  _render_img: (p) ->
    $('#target tbody > tr:last').append('<td></td>')
    image = Turn.ROCK_IMG
    if p is Turn.SCISSORS
      image = Turn.SCISSORS_IMG
    else if p is Turn.PAPER
      image = Turn.PAPER_IMG
    $('#target tbody > tr:last > td:last').append(image.clone())

