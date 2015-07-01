
class window.Turn
  constructor: (h1, h2, result) ->
    @hand1 = new Hand(h1)
    @hand2 = new Hand(h2)
    @result = result

  render_turn: ->
    $('#target tbody').append('<tr></tr>')
    @hand1.render_img()
    @hand2.render_img()

