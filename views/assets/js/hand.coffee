
class window.Hand
  @ROCK: 100
  @SCISSORS: 200
  @PAPER: 300

  @ROCK_IMG: $("<img class='rock'>")
  @SCISSORS_IMG: $("<img class='scissors'>")
  @PAPER_IMG: $("<img class='paper'>")

  constructor: (hand_type) ->
    @type = null
    if hand_type is Hand.ROCK
      @type = Hand.ROCK_IMG
    else if hand_type is Hand.SCISSORS
      @type = Hand.SCISSORS_IMG
    else
      @type = Hand.PAPER_IMG

  render_img: ->
    $('#target tbody > tr:last').append('<td></td>')
    $('#target tbody > tr:last > td:last').append(@type.clone())

